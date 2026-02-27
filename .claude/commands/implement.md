---
description: Implementa uma task do ClickUp com pipeline completo de agents especializados (research → implement → test → review → PR)
argument-hint: [TECH-XXX]
model: sonnet
---

# Implementar Task

Implementar **$ARGUMENTS** com pipeline de agents. **2 checkpoints obrigatórios** — tudo entre eles é 100% autônomo (sem perguntas, sem confirmação parcial). Parar entre checkpoints apenas se: erro bloqueante ou ação destrutiva em infra.

## Configuração

- **Monorepo**: `repos/plataforma/`
- **Branch**: `feature/$ARGUMENTS-{slug}` a partir de `main`
- **Nunca escrever direto em `dev` ou `main`**
- **Isolamento**: cada agent só modifica arquivos do seu diretório
- **Gitflow**: feature branch → PR `dev` → PR `main`

---

## FASE 0 — TASK LOADER

1. `mcp__clickup__clickup_get_task(task_id: "$ARGUMENTS", subtasks: true)`
2. Verificar plano técnico em `clickup/docs/documenta-o/planos-t-cnicos/`. Se não sincronizado: `node repos/clickup-sync/sync-docs.js`
3. **Sem plano técnico nem description detalhada** → parar, orientar `/create-plan $ARGUMENTS`
4. Estruturar internamente: arquivos a modificar (caminho completo), subtasks com escopos, decisões, critérios de aceite, dependências
5. Verificar pré-requisitos bloqueantes

---

## FASE 1 — IMPACT ANALYZER

Lançar agents Explore em **paralelo** (background: true), um por serviço afetado:

```
Task(Explore, background: true, model: haiku)
  "Leia EXATAMENTE estes arquivos (não outros): {lista 3-5 arquivos}
   Para cada: (1) existe? (2) campos/métodos/endpoints relevantes? (3) divergências do plano?
   Retornar JSON: [{path, exists, relevant_content, divergences}]"
```

**Detectar agents necessários:**
- Mudança DTO/endpoint → `api-contract`
- Nova migration → `db-migration`
- Mudança `infra-registry/apps/` → `app-deploy`
- Mudança `infra-registry/infra/` → `terraform` (checkpoint extra)
- Seção Observabilidade ou novos endpoints/APIs/workflows → `monitoring`

**Resultado**: plano de ataque interno (serviços, agents, arquivos, divergências).

---

## CHECKPOINT 1 — PLANO DE ATAQUE

Apresentar: branch, agents ativados (com subtasks), agents não necessários, tabela de arquivos (caminho | ação | agent), divergências.

**PARAR e aguardar aprovação.**

---

## FASE 2 — IMPLEMENTAÇÃO

### Criar branch
```bash
cd repos/plataforma && git checkout main && git pull origin main && git checkout -b feature/$ARGUMENTS-{slug}
```

### Ordem de dependência
1. Backend em paralelo: `cms-api`, `streaming`, `temporal-worker`, `camera-webhook`
2. `db-migration` — após cms-api
3. `api-contract` — após cms-api + db-migration
4. `frontend` — após api-contract
5. `monitoring` — após todos os de código
6. `app-deploy`, `terraform` — por último

### Template genérico de specialist

Todos os specialists usam este formato de prompt:

```
Task(general-purpose, model: sonnet)
  "Você é o {name} specialist. Trabalhe APENAS em {scope}.
   {Ler PRIMEIRO: {claude_md}} (se existir)
   Branch: feature/$ARGUMENTS-{slug}

   SUAS SUBTASKS: {apenas as subtasks deste agent — JSON com nome, objetivo, ações, critérios}
   ESTADO ATUAL: {JSON do Impact Analyzer: [{path, exists, relevant_content}]}
   DECISÕES RELEVANTES: {filtrar apenas as que afetam este serviço}

   O que fazer (em ordem):
   {lista numerada de ações com arquivo + função + mudança}

   Convenções: {conventions}
   NÃO fazer: {exclusions}

   Resultado: commit '$ARGUMENTS: {summary}' + retornar JSON {files_modified: [{path, summary}], breaking_changes: [...]}"
```

