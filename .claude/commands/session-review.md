# Session Review — Análise de consumo e otimização

Analise esta sessão de conversa e gere um relatório prático de consumo e otimização.

## 1. Resumo da sessão

Liste em bullets:
- Quantas interações (pares user/assistant) ocorreram
- Quais tarefas foram realizadas (resumo em 1 linha cada)
- Quais ferramentas foram usadas (e quantas vezes cada)
- Se houve uso de subagents (Task tool), liste quais e o tipo

## 2. Padrões de consumo identificados

Analise e aponte:
- **Tool calls redundantes**: Houve buscas repetidas ou leituras desnecessárias do mesmo arquivo?
- **Subagents desnecessários**: Algum subagent poderia ter sido uma chamada direta (Grep/Glob/Read)?
- **Respostas longas**: Houve respostas que poderiam ter sido mais concisas?
- **Contexto desperdiçado**: Foram carregados arquivos grandes que não foram usados?
- **Paralelismo perdido**: Houve tool calls sequenciais que poderiam ter sido paralelas?

## 3. Sugestões de otimização

Para cada padrão identificado, sugira uma ação concreta:
- Como o **usuário** poderia ter formulado melhor o pedido
- Como o **fluxo** poderia ser mais eficiente
- Se algum comando/skill deveria ser criado para evitar repetição

## 4. Score de eficiência

Dê uma nota de 1-10 para a sessão considerando:
- **Foco** (tarefas claras vs divagação)
- **Eficiência de tools** (mínimo de calls para máximo resultado)
- **Aproveitamento de contexto** (reuso vs re-leitura)

Formato: tabela com as 3 dimensões + nota geral.

## Regras

- Seja direto e pragmático — não enrole
- Priorize as top 3 sugestões de maior impacto
- Se a sessão foi eficiente, diga isso e não invente problemas
- Use dados concretos da sessão (cite interações específicas)
