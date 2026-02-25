---
description: Implementa uma task do ClickUp com pipeline completo de agents especializados (research → implement → test → review → PR)
argument-hint: [TECH-XXX]
---

# Implementar Task

Você vai implementar a task **$ARGUMENTS** usando um pipeline de agents especializados. O fluxo tem **2 checkpoints obrigatórios** — tudo entre eles é autônomo.

## Configuração

- **Monorepo**: `repos/plataforma/`
- **Branch de trabalho**: `feature/$ARGUMENTS-{slug}` criada a partir de `main`
- **Nunca escrever direto em `dev` ou `main`**
- **Isolamento por escopo**: cada agent só modifica arquivos do seu diretório — essa é a regra de isolamento, não worktree
- **Gitflow**: feature branch → PR para `dev` → PR para `main` (separados)

---

## FASE 0 — TASK LOADER

**Objetivo**: Carregar e estruturar tudo que os agents precisarão.

### O que fazer:

1. Buscar a task no ClickUp via MCP:
   ```
   mcp__clickup__clickup_get_task
     task_id: "$ARGUMENTS"
     subtasks: true
   ```

2. Verificar se existe doc de plano técnico linkado na description da task:
   - Buscar em `clickup/docs/documenta-o/planos-t-cnicos/`
   - Se o doc não estiver sincronizado localmente, rodar sync: `node repos/clickup-sync/sync-docs.js`

3. Se **não existir plano técnico**: parar e orientar o usuário a rodar `/create-plan $ARGUMENTS` primeiro.

4. Se **existir plano técnico**: carregar e estruturar internamente:
   - Lista de arquivos a modificar (com caminho completo)
   - Subtasks com seus escopos
   - Decisões técnicas
   - Critérios de aceite por subtask
   - Dependências e pré-requisitos

5. Verificar pré-requisitos do plano. Se houver tasks bloqueantes, alertar o usuário antes de continuar.

---

## FASE 1 — IMPACT ANALYZER

**Objetivo**: Confirmar o estado atual do código antes de escrever qualquer coisa.

### O que fazer:

Lançar agents Explore em **paralelo** (background: true), um por serviço afetado, guiados pelos arquivos listados no plano:

```
Task tool (Explore, background: true)
  prompt: "Verifique o estado atual dos seguintes arquivos em {serviço}:
           {lista de arquivos do plano}
           Para cada um: existe? qual o conteúdo relevante (campos, métodos, endpoints)?
           Confirme o que o plano diz que existe vs o que realmente existe."
```

**Adicionalmente, detectar:**
- Há mudança de DTO/endpoint? → `api-contract` agent necessário
- Há nova migration? → `db-migration` agent necessário
- Há mudança em `infra-registry/apps/`? → `app-deploy` agent necessário
- Há mudança em `infra-registry/infra/`? → `terraform` agent necessário (checkpoint extra)
- O plano tem seção Observabilidade com métricas/alertas? → `monitoring` agent necessário
- Mesmo sem seção, há novos endpoints, APIs externas ou workflows? → `monitoring` agent necessário (regras automáticas)

### Resultado esperado:

Montar internamente o **plano de ataque**:
```
Serviços afetados: [cms-api, frontend]
Agents que serão ativados: [cms-api, db-migration, api-contract, frontend]
Arquivos a criar: [lista]
Arquivos a modificar: [lista com estado atual confirmado]
Divergências do plano: [se houver]
```

---

## CHECKPOINT 1 — PLANO DE ATAQUE

Apresentar ao usuário:

```
## Plano de Ataque — $ARGUMENTS

**Branch:** feature/$ARGUMENTS-{slug}

**Agents que serão ativados:**
- cms-api agent: subtasks 1, 2
- db-migration agent: migration para campos novos
- api-contract agent: regenerar Orval após DTOs
- frontend agent: subtasks 3-7

**Agents NÃO necessários:** streaming, temporal-worker, terraform

**O que será criado/modificado:**
| Arquivo | Ação | Agent |
|---------|------|-------|
| {caminho} | {criar/modificar} | {agent} |

**Divergências encontradas:** (se houver)
- {arquivo}: plano esperava X, código tem Y

Posso iniciar a implementação?
```

**PARAR e aguardar aprovação. Não criar branch nem escrever nenhum arquivo antes disso.**

---

## FASE 2 — IMPLEMENTAÇÃO

Só iniciar após aprovação do Checkpoint 1.

### Passo 1: Criar a feature branch

Rodar via Bash agent (antes de qualquer specialist):

```bash
cd repos/plataforma
git checkout main
git pull origin main
git checkout -b feature/$ARGUMENTS-{slug}
```

