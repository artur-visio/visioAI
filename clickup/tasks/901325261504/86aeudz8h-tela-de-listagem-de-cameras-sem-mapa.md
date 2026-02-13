# Tela de listagem de cameras sem mapa

ID: 86aeudz8h
Custom ID: TECH-201
Status: in progress
Assignee(s): Marllon Cesar
Prioridade: —
List: Sprint 6 (2/9 - 2/22)

Datas:
- Criado: 2026-01-26
- Atualizado: 2026-02-09
- Due: —

## Descrição
**Front**
*   Fazer a listagem conforme a tabela
    *   Enviar a query string de search, sempre para campos de busca

**Backend**
*   Backend irá retornar os dados com paginação.
*   Criação do filtro no endpoint de câmera
*   Preparar o endpoint de camera para o campo busca, possibilitando buscar por:
    *   Serial number (parcial) = %asdas%
    *   Endereço (parcial)
    *   Name Spot (parcial)
    *   Name Camera (parcial)

**Filtros definidos em tela**
*   Tipo de câmera (PTZ, Fixa, Panoramica) **\- campo novo**
*   Algoritmo da câmera (Facial, LPR) **- campo atualmente usado para indicar o tipo da câmera**
*   Marca
*   Status
*   serialNumber (texto)

## Custom Fields
- Versão: —
- Módulo/Épico: —
