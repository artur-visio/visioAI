# Remoção da autenticação por token do camera-webhook

- **Status:** DECIDIDO
- **Data:** 2026-02-19
- **Dono:** Artur

## Contexto / Problema

O `WEBHOOK_TOKEN` configurado continha caracteres `/` e `=` que o Express interpretava como separadores de path, fazendo todas as requisições retornarem 404. A rota era `POST /webhooks/camera-events/:token`, onde o token era um parâmetro na URL.

## Decisão

Remover a autenticação por token inteira em vez de corrigir o encoding do token.

## Racional e Trade-offs

- **A favor:** simplicidade, o webhook recebe apenas eventos de câmeras (não há dados sensíveis de entrada), câmeras Hikvision não suportam auth headers customizados facilmente
- **Contra:** endpoint aberto na internet — qualquer um pode enviar payloads
- **Mitigação futura (se necessário):** rate limiting no ingress-nginx, IP allowlist, ou mTLS

## Impactos

- **Código:** removido `basicAuth.middleware.ts`, `webhookToken` do `env.ts`, `:token` das rotas
- **Infra:** removido `WEBHOOK_TOKEN` dos deployments dev/prod e do ExternalSecret
- **Rota final:** `POST https://webhook.visio.io/webhooks/camera-events` (sem parâmetro)
- **PR:** #102

## Pendências

- Nenhuma