### Passo 2: Ativar specialists na ordem correta

**Regra de dependência:**
1. Agents de backend primeiro — podem rodar em paralelo entre si
   - `cms-api`, `streaming`, `temporal-worker`, `camera-webhook`
2. `db-migration` — após cms-api (precisa da entity atualizada)
3. `api-contract` — após cms-api + db-migration (precisa dos DTOs atualizados)
4. `frontend` — após api-contract (precisa dos hooks regenerados)
5. `monitoring` — após todos os specialists de código (analisa o diff + seção Observabilidade do plano)
6. `app-deploy` e `terraform` — por último, se necessários

**Cada agent:**
- Recebe no prompt: plano técnico das suas subtasks + resultado do Impact Analyzer para seus arquivos
- Trabalha **apenas no seu diretório** — nunca cruza limites
- Ao terminar, faz commit das suas mudanças na feature branch com mensagem descritiva

### Instruções por specialist

#### `cms-api` agent
```
subagent_type: general-purpose
prompt:
  Contexto: você é o cms-api specialist. Trabalhe APENAS em repos/plataforma/cms-api/.
  Leia PRIMEIRO: repos/plataforma/cms-api/CLAUDE.md
  Branch atual: feature/$ARGUMENTS-{slug}

  Plano técnico (suas subtasks): {conteúdo das subtasks de backend}
  Estado atual dos arquivos (confirmado pelo Impact Analyzer): {lista}
  Decisões técnicas: {lista de decisões do plano}

  O que fazer:
  {lista de ações específicas por arquivo, com linha quando relevante}

  Convenções obrigatórias:
  - andWhere() nunca where() no QueryBuilder
  - @IsOptional() em todos os filtros de DTO
  - Campos novos sempre nullable para não quebrar dados existentes
  - Sem prefixos em nomes de tabela
  - Seguir padrão do módulo existente mais próximo

  NÃO fazer: migrations (db-migration agent)
  NÃO fazer: regenerar Orval (api-contract agent)
  NÃO fazer: modificar arquivos fora de cms-api/

  Ao terminar: commit com mensagem "$ARGUMENTS: {descrição das mudanças no cms-api}"
  Retornar: lista de arquivos modificados/criados com resumo.
```

#### `db-migration` agent
```
subagent_type: general-purpose
prompt:
  Contexto: você é o db-migration specialist. Trabalhe APENAS em
  repos/plataforma/cms-api/src/migrations/.
  Branch atual: feature/$ARGUMENTS-{slug}

  Campos adicionados à entity: {lista de campos com tipos}
  Timestamp da última migration existente: {timestamp}

  O que fazer:
  1. cd repos/plataforma/cms-api && npm run migration:generate -- --name {NomeDaMigration}
  2. Ler o arquivo gerado e validar:
     - Todos os novos campos são nullable?
     - Existe método down() completo?
     - Índices necessários incluídos?
     - Nenhum DROP COLUMN inesperado?
  3. Se houver problemas, corrigir o arquivo gerado antes de commitar.

  Regras obrigatórias:
  - Sempre nullable em colunas novas em tabela existente
  - Sempre down() que reverte tudo
  - Nunca DROP COLUMN sem estar no plano
  - Índices na mesma migration que cria a coluna

  Ao terminar: commit com mensagem "$ARGUMENTS: migration {NomeDaMigration}"
  Retornar: nome da migration + validação (aprovado / problemas corrigidos).
```

#### `api-contract` agent
```
subagent_type: general-purpose
prompt:
  Contexto: você é o api-contract specialist. Garante que o frontend
  consuma os tipos corretos após mudanças nos DTOs do backend.
  Branch atual: feature/$ARGUMENTS-{slug}

  DTOs modificados: {lista de arquivos de DTO alterados}

  O que fazer:
  1. Localizar o script de geração Orval em repos/plataforma/visio-frontend/
     (verificar package.json — geralmente "generate:api" ou "orval")
  2. Rodar a geração: cd repos/plataforma/visio-frontend && npm run {script}
  3. Verificar quais hooks foram alterados (git diff nos arquivos gerados)
  4. Se houver breaking changes (hooks removidos ou assinatura alterada),
     documentar claramente para o frontend agent

  Ao terminar: commit com mensagem "$ARGUMENTS: regenerar hooks Orval"
  Retornar: lista de hooks alterados + breaking changes (se houver).
```

