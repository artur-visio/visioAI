# Deploy cms-api no AKS

## Pré-requisitos

```bash
# 1. Confirmar subscription Azure correta
az account show

# Se necessário, trocar:
az account set --subscription "Producão"
```

## Dev

```bash
cd repos/plataforma/cms-api
make build-deploy-dev
```

Equivale a:
1. `docker build --platform linux/amd64 -t visioiodevakracr1.azurecr.io/cms-api:latest --no-cache .`
2. `az acr login --name visioiodevakracr1 && docker push ...`
3. `az aks get-credentials --resource-group rg-aks-dev --name aks-dev --overwrite-existing`
4. `kubectl apply -k ../infra-registry/apps/cms-api/dev`
5. `kubectl -n cms rollout restart deploy cms-api`

## Prod

### Sem migrations

```bash
cd repos/plataforma/cms-api
make build-deploy-prod
```

Equivale a:
1. `docker build --platform linux/amd64 -t visioioprodakracr1.azurecr.io/cms-api:latest --no-cache .`
2. `az acr login --name visioioprodakracr1 && docker push ...`
3. `az aks get-credentials --resource-group rg-aks-prod --name aks-prod --overwrite-existing`
4. `kubectl -n cms rollout restart deploy cms-api`

> **Atenção:** `deploy-prod` não aplica `kubectl apply -k`. Se mudou manifests (configmaps, secrets, ingress), rode manualmente antes do rollout:
> ```bash
> cd repos/plataforma/infra-registry
> kubectl apply -k apps/cms-api/prod
> kubectl -n cms rollout restart deploy cms-api
> ```

### Com migrations

```bash
cd repos/plataforma/cms-api

# 1. Build e push da imagem
make docker-release-prod

# 2. Rodar migrations via tunnel (aponta para o banco de prod)
PG_HOST=pg-visio-io-prod-01.postgres.database.azure.com NAMESPACE=cms make migration-tunnel

# 3. Deploy
make deploy-prod
```

## Verificar rollout

```bash
kubectl -n cms rollout status deploy cms-api
kubectl -n cms get pods -l app=cms-api
kubectl -n cms logs -l app=cms-api --tail=50
```
