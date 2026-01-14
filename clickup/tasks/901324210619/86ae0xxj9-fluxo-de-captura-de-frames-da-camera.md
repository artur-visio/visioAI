# Fluxo de captura de Frames da camera

ID: 86ae0xxj9  
Status: to do  
Assignee(s): —  
Prioridade: —  
List: Sprint 4 (1/12 - 1/25)  

Datas:
- Criado: 2025-12-18
- Atualizado: 2026-01-13
- Due: —

## Descrição
Vamos fazer a captura de frames da camera via RTSP
Documentação -

Opções de saída:
1 - Http Pooling no snapshot da camera
Fazer um pooling na camera no endpoint de snapshot buscando o jpeg da camera
2- Criar um stream principal com 30fps armazenando no SD e um com 1fps
Abrir um RTSP para armazenar o video de 1fps na nuvem sempre live
3- Criar um stream principal com 30 fps - não usar stream secundário
Buscar o vídeo de 30fps da camera e quebrar ele na nuvem removendo os 29 frames para salvar ele mais leve
4- Camera enviando eventos
Verificar se tem como a camera enviar eventos para a gente 

Caso o HTTP não funcione, precisamos entender melhor o RTPS com o FFMPEG

## Custom Fields
- —
