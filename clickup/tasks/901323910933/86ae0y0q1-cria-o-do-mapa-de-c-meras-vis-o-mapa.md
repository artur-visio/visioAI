# Criação do mapa de câmeras - Visão mapa

ID: 86ae0y0q1
Custom ID: TECH-79
Status: complete
Assignee(s): Filipe Lins, Marllon Cesar
Prioridade: —
List: Sprint 3 (12/29 - 1/11)

Datas:
- Criado: 2025-12-18
- Atualizado: 2026-01-09
- Due: —

## Descrição
Construir a primeira versão da tela de mapa para visualização e navegação de câmeras (e postes) conforme wireframes, permitindo buscar, filtrar, selecionar um ponto no mapa e abrir detalhes.

* * *
## **Escopo**
1. **Layout base**
*   Header do mapa com:
    *   Campo de busca (“Buscar por …”)
    *   Botão **Filtros**
    *   Segmentado de modos (ex.: **Mapa / Mapa + Lista / Lista / Relatório** — nomes podem ser ajustados, mas manter o comportamento de “trocar visualização”).
2. **Mapa + Pins**
*   Renderizar o mapa e plotar marcadores (pins) para **Postes**
*   Clusterização básica (ainda não, vamos esperar o design final)
3. **Interação de seleção**
*   Clique em um ponto:
    *   destacar ponto selecionado
    *   Abrir a lista de câmeras desse pin, com o tipo de câmeras e para onde a camera está apontando
    *   Ao clicar em uma das câmeras:
        *   abrir **painel lateral** (drawer/card) com detalhes mínimos:
            *   Nome (ex.: “Câmera #10”)
            *   Identificador (ex.: “Poste 2”, se aplicável)
            *   Endereço/local (placeholder se não existir ainda)
            *   CTA principal: **Ver detalhes** (ou “Ver câmeras”, conforme wireframe)
4. **Ações rápidas (context menu)**
*   Ao clicar em “…”/menu no card (conforme wireframe), exibir ações:
    *   “Adicionar a um grupo existente”
    *   “Abrir chamada de manutenção”
    *   “Adicionar a um mosaico existente”
5. **Filtros + Busca (MVP funcional)**
*   Busca textual (mínimo):
    *   filtra pins por nome/id
*   Modal/Drawer de filtros (mínimo):
    *   Status (Ativa/Inativa)
    *   Tipo (Câmera/Poste)
    *   (Opcional) Unidade/Grupo
*   Aplicar filtros refletindo no mapa (mostrar/ocultar pins).

* * *
## **Critérios de Aceite (objetivos)**
*   Tela renderiza mapa com header + tabs “Câmeras/Postes”.
*   Pins carregam a partir de um dataset (mockado ou API) e aparecem no mapa.
*   Busca filtra itens exibidos no mapa.
*   Filtros abrem via botão e, ao aplicar, atualizam pins exibidos.
*   Clicar em pin abre painel lateral com infos básicas e CTA “Ver detalhes”.
*   Menu de ações rápidas abre e dispara callbacks (mesmo que stub).
*   Trocar modo (Mapa/Mapa+Lista/Lista/Relatório) altera a composição da tela (mesmo que “Lista/Relatório” estejam como placeholder inicialmente)

### Mais informações
\[1\] Figma - [figma.com/design/f69VbWduZEvAB8e45NTZUc/Módulo-de-mapa?t=64Y5H7j5vOuRgSIa-0](http://figma.com/design/f69VbWduZEvAB8e45NTZUc/Módulo-de-mapa?t=64Y5H7j5vOuRgSIa-0)

## Custom Fields
- —
