---
description: Cria plano técnico detalhado para uma task do ClickUp, com validação em 3 fases
argument-hint: [TECH-XXX]
---

# Criar Plano Técnico

Você vai criar um plano técnico para a task **$ARGUMENTS** seguindo um fluxo de 3 fases. **Nenhuma ação no ClickUp acontece antes da aprovação explícita do usuário.**

## Configuração

- **MCP ClickUp** (operações de escrita): usar as tools `mcp__clickup__*` para criar/atualizar tasks, subtasks, doc pages e tags
- **Scripts** (leitura local): `repos/clickup-sync/` para sync local — NÃO usar para escrita
- Doc "Documentação": ID `2ky5ajyw-1133`
- Page "Planos Técnicos": ID `2ky5ajyw-5873`
- Tags disponíveis: `backend`, `frontend`, `design`, `cms-api`, `grafana-prometheus`, `débito`

---

## FASE 0 — ENTENDIMENTO

**Objetivo**: Confirmar que você entendeu a task antes de elaborar o plano.

### O que fazer:

1. **Se $ARGUMENTS estiver vazio ou não for um ID de task**:
   - Usar o contexto da conversa para inferir o que o usuário quer construir
   - Propor um nome de task e perguntar em qual lista criar (Backlog Tech = `901322873791`)
   - Criar a task no ClickUp via `mcp__clickup__clickup_create_task` com nome + list_id, sem description ainda
   - Usar o ID retornado como task base para o restante do fluxo

2. **Se $ARGUMENTS for um Custom ID** (ex: TECH-178):
   - Usar `mcp__clickup__clickup_get_task` com o Custom ID
   - Se tiver subtasks, usar `subtasks: true`

3. Ler o código relevante nos `repos/plataforma/` — entities, services, controllers, frontend pages mencionados ou relacionados à task.

3. Verificar se existe documentação relevante em:
   - `clickup/docs/documenta-o/` (produto, arquitetura)
   - `decisions/` (decisões tomadas)
   - `tech/` (padrões técnicos)

4. Verificar se existe design no Figma:
   - Buscar nos attachments da task
   - Buscar nos docs de produto

5. Apresentar ao usuário:

   > **Task**: TECH-XXX — {nome}
   > **Módulo/Épico**: {módulo}
   > **Versão**: {versão}
   >
   > **Problema**: {por que isso precisa existir}
   >
   > **Objetivo**: {o que resolve, em 1-2 frases}
   >
   > **O que já existe no código**:
   > - {listar arquivos/módulos relevantes que já existem}
   >
   > **O que falta**:
   > - {listar o que precisa ser criado/modificado}
   >
   > **Figma**: {link se encontrado, ou "Não encontrado — precisa ser criado pelo design"}
   >
   > **Dependências**:
   > - {outras tasks, infra, etc.}
   >
   > **Subtasks sugeridas**:
   > | # | Nome | Tags |
   > |---|------|------|
   > | 1 | {nome limpo, sem prefixo} | `{tag}` |
   > | 2 | ... | ... |
   >
   > **Entendi certo? Algo a ajustar?**

6. **PARAR e aguardar validação do usuário.** Não avançar para a Fase 1 sem aprovação.

---

## FASE 1 — RASCUNHO DO PLANO

**Objetivo**: Mostrar o plano completo para revisão, sem tocar no ClickUp.

Só iniciar esta fase após o usuário validar a Fase 0.

### Avaliação de complexidade

Antes de elaborar, avaliar se a task precisa de plano completo ou apenas da task description:

- **Task simples** (bug fix pontual, mudança de 1-2 arquivos, sem decisão arquitetural):
  - NÃO criar doc page no ClickUp Docs
  - Apenas elaborar a **task description** com objetivo, causa raiz, solução e critérios de aceite
  - Se a task tiver apenas 1 subtask, NÃO criar subtask — o conteúdo vai direto na task principal

- **Task complexa** (feature nova, mudança em múltiplos serviços, decisões arquiteturais):
  - Criar doc page completo + task description + subtasks (fluxo padrão)

### O que fazer:

