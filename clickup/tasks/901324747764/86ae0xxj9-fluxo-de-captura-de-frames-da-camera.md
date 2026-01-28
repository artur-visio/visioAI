# Fluxo de captura de Frames da camera

ID: 86ae0xxj9
Custom ID: TECH-76
Status: to do
Assignee(s): Matheus Candido
Prioridade: —
List: Sprint 5 (1/26 - 2/8)

Datas:
- Criado: 2025-12-18
- Atualizado: 2026-01-26
- Due: —

## Descrição
*   Vamos fazer a captura de frames da camera via RTSP
Documentação -Analise de Captura de Frames ([https://app.clickup.com/90132794332/docs/2ky5ajyw-1133/2ky5ajyw-733](https://app.clickup.com/90132794332/docs/2ky5ajyw-1133/2ky5ajyw-733))

Opções de saída:
1 - Http Pooling no snapshot da camera
*   Fazer um pooling na camera no endpoint de snapshot buscando o jpeg da camera
2- Criar um stream principal com 30fps armazenando no SD e um com 1fps
*   Abrir um RTSP para armazenar o video de 1fps na nuvem sempre live
3- Criar um stream principal com 30 fps - não usar stream secundário
*   Buscar o vídeo de 30fps da camera e quebrar ele na nuvem removendo os 29 frames para salvar ele mais leve
4- Camera enviando eventos
*   Verificar se tem como a camera enviar eventos para a gente

Caso o HTTP não funcione, precisamos entender melhor o RTPS com o FFMPEG

## Custom Fields
- Versão: 0
- Módulo/Épico: 7
