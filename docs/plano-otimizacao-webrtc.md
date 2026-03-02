# Otimização WebRTC — Plano Técnico

**Data:** 2026-02-16
**Autor:** Artur + Claude (Chief of Staff)
**Status:** PROPOSTO

---

## Problema

O vídeo WebRTC demora **5-10 segundos** para aparecer ao abrir uma câmera. Além disso, em cenários de **mosaico aberto por mais de 6 horas**, a sessão expira e o usuário precisa dar F5.

### Causas identificadas

| Causa | Impacto | Status |
|-------|---------|--------|
| MediaMTX tentando RTSP via UDP antes de TCP | ~3s perdidos | **Corrigido** (sourceProtocol: tcp) |
| MediaMTX só conecta RTSP quando viewer chega | ~1-2s perdidos | **Corrigido** (sourceOnDemand: false) |
| WebSocket intermediário entre frontend e WHEP | ~0.5-1s perdido | **Pendente** (este plano) |
| Sessão não renova automaticamente | Mosaico 6h+ quebra | **Pendente** (este plano) |
| PeerConnection não reconecta automaticamente | Queda de rede = F5 | **Pendente** (este plano) |

---

## Fluxo atual vs proposto

### Hoje (3 round-trips)

```
Frontend                    CMS API                 stream-webrtc           MediaMTX
   │                           │                         │                     │
   ├── POST /sessions ────────►│                         │                     │
   │                           ├── POST /start ─────────►│                     │
   │                           │                         ├── cria path ───────►│
   │                           │                         │◄── ok ──────────────┤
   │◄── { webrtcUrl (WS) } ───┤                         │                     │
   │                           │                         │                     │
   ├── WebSocket connect ─────────────────────────────►  │                     │
   │◄── "accepted" { whepUrl, iceServers } ────────────  │                     │
   │                                                                           │
   ├── POST /whep (SDP offer) ────────────────────────────────────────────────►│
   │◄── SDP answer ───────────────────────────────────────────────────────────►│
   │                                                                           │
   │◄══════════════════════ vídeo via WebRTC ═════════════════════════════════►│
```

**Tempo total:** ~2-3s (após correções de TCP e sourceOnDemand)

### Proposto (2 round-trips, sem WebSocket)

```
Frontend                    CMS API                 stream-webrtc           MediaMTX
   │                           │                         │                     │
   ├── POST /sessions ────────►│                         │                     │
   │                           ├── POST /start ─────────►│                     │
   │                           │                         ├── cria path ───────►│
   │                           │                         │◄── ok ──────────────┤
   │                           │◄── { whepUrl, ice } ────┤                     │
   │◄── { whepUrl, iceServers }┤                         │                     │
   │                                                                           │
   ├── POST /whep (SDP offer) ────────────────────────────────────────────────►│
   │◄── SDP answer ────────────────────────────────────────────────────────────┤
   │                                                                           │
   │◄══════════════════════ vídeo via WebRTC ═════════════════════════════════►│
```

**Tempo total estimado:** ~1-1.5s

---

## O que muda

### Parte A — Eliminar WebSocket (ganho de latência)

A WHEP URL (`https://mediamtx-dev.visio.io/{cameraId}/whep`) e os ICE servers (STUN/TURN) são **determinísticos** — não mudam entre requests. Hoje eles passam por um WebSocket intermediário que só serve para entregar essa informação. Proposta: retornar direto no response do `POST /sessions`.

**Alterações por camada:**

| Camada | O que muda |
|--------|-----------|
| **stream-webrtc** (Go) | `/internal/cameras/{id}/start` passa a retornar `whepUrl` e `iceServers` no JSON |
| **CMS API** (NestJS) | `StreamWebrtcClient.start()` parseia o resultado; `StreamItemDto` ganha campos `whepUrl` e `iceServers` |
| **Frontend** (React) | Novo hook `useWhepStream` que faz POST WHEP direto (sem WebSocket). Substitui `useWebRtcStream` |

O WebSocket e o campo `webrtcUrl` continuam funcionando (backward compatible) até o frontend migrar.

### Parte B — Auto-refresh de sessão (mosaico 6h+)

A sessão tem TTL de 6h (`SESSION_TTL_SECONDS=21600`). O endpoint de refresh já existe no backend (`POST /sessions/{id}/refresh`) e o hook Orval já está gerado (`useRefreshStreamSession`), mas **ninguém chama**.

**Solução:** Timer no frontend que chama `refreshSession` automaticamente 5 minutos antes de expirar. Verifica a cada 60s.

### Parte C — Reconexão automática do PeerConnection

Se a conexão WebRTC cair (rede instável, tab suspend, etc.), hoje o vídeo fica indisponível até F5.

**Solução:** O hook `useWhepStream` detecta `connectionState === 'failed'` e re-cria o PeerConnection + WHEP automaticamente. Backoff exponencial (1s, 2s, 3s). Máximo 3 tentativas antes de mostrar erro.

---

## Arquivos afetados

### Backend (stream-webrtc — Go)
- `streaming/internal/streamwebrtc/handlers.go` — response do `/start`

### Backend (CMS API — NestJS)
- `cms-api/src/modules/streams/stream-webrtc.client.ts` — parseia whepUrl/iceServers
- `cms-api/src/modules/streams/dto/stream-session-response.dto.ts` — novos campos no DTO
- `cms-api/src/modules/streams/streams.service.ts` — passa dados para response
- `cms-api/src/modules/streams/streams.utils.ts` — nova função `buildWhepUrl`

### Frontend (React/Next.js)
- `visio-frontend/src/services/streams/useWhepStream.ts` — **novo** hook WHEP + reconexão
- `visio-frontend/src/app/hooks/useCreateCameraSession.ts` — cache + auto-refresh
- `visio-frontend/src/app/page-layout/modules/camera/components/VideoSection.tsx` — usa novo hook

---

## Ordem de deploy

1. **stream-webrtc** — backward compatible (só adiciona campos ao response)
2. **CMS API** — backward compatible (campos opcionais no DTO)
3. **Frontend** — troca de hook, elimina WebSocket

---

## Como validar

| Teste | Como verificar |
|-------|---------------|
| Latência | DevTools Network: tempo entre "session created" e primeiro frame de vídeo < 2s |
| Sem WebSocket | DevTools WS tab: nenhuma conexão WS para stream-webrtc |
| Mosaico | Abrir 4+ câmeras, todas carregam em paralelo |
| Auto-refresh | Deixar aberto >5h55min, verificar no Network que refresh ocorre |
| Reconexão | DevTools → Network → Offline → Online: vídeo volta sem F5 |

---

## Riscos e mitigações

| Risco | Mitigação |
|-------|-----------|
| Frontend antigo (branch sem mudança) quebra | WebSocket + `webrtcUrl` mantidos no response (backward compat) |
| ICE servers mudam entre ambientes | CMS API constrói `whepUrl` via env var `MEDIAMTX_PUBLIC_WHEP_BASE_URL` |
| Reconexão em loop infinito | Limite de 3 retries com backoff exponencial |
| Refresh falha (backend down) | Retry silencioso; se falhar 3x, recria sessão do zero |
