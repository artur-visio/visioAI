# Camera-Webhook — Referência Técnica

## Overview

API webhook stateless que recebe eventos de câmeras (facial/LPR) via multipart/form-data e encaminha para o Temporal.

- **Repo:** `plataforma/camera-webhook/`
- **Rota:** `POST https://webhook.visio.io/webhooks/camera-events` (sem autenticação)
- **Decisão:** [2026-02-19-camera-webhook-remove-token-auth](../decisions/2026-02-19-camera-webhook-remove-token-auth.md)

## Arquitetura

```
Câmera (Hikvision/Dahua) → POST /webhooks/camera-events
  → multer (form-data) / manual parser (x-mixed-replace)
  → upload imagens → Azure Blob Storage (container: face-lpr-webhook)
  → inicia workflow → Temporal (task queue: face-lpr)
```

## Deploy

### ACRs
| Env | Registry |
|-----|----------|
| Dev | `visioiodevakracr1.azurecr.io/camera-webhook` |
| Prod | `visioioprodakracr1.azurecr.io/camera-webhook` |

### Comandos

```bash
# Dev
make build-deploy-dev

# Prod
make build-deploy-prod

# Aplicar manifests K8s (após mudanças em infra-registry)
kubectl apply -k ../infra-registry/apps/camera-webhook/dev
kubectl apply -k ../infra-registry/apps/camera-webhook/prod
```

## Secrets (Prod)

Gerenciadas via ExternalSecret → Azure Key Vault (`kv-visio-prod`):

| K8s Secret Key | Key Vault Secret |
|---|---|
| `AZURE_STORAGE_CONNECTION_STRING` | `prod-camera-webhook-storage-connection-string` |

## Env Vars

| Variável | Obrigatória | Descrição |
|---|---|---|
| `TEMPORAL_ADDRESS` | Sim | Endereço do Temporal (ex: `temporal-frontend.temporal.svc.cluster.local:7233`) |
| `TEMPORAL_TASK_QUEUE` | Sim | Task queue (ex: `face-lpr`) |
| `TEMPORAL_NAMESPACE` | Não | Namespace Temporal (default: `default`) |
| `PORT` | Não | Porta HTTP (default: `3000`) |
| `AZURE_STORAGE_CONNECTION_STRING` | Não | Connection string do Blob Storage |
| `NODE_ENV` | Não | Ambiente (default: `development`) |

## Formato do evento Hikvision (faceCapture)

A câmera envia multipart/form-data com 3 campos:
- `faceCapture` — JSON com metadados (ipAddress, eventType, faces, coordenadas)
- `faceImage` — JPEG do rosto detectado (~60KB)
- `backgroundImage` — JPEG da cena completa (~190KB)

Imagens salvas no blob com padrão: `{timestamp}_{cid}_{fieldname}.jpg`