#### `frontend` agent
```
subagent_type: general-purpose
prompt:
  Contexto: você é o frontend specialist. Trabalhe APENAS em
  repos/plataforma/visio-frontend/.
  Leia PRIMEIRO: a estrutura de páginas existente em src/app/(pages)/modules/
  Branch atual: feature/$ARGUMENTS-{slug}

  Hooks alterados pelo api-contract agent: {lista + breaking changes}
  Plano técnico (suas subtasks): {conteúdo das subtasks de frontend}
  Estado atual dos arquivos: {lista do Impact Analyzer}
  Decisões técnicas: {lista}

  Stack: Next.js, React, TypeScript, React Hook Form, Zod, Orval hooks

  O que fazer:
  {lista de ações específicas por arquivo}

  Convenções obrigatórias:
  - Zod schema em arquivo separado (ex: userFormSchema.ts)
  - React Hook Form para formulários
  - Hooks Orval para chamadas à API — nunca fetch direto
  - Seguir estrutura de páginas existente em (pages)/modules/[module]/

  NÃO fazer: modificar arquivos fora de visio-frontend/

  Ao terminar: commit com mensagem "$ARGUMENTS: {descrição das mudanças no frontend}"
  Retornar: lista de arquivos criados/modificados com resumo.
```

#### `streaming` agent (se necessário)
```
subagent_type: general-purpose
prompt:
  Contexto: você é o streaming specialist. Trabalhe APENAS em
  repos/plataforma/streaming/.
  Leia PRIMEIRO: repos/plataforma/streaming/CLAUDE.md
  Branch atual: feature/$ARGUMENTS-{slug}

  {plano e ações específicas}

  Stack: Go. NÃO modificar arquivos fora de streaming/

  Ao terminar: commit com mensagem "$ARGUMENTS: {descrição no streaming}"
  Retornar: arquivos modificados.
```

#### `temporal-worker` agent (se necessário)
```
subagent_type: general-purpose
prompt:
  Contexto: você é o temporal-worker specialist. Trabalhe APENAS em
  repos/plataforma/temporal-worker/.
  Branch atual: feature/$ARGUMENTS-{slug}

  {plano e ações específicas}

  Stack: TypeScript, Temporal SDK. NÃO modificar arquivos fora de temporal-worker/

  Ao terminar: commit com mensagem "$ARGUMENTS: {descrição no temporal-worker}"
  Retornar: arquivos modificados.
```

#### `camera-webhook` agent (se necessário)
```
subagent_type: general-purpose
prompt:
  Contexto: você é o camera-webhook specialist. Trabalhe APENAS em
  repos/plataforma/camera-webhook/.
  Branch atual: feature/$ARGUMENTS-{slug}

  {plano e ações específicas}

  NÃO modificar arquivos fora de camera-webhook/

  Ao terminar: commit com mensagem "$ARGUMENTS: {descrição no camera-webhook}"
  Retornar: arquivos modificados.
```

#### `monitoring` agent (Tier 2 — cross-cutting)
```
subagent_type: general-purpose
prompt:
  Contexto: você é o monitoring specialist. Seu papel é garantir que toda
  feature nova tenha instrumentação adequada de métricas Prometheus.
  Branch atual: feature/$ARGUMENTS-{slug}

  Você tem 2 fontes de input:
  1. Seção "Observabilidade" do plano técnico (se existir): {conteúdo}
  2. Diff dos specialists: {lista de arquivos modificados/criados}

  O que fazer:

  SE o plano tem seção Observabilidade:
  - Implementar exatamente as métricas, alertas e impactos em dashboards listados
  - Adicionar métricas nos arquivos de metrics.ts (ou metrics.go) do serviço correto
  - Instrumentar os pontos do código indicados no plano
  - Criar/atualizar PrometheusRules se o plano define alertas novos

  SE o plano NÃO tem seção Observabilidade (ou diz "nenhuma"):
  - Aplicar regras automáticas ao diff dos specialists:
    * Novo endpoint HTTP → request_duration_seconds histogram + response_status_total counter
    * Nova chamada a API externa → api_call_duration_seconds histogram
    * Novo workflow Temporal → workflow_started_total counter + completion_total counter com tipos
    * Novo fluxo de conexão → active_connections gauge
  - Se nenhuma regra se aplica, retornar "Nenhuma instrumentação necessária" com justificativa

  Regras de escopo:
  - PODE modificar arquivos de métricas em QUALQUER serviço (metrics.ts, metrics.go)
  - PODE instrumentar código dos specialists (adicionar .inc(), .observe(), .startTimer())
  - PODE criar/modificar ServiceMonitors e PrometheusRules em infra-registry/
  - NÃO pode alterar lógica de negócio — apenas adicionar instrumentação
  - NÃO pode alterar assinatura de funções ou tipos de retorno

  Serviços e seus arquivos de métricas:
  - camera-webhook: camera-webhook/src/metrics.ts (prom-client)
  - temporal-worker: temporal-worker/src/metrics.ts (prom-client)
  - streaming: streaming/internal/metrics/metrics.go (prometheus/client_golang)
  - cms-api: não tem métricas ainda — se necessário, criar cms-api/src/metrics/ e registrar no módulo

  Ao terminar: commit com mensagem "$ARGUMENTS: instrumentação de métricas"
  Retornar: lista de métricas adicionadas + arquivos modificados + justificativa.
```

