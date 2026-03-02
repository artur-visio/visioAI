# Deploy & Infra Patterns

## cms-api Deploy
- **`deploy-dev`** (Makefile): faz `kubectl apply -k` + `rollout restart` — aplica manifests automaticamente
- **`deploy-prod`** (Makefile): só faz `rollout restart` — precisa aplicar manifests manualmente antes (`kubectl apply -k apps/cms-api/prod`)
- Build: `make docker-build` → `make docker-push` → `make deploy-dev` ou manual para prod

## nginx Ingress
- **`proxy-body-size: "0"`** em dev e prod — sem limite no nginx
- Fastify (10MB em `main.ts`) é o guardião real e retorna JSON 413 estruturado
- Sem isso, nginx retorna HTML 413 genérico que não é útil para o frontend

## Kustomize Gotchas
- **Strategic merge patch não remove campos** — se um env var tinha `value` hardcoded e o novo manifest usa `valueFrom`, dá conflito `value/valueFrom`
- Solução: deletar o deploy (`kubectl delete deploy`) e reaplicar com `kubectl apply -k`

## Ambientes
- **Contextos k8s**: `aks-dev` (rg-aks-dev), `aks-prod` (rg-aks-prod)
- Trocar: `kubectl config use-context aks-dev` ou `aks-prod`
- **ACR dev**: `visioiodevakracr1.azurecr.io`
- **ACR prod**: `visioioprodakracr1.azurecr.io`

## Secrets
- **Prod**: usa ExternalSecret (Azure Key Vault) — arquivo `external-secret.yaml`
- **Dev**: secrets em plaintext no `deployment-patch.yml`

## TURN/coturn
- Removido completamente (base manifests) — não estava em uso
- ICE servers usa apenas STUN público do Google: `stun:stun.l.google.com:19302`
