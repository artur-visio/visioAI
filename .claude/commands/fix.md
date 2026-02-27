---
description: Resolve um bug de forma autônoma — lê contexto, identifica root cause, implementa fix e abre PR
argument-hint: [TECH-XXX | descrição do bug]
---

# Fix Bug

Você vai resolver o bug **$ARGUMENTS** de forma **100% autônoma**. Não fazer perguntas durante o processo. Só parar se a ação for destrutiva (drop de tabela, infra prod) ou o erro for completamente bloqueante.

## Configuração

- **Monorepo**: `repos/plataforma/`
- **Branch**: `fix/$ARGUMENTS-{slug}` criada a partir de `main`
- **Nunca escrever direto em `dev` ou `main`**

---

## FASE 1 — ENTENDER O BUG

Se `$ARGUMENTS` for um ID do ClickUp (ex: TECH-123):
```
mcp__clickup__clickup_get_task
  task_id: "$ARGUMENTS"
  subtasks: true
```

Se for descrição livre: usar o texto diretamente como contexto.

Extrair:
- Comportamento atual vs. esperado
- Ambiente afetado (dev/prod)
- Serviço afetado (cms-api, frontend, streaming, camera-webhook, temporal-worker)
- Qualquer log, stack trace ou mensagem de erro disponível

---

## FASE 2 — ROOT CAUSE

1. Usar subagent `Explore` para encontrar o código responsável:
   - Buscar pelo componente/endpoint/função descrita no bug
   - Ler os arquivos relevantes (máx. 5 arquivos, escopo cirúrgico)
   - Identificar a causa raiz exata — não apenas o sintoma

2. Se o bug envolve dados: usar subagent `db-reader` para consultar o banco sem escrever nada.

3. Declarar internamente antes de agir:
   - "O bug está em X porque Y"
   - "O fix correto é Z"
   - "Impacto da mudança: apenas [arquivo/função], sem efeitos colaterais em A e B"

---

## FASE 3 — FIX

1. Criar branch:
   ```bash
   git checkout main && git pull
   git checkout -b fix/[slug-do-bug]
   ```

2. Implementar o fix com escopo **mínimo**:
   - Tocar apenas o necessário para resolver a causa raiz
   - Não refatorar código ao redor
   - Não adicionar features

3. Verificar:
   - Build passa: `cd repos/plataforma && bun run build` (ou script equivalente do serviço)
   - Comportamento corrigido: demonstrar como o fix resolve o problema
   - Sem regressões óbvias

---

## FASE 4 — PR

1. Commit com mensagem descritiva:
   ```
   fix: [descrição curta do que foi corrigido]

   Root cause: [1 frase]
   Fix: [1 frase]
   ```

2. Push da branch e abrir PR para `dev`:
   ```bash
   git push -u origin fix/[slug]
   gh pr create --base dev --title "fix: [descrição]" --body "..."
   ```

3. Body do PR deve conter:
   - **Problema**: o que estava errado
   - **Root cause**: por que estava errado
   - **Fix**: o que foi mudado e por quê
   - **Testado**: como foi verificado

4. Se existir task no ClickUp: atualizar status para `in review` e adicionar link do PR como comentário.

---

## CHECKPOINT FINAL

Apresentar ao usuário:
- Root cause identificado
- O que foi mudado (diff resumido)
- Link do PR aberto
- Qualquer risco residual ou limitação do fix

Se o fix exigir migration de banco ou mudança de infra: **parar e apresentar o plano antes de executar**.