1. Avaliar complexidade conforme acima.
2. Se **task simples**: elaborar apenas a task description (Template Simples abaixo).
3. Se **task complexa**: elaborar o plano completo seguindo o **Template do Doc** (abaixo).
4. Elaborar a **description da task** no formato padrão (abaixo).
5. Se houver mais de 1 subtask, elaborar cada **subtask** com nome, tags e descrição detalhada (abaixo).
6. Mostrar tudo inline para o usuário revisar, separando claramente:
   - (se complexa) `📄 DOC PAGE` — o plano completo que vai no ClickUp Docs
   - `📋 TASK DESCRIPTION` — o resumo que vai na task principal
   - (se >1 subtask) `📌 SUBTASKS` — cada subtask com nome, tags e descrição
7. **PARAR e aguardar aprovação.** Perguntar: "Quer ajustar algo ou posso publicar no ClickUp?"

### Template Simples (task description para bugs/fixes pontuais)

```markdown
### Bug
{Descrição do problema visível para o usuário.}

### Causa raiz
{Explicação técnica do que causa o problema, com referência a arquivo e linha.}

### Solução
{O que mudar, com detalhamento técnico suficiente para implementar.}

### Arquivos
| Arquivo | Mudança |
|---------|---------|
| `{caminho}` | {o que muda} |

### Critérios de aceite
1. {dado X, espera-se Y}
```

### Template do Doc (ClickUp Docs → Planos Técnicos)

```markdown
# TECH-XXX — {título}

* **Task**: TECH-XXX (ID: {id_interno})
* **Depende de**: TECH-YYY (se houver)
* **Status do plano**: PROPOSTO
* **Data**: {YYYY-MM-DD}
* **Autor**: Claude (Chief of Staff)
---

## Design (Figma)
{Link para o Figma ou "Não existe tela no Figma — precisa ser criada."}
{Se existe, notas sobre o que o design cobre vs o que precisa de decisão técnica.}

## Contexto
{Por que isso precisa existir. Qual problema resolve. 2-3 parágrafos.}

## Decisões
{Bullet list com cada decisão técnica + racional curto.}
* **{Decisão}**: {racional}

## Arquitetura
{Diagrama ASCII + explicação do fluxo.}

## Fases de implementação

### Fase 1 — {nome}
{Arquivos, funções, o que muda. Detalhado o suficiente para alguém implementar.}

### Fase N — ...

## Subtasks

| # | Nome | Tags | Descrição curta |
|---|------|------|-----------------|
| 1 | {nome} | `{tag}` | {1 linha} |

### Subtask 1 — {nome}
**Tags:** {tag}
**Arquivos:**
* `{caminho/arquivo}` (novo ou existente)
**O que fazer:**
* {ação específica}
**Critérios de aceite:**
* {dado X, espera-se Y}

### Subtask N — ...

## Arquivos a modificar

| Arquivo | Mudança |
|---------|---------|
| `{caminho}` | {o que muda} |

## O que NÃO muda
{Deixar explícito o que fica igual para evitar escopo creep.}

## Pré-requisitos
{Dependências externas, outras tasks, infra.}

## Verificação
{Lista numerada de critérios de aceite globais.}
1. {critério}

## Observabilidade

### Métricas
{Identificar quais métricas Prometheus devem ser criadas ou atualizadas com esta feature.
Considerar: novos endpoints HTTP, chamadas a APIs externas, workflows Temporal, conexões de streaming.
Se a feature não impacta observabilidade, escrever "Nenhuma métrica nova necessária — funcionalidade coberta pelas métricas existentes." com justificativa.}

| Nome | Tipo | Labels | Justificativa |
|------|------|--------|---------------|
| {metric_name} | Counter/Histogram/Gauge | {labels} | {por que precisa existir} |

### Alertas
{Se a feature introduz um novo fluxo crítico ou ponto de falha, definir alertas.
Se não, escrever "Nenhum alerta novo — fluxo coberto pelos alertas existentes."}

| Nome | Condição | Severidade | Dashboard |
|------|----------|-----------|-----------|
| {alert_name} | {expr} for {duration} | critical/warning | {dashboard afetado} |

### Impacto em dashboards existentes
{Listar quais dashboards Grafana precisam de painel novo ou atualização. Dashboards atuais: Facial, LPR, Streaming.}
* {qual dashboard precisa de painel novo ou atualização}
* Nenhum (se não impacta)
```

### Template da Task Description (o que vai na task principal)

