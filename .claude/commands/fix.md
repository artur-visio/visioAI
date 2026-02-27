---
description: Resolve um bug de forma autônoma — lê contexto, identifica root cause, implementa fix e abre PR
argument-hint: [TECH-XXX | descrição do bug]
model: sonnet
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

1. **Localizar o código**:
   - Se o bug descreve endpoint/componente/função específica: usar Grep ou Read para o arquivo predizível
     ```
     Ex: "bug no endpoint /auth/login" → grep -r "login" repos/plataforma/cms-api/src/
     Ex: "bug no FaceGallery component" → Read repos/plataforma/visio-frontend/src/components/FaceGallery.tsx
     ```
   - Usar subagent `Explore` APENAS se não conseguir localizar com Grep/Read:
     ```
     Task(Explore, model: haiku, prompt:
       "Localize o arquivo contendo:
        - Função: {nome_função}
        - Ou componente: {nome_componente}
        - Ou endpoint: {método} {caminho}

        Retorne: arquivo_path + conteúdo relevante (máx 500 linhas)")
     ```

2. **Se envolve dados**:
   - Use `db-reader` com query específica (não exploração):
     ```
     Task(db-reader, prompt:
       "Conectar ao DB {dev|prod}.
        SELECT * FROM {tabela} WHERE {filtro};
        Explicar schema e dados relevantes ao bug.")
     ```

3. **Declarar root cause**:
   - "Bug está em {arquivo:linha} porque {razão}"
   - "Fix é: {mudança} — impacta APENAS {arquivo}, sem efeitos colaterais"

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