### Config dos specialists

| Name | Scope | Stack | CLAUDE.md | Conventions | Exclusions |
|------|-------|-------|-----------|-------------|------------|
| `cms-api` | `cms-api/` | NestJS, TypeORM | `cms-api/CLAUDE.md` | andWhere() nunca where(); @IsOptional() em filtros; campos novos nullable; padrão do módulo mais próximo | migrations, Orval, fora de cms-api/ |
| `frontend` | `visio-frontend/` | Next.js, React, Zod, Orval | — | Zod schema separado; React Hook Form; hooks Orval (nunca fetch); padrão (pages)/modules/ | fora de visio-frontend/ |
| `streaming` | `streaming/` | Go, MediaMTX | `streaming/CLAUDE.md` | — | fora de streaming/ |
| `temporal-worker` | `temporal-worker/` | TS, Temporal SDK | — | — | fora de temporal-worker/ |
| `camera-webhook` | `camera-webhook/` | TypeScript | — | — | fora de camera-webhook/ |

### Specialists com regras especiais

**`db-migration`** — scope: `cms-api/src/migrations/`
```
Task(general-purpose, model: sonnet)
  "Campos adicionados: {lista com tipos}. Última migration: {timestamp}.
   1. cd repos/plataforma/cms-api && npm run migration:generate -- --name {Nome}
   2. Validar: nullable? down() completo? índices? sem DROP inesperado?
   3. Corrigir se necessário. Commit: '$ARGUMENTS: migration {Nome}'
   Retornar: nome + validação."
```

**`api-contract`** — scope: `cms-api/ → visio-frontend/` (só geração)
```
Task(general-purpose, model: sonnet)
  "DTOs modificados: {lista}. Localizar script Orval em visio-frontend/package.json.
   Rodar geração. Git diff nos hooks. Documentar breaking changes.
   Commit: '$ARGUMENTS: regenerar hooks Orval'
   Retornar: JSON {hooks_changed: [...], breaking_changes: [...]}"
```

**`monitoring`** — cross-cutting (pode tocar metrics.ts/go de qualquer serviço)
```
Task(general-purpose, model: sonnet)
  "FONTE 1: Seção Observabilidade do plano: {conteúdo ou 'não existe'}
   FONTE 2: Mudanças: [{serviço, novo_endpoint|api_externa|novo_workflow}]

   IF observabilidade existe: implementar EXATAMENTE o listado
   ELSE aplicar regras: novo HTTP → duration histogram + status counter;
     nova API externa → call_duration histogram; novo workflow → started+completed counters

   Modificar metrics.ts/metrics.go. Instrumentar (.inc/.observe/.startTimer).
   NÃO alterar lógica de negócio nem assinatura de funções.
   Commit: '$ARGUMENTS: instrumentação de métricas'
   Retornar: JSON {metrics_added, files_modified, skipped}"
```

Métricas por serviço: camera-webhook `src/metrics.ts` (prom-client), temporal-worker `src/metrics.ts` (prom-client), streaming `internal/metrics/metrics.go` (client_golang), cms-api sem métricas ainda (criar se necessário).

**`app-deploy`** — scope: `infra-registry/apps/`. Ler `infra-registry/CLAUDE.md`. Só apps/, nunca infra/. Dev e prod separados. Nunca hardcodar secrets.

**`terraform`** — **checkpoint extra obrigatório**. Apresentar mudanças e aguardar aprovação ANTES.
```
Task(Bash)
  "1. az account show (confirmar subscription). 2. terraform init. 3. terraform plan -out=tfplan.
   Retornar output completo. NUNCA apply. NUNCA commitar .tfstate/tfplan."
```

---

## FASE 3 — TESTES

Rodar em **paralelo** por serviço (model: haiku). Se falhar: parar pipeline.

| Serviço | Comandos |
|---------|----------|
| cms-api | `npm run build` + `npm run test` (se existir) |
| frontend | `npm run build` + `npx tsc --noEmit` |
| streaming | `go build ./...` |

---

## FASE 4 — REVIEW

