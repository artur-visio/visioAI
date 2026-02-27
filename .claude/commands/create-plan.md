---
description: Cria plano técnico detalhado para uma task do ClickUp, com validação em 3 fases
argument-hint: [TECH-XXX]
model: sonnet
---

# Criar Plano Técnico

Criar plano técnico para **$ARGUMENTS** em 3 fases. **Nenhuma ação no ClickUp antes da aprovação explícita.**

## Configuração

- **MCP ClickUp**: `mcp__clickup__*` para escrita. Scripts `repos/clickup-sync/` apenas para leitura local.
- Doc "Documentação": `2ky5ajyw-1133` | Page "Planos Técnicos": `2ky5ajyw-5873`
- Tags disponíveis: `backend`, `frontend`, `design`, `cms-api`, `grafana-prometheus`, `débito`
- Backlog Tech list_id: `901322873791`

---

## FASE 0 — ENTENDIMENTO

1. **Se $ARGUMENTS vazio**: inferir do contexto, propor nome, criar task no Backlog Tech
2. **Se Custom ID** (TECH-XXX): `mcp__clickup__clickup_get_task(task_id, subtasks: true)`
3. **Ler código real** (ANTES de docs):
   - Padrão NestJS → ler direto (SEM subagent): `cms-api/src/modules/{mod}/{mod}.{entity|service|controller}.ts`
   - Grep pontual se precisar localizar símbolo
   - Subagent Explore APENAS se genuinamente desconhecido
4. **Docs**: apenas em caminho conhecido (`decisions/`, `tech/`) e se houver referência na task
5. **Figma**: apenas nos attachments da task já carregada. Se não houver: "Não encontrado"
6. **Apresentar**:
   > **Task**: TECH-XXX — {nome} | **Módulo**: {módulo}
   > **Problema**: {por que precisa existir}
   > **Objetivo**: {1-2 frases}
   > **Existe no código**: {arquivos/módulos relevantes}
   > **Falta**: {o que criar/modificar}
   > **Figma**: {link ou "Não encontrado"}
   > **Dependências**: {tasks, infra}
   > **Subtasks sugeridas**: | # | Nome | Tags |
   > **Entendi certo?**

**PARAR e aguardar validação.**

---

## FASE 1 — RASCUNHO DO PLANO

### Avaliar complexidade
- **Simples** (bug, 1-2 arquivos, sem decisão arquitetural): apenas task description (Template Simples). Se 1 subtask: conteúdo direto na task pai.
- **Complexa** (feature, múltiplos serviços, decisões): doc page + task description + subtasks

### O que fazer
1. Avaliar complexidade
2. Elaborar com o template adequado (ver abaixo)
3. Mostrar **resumo executivo** primeiro:
   ```
   RESUMO: Abordagem (1-2 frases) | Subtasks: N | Decisões chave: top 3 | Riscos
   ```
   Perguntar: "Publicar direto ou quer ver o plano completo?"
4. **PARAR.** Detalhes completos só se pedido. Se aprovado → Fase 2.

### Template Simples (bugs/fixes)

```markdown
### Bug
{Problema visível ao usuário}
### Causa raiz
{Técnica: arquivo, linha, razão}
### Solução
{O que mudar — detalhado para implementar}
### Arquivos
| Arquivo | Mudança |
|---------|---------|
### Critérios de aceite
1. {dado X → espera-se Y}
```

### Template Doc (tasks complexas → ClickUp Docs)

```markdown
# TECH-XXX — {título}
* **Task**: TECH-XXX (ID: {id}) | **Depende de**: {dep} | **Status**: PROPOSTO | **Data**: {date}
---
## Design (Figma)
{Link ou "Não existe — precisa ser criada"}
## Contexto
{Por que precisa existir. 2-3 parágrafos.}
## Decisões
* **{Decisão}**: {racional}
## Arquitetura
{Diagrama ASCII + explicação do fluxo}
## Fases de implementação
### Fase 1 — {nome}
{Arquivos, funções, mudanças. Detalhado para implementar.}
## Subtasks
| # | Nome | Tags | Descrição curta |
### Subtask N — {nome}
**Tags:** {tag} | **Arquivos:** `{path}` (novo/existente)
**O que fazer:** {ações específicas}
**Critérios de aceite:** {dado X → espera-se Y}
## Arquivos a modificar
| Arquivo | Mudança |
## O que NÃO muda
{Explícito para evitar scope creep}
## Pré-requisitos
{Dependências externas}
## Verificação
1. {critério de aceite global}
## Observabilidade
### Métricas
{Novos endpoints HTTP, APIs externas, workflows Temporal, streaming → métricas. Se nenhuma: justificar.}
| Nome | Tipo | Labels | Justificativa |
### Alertas
{Novo fluxo crítico → alertas. Senão: justificar.}
| Nome | Condição | Severidade | Dashboard |
### Dashboards
{Impacto em Facial, LPR, Streaming. Ou "Nenhum."}
```

### Template Task Description

```markdown
> **Plano**: [TECH-XXX — {título}]({link_doc}) | **Figma**: {link ou "N/A"}
### Objetivo
{1-2 frases}
### Solução
{Approach + fluxo numerado, 4-6 itens}
### Decisões técnicas
{Top 5 bullets}
### Observabilidade
{Resumo: métricas, alertas, dashboards. Se nenhum: justificar.}
### Subtasks
| # | Nome | Tags |
```

### Template Subtask

```markdown
### Objetivo
{1-2 frases}
### Referências
* **Plano**: [TECH-XXX]({link_doc}) | **Figma**: {link ou "N/A"}
### O que fazer
* {ação com arquivo e função}
### Arquivos
* `{path}` (novo/existente)
### Critérios de aceite
* {dado X → espera-se Y}
```

---

## FASE 2 — PUBLICAR

Só após aprovação explícita.

**Task simples**: criar/atualizar task com `markdown_description` + tags.

**Task complexa**:
1. Criar doc page: `clickup_create_document_page(document_id: "2ky5ajyw-1133", parent_page_id: "2ky5ajyw-5873", name, content, content_format: "text/md")`
   Link: `https://app.clickup.com/90132794332/v/dc/2ky5ajyw-1133/{page_id}`
2. Atualizar task: `clickup_update_task(task_id, markdown_description)` + `clickup_add_tag_to_task(tag_name: "refine-ai")`
3. Criar subtasks: `clickup_create_task(name, list_id, parent: "{id_pai}", markdown_description, tags)`
4. Mostrar: links (doc, task, subtasks)

---

## Regras

- **Escrita**: MCP. **Leitura**: local sync (pode estar 30min desatualizado)
- **Nomes**: limpos, sem prefixos [Backend]. Usar tags
- **Código**: Read/Grep direto. Explore só em último caso
- **Decisões**: respeitar `decisions/`. Alertar se plano contradiz
- **Escopo**: sempre listar "O que NÃO muda"
