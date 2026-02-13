# Módulo de AI

ID: 86af751vk
Custom ID: TECH-272
Status: to do
Assignee(s): —
Prioridade: —
List: Backlog

Datas:
- Criado: 2026-02-09
- Atualizado: 2026-02-09
- Due: —

## Descrição
## Objetivo

Módulo de busca inteligente que permite ao usuário localizar **pessoas**, **veículos** (por placa) ou **objetos/atributos visuais** em gravações de câmeras, utilizando IA para processar e correlacionar detecções.

## Fluxo Principal
1. **Frontend** dispara busca → cria novo ID de busca (research) no CMS-api
2. Envia request de análise para as **câmeras selecionadas** (1..N)
3. Câmeras retornam **frames/vídeo** para análise
4. Sistema identifica o **tipo de busca** e executa o pipeline correspondente
5. Quando encontrado **match** → adiciona resultado à entidade de research
6. **Webhook** notifica o frontend em real-time → eventos atrelados ao ID da busca

## Tipos de Busca
### 1\. Busca de Pessoa (Facial)
*   Enviar a foto da pessoa para o **FindFace** para obter o embedding
*   Consultar tabela de Embedding de face filtrando por **datetime** e **câmera**
*   Executar o fluxo de facial salvando todas as ocorrências nessa tabela
*   Pegar todos os embeddings das pessoas que passaram naquelas câmeras naquele período
*   **Comparar** com a face de input e retornar matches com score de confiança

### 2\. Busca de Placa (LPR)
*   Criar/usar tabela de **Placa, datetime e câmera**
*   Executar o fluxo de LPR salvando todas as ocorrências nessa tabela
*   Fazer a busca da placa procurada em cima dessa tabela
*   Buscar **screenshots** daquele período na câmera

### 3\. Identificação de Atributos via AI (Gemini/LLM)
*   Usar a busca de **frames da câmera** no período selecionado
*   Passar os frames no **Gemini** para reconhecer os atributos visuais do frame
*   Inputar a lista de atributos reconhecidos + input do usuário em um **LLM**
*   Fazer um **pré-filtering** dos atributos buscados para otimizar consumo de tokens
    *   Ex: query "camiseta vermelha" → filtra apenas frames com atributo de roupa vermelha antes de enviar ao LLM

### 4\. Quando encontrado match
*   Adicionar o output à entidade de **busca/research**
*   **Notificar** o frontend via webhook a cada novo objeto inserido no ID daquela research

## UX / Interface
### Tela de Busca
*   Interface baseada em **mapa**
*   Barra de busca com input de **linguagem natural**: "O que você quer localizar?"
    *   Ex: "carro preto placa ABC", "homem de camiseta vermelha"
*   Opções disponíveis:
    *   **Adicionar foto** (para busca facial)
    *   **Refinar área** (seleção de região no mapa)
    *   **Alterar período** (picker com presets: últimas 12h, 24h, 7 dias + range customizado)
*   Sugestões de endereço ao digitar

### Tela de Resultados
*   Contagem de resultados encontrados (ex: "20 resultados encontrados")
*   Lista **ordenável por confiança**
*   Níveis de compatibilidade: **Alta** / **Média** / **Baixa**
*   Cada resultado mostra: horário, data, descrição (ex: "Sedan Preto | ABC0001"), qtd detecções, qtd câmeras, % confiança
*   **Mapa** com marcadores das câmeras que detectaram
*   **Detalhe do resultado**: timeline de detecções por câmera, snapshots
*   Ação: **"Confirmar alerta"** / **"Descartar alerta"**
*   Paginação de classes/resultados

## Dependências
*   Fluxo de captura de frames da câmera
*   Fluxo de captura de eventos de LPR e Facial
*   Integração FindFace

## Notas do Refinamento
*   Precisamos desenhar a **hierarquia do workflow** (Temporal), sequência lógica de etapas
*   O **pré-filtering de atributos** é crítico para otimizar custos de tokens no Gemini/LLM
*   O módulo deve suportar busca em **gravações** (histórico) e também gerar **alertas ao vivo**

## Custom Fields
- Versão: 0
- Módulo/Épico: —