#### `app-deploy` agent (se necessário)
```
subagent_type: general-purpose
prompt:
  Contexto: você é o app-deploy specialist. Trabalhe APENAS em
  repos/plataforma/infra-registry/apps/.
  Leia PRIMEIRO: repos/plataforma/infra-registry/CLAUDE.md
  Branch atual: feature/$ARGUMENTS-{slug}

  Mudanças necessárias no deployment: {lista do plano}
  (ex: nova env var, novo secret ref)

  Restrições:
  - Só modificar apps/ — nunca infra/ (Terraform)
  - Verificar dev/ e prod/ separadamente
  - Nunca hardcodar secrets — usar referências a K8s Secrets

  Ao terminar: commit com mensagem "$ARGUMENTS: atualizar deployment manifests"
  Retornar: arquivos modificados.
```

#### `terraform` agent (se necessário — requer checkpoint extra)
```
⚠️  Apresentar ao usuário o que será modificado e aguardar aprovação explícita
    ANTES de ativar este agent.

subagent_type: Bash
prompt:
  ANTES de qualquer comando:
  1. az account show — confirmar subscription correta (Dev ou Prod)
  2. Se subscription errada: parar e alertar o usuário

  O que fazer:
  1. cd repos/plataforma/infra-registry/infra/envs/{dev|prod}/{módulo}/
  2. terraform init (se necessário)
  3. terraform plan -out=tfplan
  4. Retornar o output COMPLETO do plan

  NÃO rodar terraform apply — isso é feito manualmente pelo usuário após revisar o plan.
  NÃO commitar arquivos .tfstate ou tfplan
```

---

## FASE 3 — TESTES

Após os agents de implementação terminarem, rodar test agents em paralelo por serviço.

**Se qualquer test agent falhar: parar o pipeline imediatamente, apresentar o erro completo e aguardar instrução.**

#### `cms-api test` agent
```
subagent_type: Bash
prompt:
  cd repos/plataforma/cms-api
  1. npm run build
  2. npm run test (se o script existir no package.json)
  Retornar: passou / falhou + output completo em caso de falha.
```

#### `frontend test` agent
```
subagent_type: Bash
prompt:
  cd repos/plataforma/visio-frontend
  1. npm run build
  2. npx tsc --noEmit
  Retornar: passou / falhou + output completo em caso de falha.
```

#### `streaming test` agent (se streaming foi modificado)
```
subagent_type: Bash
prompt:
  cd repos/plataforma/streaming
  go build ./...
  Retornar: passou / falhou.
```

---

## FASE 4 — REVIEW

Após todos os testes passarem, lançar o Reviewer Agent.

```
subagent_type: general-purpose
prompt:
  Você é o reviewer. Verifique se a implementação atende ao plano técnico.
  Leia os arquivos modificados (lista abaixo) e compare com os critérios de aceite.

  Plano técnico original: {plano completo}
  Arquivos modificados: {lista consolidada de todos os agents}

  Para cada subtask verificar os critérios de aceite:
  {critérios extraídos do plano, por subtask}

  Verificar também:
  - Campos novos são nullable? (não quebra dados existentes)
  - Migration tem down() completo?
  - Nenhum secret hardcodado?
  - Padrões do projeto respeitados (andWhere, @IsOptional, Zod schema separado)?
  - Nenhum arquivo fora do escopo de cada agent foi modificado?
  - Observabilidade: monitoring agent instrumentou as métricas definidas no plano?
  - Se o plano não tinha seção Observabilidade: as regras automáticas foram aplicadas
    corretamente (novos endpoints têm duration+status, novas APIs externas têm call_duration)?

  Retornar:
  - APROVADO: tudo ok
  - PROBLEMAS: lista com arquivo + linha + o que precisa corrigir
```

Se retornar PROBLEMAS: corrigir (relançar o specialist responsável se necessário) e rodar testes novamente.

---

## CHECKPOINT 2 — PR PARA DEV