```markdown
> **Plano técnico completo**: [TECH-XXX — {título}]({link_doc}) (ClickUp Docs → Planos Técnicos)
> **Figma**: {link ou "Não existe — precisa ser criado pelo design"}

### Objetivo
{1-2 frases.}

### Solução
{Resumo do approach + fluxo numerado, 4-6 itens.}

### Decisões técnicas
{Top 5 bullets mais importantes.}

### Observabilidade
{Resumo: métricas novas, alertas, dashboards impactados. Se nenhum, justificar.}

### Subtasks
| # | Nome | Tags |
|---|------|------|
| 1 | {nome} | `{tag}` |
```

### Template das Subtasks

```markdown
### Objetivo
{1-2 frases do que esta subtask entrega.}

### Referências
* **Plano técnico**: [TECH-XXX — {título}]({link_doc})
* **Figma**: {link ou "N/A"}

### O que fazer
* {ação específica com arquivo e função}

### Arquivos
* `{caminho}` ({novo ou existente})

### Critérios de aceite
* {dado X, espera-se Y}
```

---

## FASE 2 — PUBLICAR

**Objetivo**: Criar tudo no ClickUp via MCP. Só executar após aprovação explícita do usuário.

### O que fazer:

**Se task simples (sem doc page, sem subtasks):**

1. **Criar a task** no ClickUp (se ainda não existe):
   ```
   mcp__clickup__clickup_create_task
     name: "{nome}"
     list_id: 901322873791
     markdown_description: {template simples}
     tags: ["{tag1}"]
   ```
   Ou **atualizar a task existente**:
   ```
   mcp__clickup__clickup_update_task
     task_id: "{id}"
     markdown_description: {template simples}
   ```

2. **Adicionar tags** relevantes à task.

3. **Mostrar resultado final** com link da task.

**Se task complexa (fluxo completo):**

1. **Criar doc page** no ClickUp Docs sob Planos Técnicos:
   ```
   mcp__clickup__clickup_create_document_page
     document_id: "2ky5ajyw-1133"
     name: "TECH-XXX — {título}"
     parent_page_id: "2ky5ajyw-5873"
     content: {conteúdo completo do plano em markdown}
     content_format: "text/md"
   ```
   Guardar o `id` retornado para montar o link: `https://app.clickup.com/90132794332/v/dc/2ky5ajyw-1133/{page_id}`

2. **Atualizar a task description** com link + resumo, e **adicionar tag `refine-ai`**:
   ```
   mcp__clickup__clickup_update_task
     task_id: "TECH-XXX"
     markdown_description: {template da task description com link do doc}
   ```
   Em seguida:
   ```
   mcp__clickup__clickup_add_tag_to_task
     task_id: "TECH-XXX"
     tag_name: "refine-ai"
   ```

3. **Criar cada subtask** (com description + tags em 1 chamada):
   ```
   mcp__clickup__clickup_create_task
     name: "{nome da subtask}"
     list_id: {list_id da task pai}
     parent: "{id interno da task pai}"
     markdown_description: "{template da subtask}"
     tags: ["{tag1}", "{tag2}"]
   ```

4. **Mostrar resultado final**:
   > **Publicado!**
   > - Doc: {link da doc page}
   > - Task atualizada: {link da task}
   > - Subtasks criadas:
   >   | # | Nome | Tags | Link |
   >   |---|------|------|------|
   >   | 1 | {nome} | `{tag}` | {url} |

---

## Regras gerais

- **MCP para escrita**: SEMPRE usar MCP (`mcp__clickup__*`) para criar/atualizar tasks, subtasks, doc pages e tags. NÃO usar os scripts para escrita.
- **Scripts para leitura local**: os arquivos em `clickup/` são úteis para consulta rápida sem API calls, mas podem estar desatualizados (sync a cada 30min).
- **Nomes de subtasks**: limpos e descritivos. SEM prefixos como `[Backend]` ou `[Frontend]`. Usar TAGS para categorizar.
- **Tags**: usar apenas as disponíveis: `backend`, `frontend`, `design`, `cms-api`, `grafana-prometheus`, `débito`
- **Figma**: sempre buscar nos docs e attachments da task. Se não existir, declarar explicitamente.
- **Código**: sempre ler o código real antes de propor mudanças. Não assumir estrutura.
- **Decisões**: respeitar `decisions/` como fonte de verdade. Se o plano contradiz uma decisão, alertar.
- **Escopo**: sempre listar "O que NÃO muda" para evitar scope creep.
