# Finalização de tela de mapa e mapa + lista de cameras

ID: 86aeufga6
Custom ID: TECH-202
Status: to do
Assignee(s): —
Prioridade: —
List: Sprint 5 (1/26 - 2/8)

Datas:
- Criado: 2026-01-26
- Atualizado: 2026-01-27
- Due: —

## Descrição
**Mapa**
*   Tumbnail do vídeo no card de camera (depende do frame)
    *   Definimos que: vai ser apenas o último frame do video como um tumbnail
*   Precisamos ajustar o endpoint de sports para que possibilite filtrar os dados solicitados (1)

**Mapa + lista**
*   Fazer um endpoint para retornar os spots dentro da região geografica
    *   Front precisa mandar o quadrado do poligono
    *   Ativar no postgres - [link do como](https://learn.microsoft.com/en-us/answers/questions/2004986/request-to-enable-postgis-extension-on-azure-postg)
    *   Incluir no queryparam de busca de spot
    *   Frontend alinhar com o backend a paginação em caso de busca por georeferência.

**(1) Filtros definidos em tela**
*   Tipo de camera (facial/lpr)
*   Marca
*   Status
*   serialNumber (texto)

## Custom Fields
- Versão: —
- Módulo/Épico: —