Apresentar ao usuário:

```
## Implementação Concluída — $ARGUMENTS

**Build:** ✅  **Types:** ✅  **Review:** ✅

**Branch:** feature/$ARGUMENTS-{slug}
**Commits:**
- {hash curto}: {mensagem do cms-api agent}
- {hash curto}: {mensagem do db-migration agent}
- {hash curto}: {mensagem do api-contract agent}
- {hash curto}: {mensagem do frontend agent}

**Resumo:**
| Arquivo | Ação |
|---------|------|
| {caminho} | {criado/modificado: resumo} |

Abrir PR para dev?
```

**PARAR e aguardar aprovação.**

---

## FASE 5 — PR GENERATOR

Após aprovação do Checkpoint 2:

```
subagent_type: Bash
prompt:
  No diretório repos/plataforma/:
  1. git log main..HEAD --oneline (confirmar commits da feature branch)
  2. git push origin feature/$ARGUMENTS-{slug}
  3. gh pr create \
       --base dev \
       --title "$ARGUMENTS: {título da task}" \
       --body "$(cat <<'EOF'
  ## Task
  [$ARGUMENTS]({url_da_task}) — {título}

  ## Plano técnico
  {link do doc no ClickUp}

  ## O que foi feito
  {resumo por subtask com arquivos principais}

  ## Agents executados
  {lista de agents e o que cada um entregou}

  ## Checklist
  - [ ] Build passa
  - [ ] Types ok
  - [ ] Migration validada (nullable, down() ok)
  - [ ] Critérios de aceite verificados pelo Reviewer
  - [ ] Testado em dev após merge

  🤖 Implementado com Claude Code — /implement $ARGUMENTS
  EOF
  )"

  Retornar: URL do PR criado.
```

---

## CHECKPOINT 3 — PR PARA MAIN

Este checkpoint é **sempre manual**, fora do pipeline automático.

Após você testar e validar no ambiente dev, dizer:
```
"ok, sobe para prod" ou "/implement $ARGUMENTS --to-main"
```

Ao receber essa instrução:
```
subagent_type: Bash
prompt:
  gh pr create \
    --base main \
    --head feature/$ARGUMENTS-{slug} \
    --title "$ARGUMENTS: {título}" \
    --body "Validado em dev. Promovendo para main."
  Retornar: URL do PR.
```

---

## Referência dos Specialists

| Agent | Diretório (escopo exclusivo) | Stack | Commit |
|-------|------------------------------|-------|--------|
| `cms-api` | `repos/plataforma/cms-api/` | NestJS, TypeORM | sim |
| `db-migration` | `cms-api/src/migrations/` | TypeORM migrations | sim |
| `api-contract` | `cms-api/` → `visio-frontend/` (só geração) | OpenAPI, Orval | sim |
| `frontend` | `repos/plataforma/visio-frontend/` | Next.js, React, Zod | sim |
| `streaming` | `repos/plataforma/streaming/` | Go, MediaMTX | sim |
| `temporal-worker` | `repos/plataforma/temporal-worker/` | TypeScript, Temporal | sim |
| `camera-webhook` | `repos/plataforma/camera-webhook/` | TypeScript | sim |
| `monitoring` | cross-cutting (metrics.ts/go + infra-registry/) | prom-client, Prometheus | sim |
| `app-deploy` | `infra-registry/apps/` | Kustomize, Helm | sim |
| `terraform` | `infra-registry/infra/` | Terraform | só plan, nunca apply |

---

## Regras gerais

- **Isolamento por escopo**: cada agent só modifica arquivos do seu diretório — nunca cruzar limites
- **Exceção: monitoring agent**: pode tocar arquivos de métricas em qualquer serviço, mas NÃO pode alterar lógica de negócio
- **Monitoring é default-on**: o monitoring agent SEMPRE roda, a menos que o plano diga explicitamente "Nenhuma métrica nova necessária" com justificativa aceita. Na dúvida, rodar e deixar o agent decidir se há algo a instrumentar.
- **Terraform**: nunca `apply` automático — retornar `plan` para aprovação humana
- **db-migration**: nunca `migration:run` em produção — só em dev para validação local
- **Secrets**: nunca hardcodar — referências a K8s Secrets ou Key Vault
- **Sem plano técnico**: não implementar — orientar `/create-plan $ARGUMENTS` primeiro
- **Divergência plano vs código**: sinalizar no Checkpoint 1, não assumir
- **Teste falhou**: parar pipeline, apresentar erro, aguardar instrução
- **Commits**: cada agent commita suas próprias mudanças com mensagem descritiva
