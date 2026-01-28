# Playback no browser (tocar gravação do SD)

ID: 86aevqdr7
Custom ID: TECH-222
Status: to do
Assignee(s): —
Prioridade: —
List: Backlog

Datas:
- Criado: 2026-01-27
- Atualizado: 2026-01-27
- Due: —

## Descrição
## **Objetivo**
Usuário seleciona um range (ex.: “14:00–14:05”) e a VISIO **toca a gravação no navegador**.
## **Por que não dá pra tocar RTSP direto no browser?**
Browser não fala RTSP nativamente. Então você precisa de um **gateway**:
*   RTSP → **HLS** (mais simples)
*   RTSP → **WebRTC** (latência menor)
*   RTSP → **MSE/MP4 fragmented** (mais avançado)
A Hikvision te entrega o RTSP pronto via playbackURI. 
## **Fluxo técnico**
### **1) Descobrir “o que dá pra buscar” (opcional, mas recomendado)**
GET /ISAPI/ContentMgmt/search/profile (condições suportadas). 
### **2) Montar a timeline (trechos gravados)**
POST /ISAPI/ContentMgmt/search (retorna matchList com timeSpan, trackID e playbackURI).   
Resultado esperado por item:
*   trackID 
*   timeSpan.startTime/endTime 
*   mediaSegmentDescriptor.playbackURI 
### **3) Tocar no browser**
Você pega playbackURI (RTSP) e entrega pro gateway:
*   **Gateway** puxa RTSP da câmera
*   **Browser** consome HLS/WebRTC do gateway
## **Endpoint “bônus” pra calendário (melhor UX)**
Pra UI tipo “quais dias têm gravação?”, use:
POST /ISAPI/ContentMgmt/record/tracks/<ID>/dailyDistribution 
Isso te dá uma visão por dia e evita search pesado toda hora.
## **Entregáveis dessa task**
*   API VISIO: GET /cameras/:id/recordings?from=&to= → retorna lista de trechos com start/end + playback\_uri (interno)
*   Playback URL do gateway: GET /playback/:cameraId?start=&end= → retorna HLS/WebRTC
*   UI: timeline + botão “Play”
## **Critérios de aceite**
*   Dado um range com gravação, o player inicia em < 3s (HLS pode variar)
*   Se não houver gravação, UI mostra “sem gravação”
*   Funciona para trackID típico (101/102) retornado pela busca

## Custom Fields
- Versão: 0
- Módulo/Épico: —
