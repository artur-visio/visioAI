# Uso do Claude Code na VISIO

## Configuração de modelo

Por padrão, usamos **Sonnet** para otimizar custos. A configuração está em `.claude/settings.local.json` (não vai para o git).

### Quando usar cada modelo

| Modelo | Custo relativo | Usar para |
|--------|----------------|-----------|
| **Haiku** | 1x | Perguntas simples, busca em código, tarefas triviais |
| **Sonnet** | 15x | Refatoração, code review, desenvolvimento do dia-a-dia |
| **Opus** | 60x | Arquitetura complexa, decisões críticas, problemas difíceis |

### Como alternar de modelo

```bash
# Uso normal (Sonnet - padrão)
claude

# Iniciar com Opus para tarefa complexa
claude --model opus

# Durante uma sessão, trocar para Opus
/model opus

# Voltar para Sonnet
/model sonnet
```

## Boas práticas para otimizar consumo

### 1. Seja específico nas perguntas

```
# Ruim (gera resposta longa, consome mais tokens)
"Me explica tudo sobre como funciona autenticação no projeto"

# Bom (resposta focada)
"Qual arquivo implementa o middleware de auth do Keycloak?"
```

### 2. Reduza o contexto carregado

- Evite abrir arquivos grandes desnecessariamente
- Especifique linhas quando possível: "olha o arquivo X linhas 50-100"
- Sessões curtas e focadas > sessões longas genéricas

### 3. Aproveite o cache

Se vai fazer várias perguntas sobre o mesmo arquivo/contexto, faça na mesma sessão - o contexto fica em cache.

### 4. Use agentes com parcimônia

Agentes (Task tool) são úteis mas cada sub-agente consome tokens separadamente. Para buscas simples, prefira comandos diretos.

## Arquivos de configuração

| Arquivo | Escopo | Git |
|---------|--------|-----|
| `.claude/settings.json` | Projeto (todos) | Sim |
| `.claude/settings.local.json` | Pessoal | Não |
| `~/.claude/settings.json` | Global | N/A |

## Referência

- [Documentação Claude Code](https://docs.anthropic.com/en/docs/claude-code)