```
Task(general-purpose, model: sonnet)
  "Reviewer: verificar implementação vs plano técnico.
   Plano: {critérios de aceite por subtask — NÃO o plano inteiro}
   Arquivos: {lista consolidada de todos os agents}
   Checklist: nullable? down()? sem secrets? padrões respeitados? escopo ok? métricas instrumentadas?
   Retornar: APROVADO ou PROBLEMAS [{arquivo, linha, correção}]"
```

Se PROBLEMAS: relançar specialist + testes.

---

## FASE 5 — QA

**Objetivo**: Preparar ambiente, rodar testes automatizados + funcionais, pedir só teste visual/manual.

**Credenciais**: `admin@visio.io` / `visio1234`

**Portas locais**: PostgreSQL `:5433`, API `:3000/cms`, Frontend `:3001`, Streaming via docker compose

**Setup (em ordem — respeitar dependências)**:
1. PostgreSQL: `cd cms-api && npm run compose:dev:up`
2. cms-api: `npm run migration:run && npm run start:dev` → validar login
3. Design System (se modificado): `cd visio-design-system && pnpm install && pnpm build` → copiar dist → limpar `.next`
4. Frontend: `npm run dev -- -p 3001`
5. Streaming (se necessário): `docker compose --profile dev-build --profile engine-mediamtx up`
6. Validar: login API + acesso frontend

**IMPORTANTE**: Subir TODA a stack necessária (frontend depende de API depende de PostgreSQL). Verificar `.env.local` do frontend (`NEXT_PUBLIC_CMS_API_URL=http://localhost:3000`).

**Testes automatizados**: build + type-check + unit tests (em paralelo). Distinguir erros pré-existentes vs introduzidos.

**Testes funcionais**:
- cms-api: autenticar → testar endpoints afetados (status, resposta, edge cases) → verificar schema se migration nova
- streaming: verificar start sem erros + endpoints WHEP/HLS se alterados + auth se alterada
- frontend: build passa + página carrega (testes visuais ficam para o usuário)
- infra: `kubectl diff` (dry-run) + terraform plan (nunca apply)

**Relatório**: apresentar resultados (build/types/unit/funcional) + ambiente pronto + cenários de teste manual.

**PARAR e aguardar feedback.** Se problema → corrigir → re-testar. Se OK → Checkpoint 2.

---

## CHECKPOINT 2 — PR PARA DEV

Apresentar: build/types/review status, branch, commits (hash + mensagem), tabela de arquivos.

**PARAR e aguardar aprovação.**

---

## FASE 6 — PR GENERATOR

```
Task(Bash, model: haiku)
  "cd repos/plataforma && git log main..HEAD --oneline && git push origin feature/$ARGUMENTS-{slug}
   gh pr create --base dev --title '$ARGUMENTS: {título}' --body '## Task\n[link]\n## Plano\n{link}\n## Feito\n{resumo}\n## Agents\n{lista}\n## Checklist\n- [ ] Build\n- [ ] Types\n- [ ] Migration\n- [ ] Critérios\n- [ ] Testado em dev\n\n🤖 /implement $ARGUMENTS'
   Retornar: URL do PR."
```

---

## CHECKPOINT 3 — PR PARA MAIN (manual)

Ao receber "sobe para prod" ou `/implement $ARGUMENTS --to-main`:
```
Task(Bash, model: haiku)
  "gh pr create --base main --head feature/$ARGUMENTS-{slug} --title '$ARGUMENTS: {título}' --body 'Validado em dev.'"
```

---

## Regras gerais

- **Isolamento**: cada agent só modifica seus arquivos. Exceção: monitoring (metrics.* cross-cutting, sem lógica de negócio)
- **Monitoring default-on**: sempre roda salvo justificativa explícita no plano
- **Terraform**: nunca apply. **db-migration**: nunca migration:run em prod
- **Secrets**: nunca hardcodar. **Sem plano**: não implementar → `/create-plan`
- **Divergência**: sinalizar no CP1. **Teste falhou**: parar, apresentar, aguardar
- **Cleanup**: após PR, `git worktree list` e remover órfãos em `/private/tmp/`
