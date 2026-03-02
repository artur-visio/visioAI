# Streaming

## WHEP (WebRTC direto via MediaMTX)
- Substituiu abordagem anterior via WebSocket
- Branch `feature/whep-direct-streaming` já mergeada em main
- Env var no cms-api: `MEDIAMTX_PUBLIC_WHEP_BASE_URL`
  - Dev: `https://mediamtx-dev.visio.io`
  - Prod: `https://mediamtx.visio.io`
- Também usa `WEBRTC_ICE_SERVERS_JSON`: `[{"urls":["stun:stun.l.google.com:19302"]}]`

## Serviços
- **stream-webrtc**: porta 8090, deployment em `streaming` namespace
- **stream-hls**: porta 8081, deployment em `streaming` namespace
- **stream-flv**: porta 8092, deployment em `streaming` namespace
- **mediamtx**: media relay (RTSP/WebRTC)

## Pendências
- **stream-hls e stream-flv** requerem `INTERNAL_API_KEY` env var (código novo, não está nos manifests)
- Pods antigos ainda rodam com imagem antiga; novos crasham por falta da env var

## Infraestrutura
- Manifests em `infra-registry/apps/streaming/base/` com overlays `dev/` e `prod/`
- ConfigMap: `streaming-config`, Secret: `streaming-secrets`
- MediaMTX tem configmap próprio: `mediamtx.configmap.yaml`

## Domínios
- Dev: `stream-dev.visio.io`, `hls-dev.visio.io`, `mediamtx-dev.visio.io`
- Prod: `stream.visio.io`, `hls.visio.io`, `flv.visio.io`, `mediamtx.visio.io`
