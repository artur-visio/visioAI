# Finalização de tela de mapa e mapa + lista de cameras

ID: 86aeufga6
Custom ID: TECH-202
Status: in progress
Assignee(s): Marllon Cesar, Charbel Szymanski
Prioridade: —
List: Sprint 6 (2/9 - 2/22)

Datas:
- Criado: 2026-01-26
- Atualizado: 2026-02-09
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

**Ações para garantir a integridade dos status de câmera/spot:**
*   Endpoint de spots: Cria uma ação para desativar todas as câmeras quando um spot for desativado.
*   Endpoint de câmeras: Não deixar ativar uma câmera caso o respectivo spot estiver desativado.

**(1) Filtros definidos em tela**
*   Tipo de câmera (PTZ, Fixa, Panoramica) **\- campo novo**
*   Algoritmo da câmera (Facial, LPR) **- campo atualmente usado para indicar o tipo da câmera**
*   Marca
*   Status (da câmera)
*   serialNumber (texto)

## Custom Fields
- Versão: —
- Módulo/Épico: —
