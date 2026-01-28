# Integração com ClickUp API

**Status:** Implementado
**Data:** 2026-01-28
**Responsável:** Artur Antunes
**Localização dos scripts:** `repos/clickup-sync/`

---

## Visão Geral

Integração com a API REST do ClickUp para sincronização bidirecional de tasks, preservando formatação markdown nas descrições.

## Limitações da API do ClickUp

### Problema: Markdown não retorna por padrão

**Comportamento padrão:**
```javascript
// GET sem parâmetros especiais
GET /api/v2/task/{id}

// Retorna:
{
  "description": "Objetivo\nImplementar..." // ❌ Plain text
  "markdown_description": null              // ❌ Null
}
```

Mesmo que a task tenha sido criada/editada com markdown formatado no ClickUp web, a API converte para plain text ao retornar.

### Solução: Query Parameter

```javascript
// GET com parâmetro específico
GET /api/v2/task/{id}?include_markdown_description=true

// Retorna:
{
  "description": "Objetivo\nImplementar..."        // Plain text
  "markdown_description": "## Objetivo\n\n..."    // ✅ Markdown formatado
}
```

**Fonte:** [ClickUp API Documentation](https://developer.clickup.com/docs/tasks)

---

## Arquitetura da Integração

### Scripts Disponíveis

```
repos/clickup-sync/
├── sync-clickup.js      # Sync ClickUp → Local (read-only)
├── update-clickup.js    # Operações de escrita (update, create)
└── edit-task.js         # Workflow de edição local → ClickUp
```

### Fluxo de Dados

```
ClickUp (fonte de verdade)
    ↓ GET (include_markdown_description=true)
Markdown preservado
    ↓
sync-clickup.js
    ↓
clickup/tasks/**/*.md (arquivos locais)
```

---

## Scripts

### 1. sync-clickup.js

**Propósito:** Sincronização read-only ClickUp → repositório local

**Uso:**
```bash
cd repos/clickup-sync
node sync-clickup.js
```

**O que faz:**
- Descobre todas as listas (Sprints, Backlogs, Épicos)
- Baixa todas as tasks com `include_markdown_description=true`
- Salva em `clickup/tasks/{list_id}/{task_id}-{slug}.md`
- Gera boards (kanban por status)
- Atualiza README com timestamp

**Saída:**
```
clickup/
├── README.md
├── spaces/
├── lists/
├── boards/
├── tasks/
└── _meta/
```

**Configuração:**
```bash
export CLICKUP_TOKEN="pk_..."
```

---

### 2. update-clickup.js

**Propósito:** Operações de escrita no ClickUp

**Funções principais:**

#### Buscar task
```bash
node update-clickup.js get <taskId>
```

#### Atualizar campo
```bash
node update-clickup.js update <taskId> status "in progress"
node update-clickup.js update <taskId> priority high
```

#### Criar subtask
```bash
node update-clickup.js create-subtask <parentTaskId> "nome da subtask"
```

**Implementação interna:**

```javascript
// getTask - sempre com parâmetro markdown
async function getTask(taskId) {
  const { data } = await http.get(`/task/${taskId}`, {
    params: { include_markdown_description: true }
  });
  return data;
}

// updateTaskDescription - usa markdown_description
async function updateTaskDescription(taskId, newDescription) {
  await http.put(`/task/${taskId}`, {
    markdown_description: newDescription  // ✅ Preserva formatação
  });
}
```

---

### 3. edit-task.js

**Propósito:** Workflow completo de edição local com markdown

**Uso:**

#### 1. Baixar task para edição
```bash
node edit-task.js pull <taskId>
# ou
node edit-task.js pull TECH-203  # Não funciona com custom ID
node edit-task.js pull 86aeuexup # Use ID interno
```

**Cria arquivo:**
```
.task-edits/TECH-203-86aeuexup.md
```

**Formato:**
```markdown
---
Task: Nome da task
ID: 86aeuexup
Custom ID: TECH-203
URL: https://app.clickup.com/t/...
---

## Título

Conteúdo com **markdown** aqui...
```

#### 2. Editar localmente

Abra o arquivo e edite usando markdown:
- `## Título` → título grande
- `### Subtítulo` → subtítulo
- `**negrito**` → **negrito**
- `- item` → lista
- `` `código` `` → código inline
- `> nota` → citação

#### 3. Enviar de volta
```bash
node edit-task.js push <taskId>
```

**O que acontece:**
- Lê arquivo editado
- Extrai conteúdo (ignora metadata)
- Envia com `markdown_description`
- ClickUp renderiza formatado

---

## Padrões e Convenções

### ✅ Sempre usar markdown_description

**Ao criar/atualizar tasks via API:**

```javascript
// ✅ Correto
PUT /task/{id}
{
  "markdown_description": "## Título\n\n**texto**"
}

// ❌ Errado - perde formatação
PUT /task/{id}
{
  "description": "## Título\n\n**texto**"
}
```

### ✅ Sempre incluir parâmetro no GET

```javascript
// ✅ Correto
GET /task/{id}?include_markdown_description=true

// ❌ Errado - retorna plain text
GET /task/{id}
```

### ⚠️ Usar ID interno, não Custom ID

A API tem comportamento inconsistente com Custom IDs:

```bash
# ✅ Funciona
node update-clickup.js get 86aeuexup

# ❌ Pode falhar em alguns endpoints
node update-clickup.js get TECH-203
```

**Onde encontrar ID interno:**
- No arquivo local: `ID: 86aeuexup`
- Na URL do ClickUp: `clickup.com/t/86aeuexup`
- Via `sync-clickup.js` (campo `id`)

---

## Workflows Recomendados

### Workflow 1: Edição completa de task

```bash
# 1. Baixa task
node edit-task.js pull 86aeuexup

# 2. Edita arquivo .task-edits/TECH-203-86aeuexup.md
# Use markdown: ##, **, -, etc.

# 3. Envia de volta
node edit-task.js push 86aeuexup

# 4. Sincroniza repositório
node sync-clickup.js
```

### Workflow 2: Criar subtask

```bash
node update-clickup.js create-subtask 86aeuexup "Nome da subtask"
node sync-clickup.js
```

### Workflow 3: Atualizar status/prioridade

```bash
node update-clickup.js update 86aeuexup status "in progress"
node update-clickup.js update 86aeuexup priority high
node sync-clickup.js
```

### Workflow 4: Sync periódico

```bash
# Executar periodicamente (cron, CI/CD, etc)
node sync-clickup.js

# Commitar mudanças
cd ../..
git add clickup/
git commit -m "sync: atualização do ClickUp"
```

---

## Troubleshooting

### Problema: Markdown não aparece formatado no ClickUp

**Causa:** Enviou com `description` ao invés de `markdown_description`

**Solução:**
- Usar sempre `edit-task.js` ou `update-clickup.js` (já implementam corretamente)
- Se usar API diretamente, usar campo `markdown_description`

---

### Problema: GET retorna markdown_description: null

**Causa:** Não passou parâmetro `include_markdown_description=true`

**Solução:**
```javascript
// Adicionar parâmetro
axios.get('/task/123', {
  params: { include_markdown_description: true }
})
```

---

### Problema: Custom ID não funciona em alguns comandos

**Causa:** API aceita Custom ID inconsistentemente

**Solução:** Sempre usar ID interno (8 caracteres alfanuméricos)

```bash
# ❌ Evitar
node update-clickup.js update TECH-203 ...

# ✅ Usar
node update-clickup.js update 86aeuexup ...
```

---

### Problema: Formatação foi perdida após edição

**Causa:** Editou direto no ClickUp web após usar script, ou enviou plain text

**Solução:**
1. Baixar novamente com `edit-task.js pull`
2. Re-aplicar markdown
3. Enviar com `edit-task.js push`

---

## Limitações Conhecidas

### 1. Subtasks não sincronizam automaticamente

O `sync-clickup.js` atual busca apenas tasks diretas das listas. Subtasks não aparecem.

**Workaround:** Buscar task pai e verificar campo `subtasks[]`

---

### 2. API não retorna markdown de tasks antigas

Tasks criadas/editadas manualmente no ClickUp web **antes** da implementação desta integração não terão `markdown_description` disponível.

**Solução:** Re-editar essas tasks via `edit-task.js` para converter em markdown

---

### 3. Rate Limits

ClickUp API tem rate limits:
- 100 requests/minuto (padrão)
- 1000 requests/minuto (Business+)

**Mitigação:**
- `sync-clickup.js` usa concurrency de 2 (configurável via `CLICKUP_CONCURRENCY`)
- Retry automático em caso de 429

---

## Referências

### Documentação Oficial
- [ClickUp API Docs](https://developer.clickup.com/docs/tasks)
- [Webhooks](https://developer.clickup.com/docs/webhooks)
- [Rate Limits](https://clickup.com/api)

### Issues da Comunidade
- [Request: Get task description as markdown](https://feedback.clickup.com/public-api/p/api-get-task-description-as-rich-text-or-markdown-or-html)
- [Make Community Discussion](https://community.make.com/t/getting-markdown-descriptions-from-clickup/24909)

### Código
- Repositório: `repos/clickup-sync/`
- Sync local: `clickup/`

---

## Manutenção

### Atualizar token

```bash
# .env ou export
export CLICKUP_TOKEN="pk_novo_token_aqui"
```

### Adicionar novo endpoint

Editar `update-clickup.js`:

```javascript
export async function novaFuncao(taskId) {
  const { data } = await requestWithRetry(() =>
    http.get(`/task/${taskId}/novo-endpoint`, {
      params: { include_markdown_description: true }
    })
  );
  return data;
}
```

### Modificar sync

Editar `sync-clickup.js`:
- `getAllTasks()` → busca tasks da lista
- `taskToMarkdown()` → formata output
- Sempre usar `task.markdown_description` quando disponível

---

## Notas Técnicas

- **Concurrency:** 2 requests simultâneos (para evitar rate limit)
- **Timeout:** 30s por request
- **Retry:** 5 tentativas com backoff exponencial
- **Cache:** Nenhum (sempre busca dados frescos)
- **Autenticação:** Token via header `Authorization`
- **Formato de saída:** Markdown (GitHub-flavored)

---

**Última atualização:** 2026-01-28
**Versão da API:** v2
**Próximos passos:** Considerar implementação de webhook para sync em tempo real
