---
description: Deploy de serviços no ambiente dev ou prod — detecta serviços alterados, valida contexto Azure/k8s, executa build+push+deploy
argument-hint: [PR number ou branch name] [--env dev|prod]
model: sonnet
---

# Deploy

Você vai executar o deploy de **$ARGUMENTS** de forma segura e verificada.

## Configuração Base

- **Monorepo**: `repos/plataforma/`
- **Infra Registry**: `repos/plataforma/infra-registry/`
- **Ambientes**: `dev` (padrão) ou `prod` (exige confirmação explícita)

### Serviços Deployáveis

| Serviço | Diretório | Namespace | Deploy(s) | Tem Migration |
|---------|-----------|-----------|-----------|---------------|
| cms-api | `cms-api/` | `cms` | `cms-api` | SIM |
| camera-webhook | `camera-webhook/` | `camera-webhook` | `camera-webhook` | NÃO |
| temporal-worker | `temporal-worker/` | `temporal` | `temporal-worker-small`, `temporal-worker-medium` | NÃO |
| streaming | `streaming/` | `streaming` | `stream-webrtc`, `stream-hls`, `stream-flv`, `mediamtx` | NÃO |
| visio-frontend | `visio-frontend/` | `frontend` | `visio-frontend` | NÃO |
| visio-design-system | `visio-design-system/` | `design-system` | `visio-design-system` | APENAS DEV |

### ACR Registries

| Ambiente | Registry |
|----------|----------|
| Dev | `visioiodevakracr1.azurecr.io` |
| Prod | `visioioprodakracr1.azurecr.io` |

### Azure Subscriptions

| Ambiente | Subscription | AKS Cluster | Resource Group |
|----------|-------------|-------------|----------------|
| Dev | `Visio Dev` | `aks-dev` | `rg-aks-dev` |
| Prod | `Producão` | `aks-prod` | `rg-aks-prod` |

---

## FASE 1 — IDENTIFICAR ESCOPO

### Se argumento é PR number:
```bash
gh pr view $PR_NUMBER --json mergedAt,baseRefName,files --repo visio-io/plataforma
```

### Se argumento é branch name:
```bash
git log main..origin/$BRANCH --name-only --pretty=format:""
```

### Determinar ambiente:
- PR mergeado em `dev` → ambiente = **dev**
- PR mergeado em `main` → ambiente = **prod** (exigir confirmação do usuário)
- Flag `--env` no argumento → usa o especificado

### Detectar serviços alterados:
Mapear arquivos alterados para serviços:
- `cms-api/**` → cms-api
- `camera-webhook/**` → camera-webhook
- `temporal-worker/**` → temporal-worker
- `streaming/**` → streaming
- `visio-frontend/**` → visio-frontend
- `visio-design-system/**` → visio-design-system
- `infra-registry/apps/{service}/**` → manifests do serviço (kustomize apply necessário)

### Detectar migrations pendentes:
Se `cms-api` está nos serviços alterados:
```bash
git diff main..origin/$BRANCH --name-only -- cms-api/src/migrations/
```
Se houver arquivos de migration novos → flag `HAS_MIGRATION=true`

Apresentar ao usuário:
- Ambiente: dev/prod
- Serviços a deployar: [lista]
- Migrations pendentes: sim/não
- Pedir confirmação antes de prosseguir

---

## FASE 2 — VALIDAR CONTEXTO

### 2.1 — Azure Subscription
```bash
az account show --query name -o tsv
```
- Se dev: deve ser `Visio Dev`. Se não: `az account set --subscription "Visio Dev"`
- Se prod: deve ser `Producão`. Se não: `az account set --subscription "Producão"`

### 2.2 — Kubernetes Context
```bash
kubectl config current-context
```
- Se dev: deve ser `aks-dev`. Se não: `az aks get-credentials --resource-group rg-aks-dev --name aks-dev --overwrite-existing`
- Se prod: deve ser `aks-prod`. Se não: `az aks get-credentials --resource-group rg-aks-prod --name aks-prod --overwrite-existing`

### 2.3 — Branch correta no checkout
```bash
cd repos/plataforma
git fetch origin
```
- Se dev: `git checkout dev && git pull origin dev`
- Se prod: `git checkout main && git pull origin main`

---

## FASE 3 — MIGRATIONS (se aplicável)

**APENAS para cms-api quando HAS_MIGRATION=true.**

⚠️ STOP: Confirmar com usuário antes de rodar migrations.

```bash
cd repos/plataforma/cms-api
make migrate
```

Verificar output — se falhou, NÃO prosseguir com deploy. Reportar erro.

---

## FASE 4 — BUILD & DEPLOY

Para CADA serviço detectado, executar na ordem:

### Dev:
```bash
cd repos/plataforma/{service}
make build-deploy-dev
```

### Prod:
⚠️ STOP: Confirmar CADA serviço individualmente com o usuário.

```bash
cd repos/plataforma/{service}
make build-deploy-prod
```

**Nota para cms-api em prod**: o `deploy-prod` só faz rollout restart. Se houve mudanças em manifests (`infra-registry/apps/cms-api/prod/`), avisar o usuário que precisa aplicar manualmente:
```bash
kubectl apply -k repos/plataforma/infra-registry/apps/cms-api/prod
```

---

## FASE 5 — VERIFICAÇÃO

Para cada serviço deployado:

### 5.1 — Pod healthy
```bash
kubectl -n {namespace} get pods -l app={deployment-name}
kubectl -n {namespace} rollout status deploy {deployment-name} --timeout=120s
```

### 5.2 — Logs sem erros
```bash
kubectl -n {namespace} logs deploy/{deployment-name} --tail=30
```

### 5.3 — Health check (se aplicável)
- cms-api: `curl -s https://api{.dev}.visio.io/health`
- frontend: `curl -s https://app{-dev}.visio.io` (status 200)

---

## CHECKPOINT FINAL

Apresentar ao usuário:
- Serviços deployados: [lista com status ✅/❌]
- Migrations executadas: sim/não/n/a
- Pods healthy: sim/não
- Ambiente: dev/prod
- Qualquer erro ou warning encontrado

Se tudo OK:
> ✅ Deploy concluído com sucesso no ambiente {env}.

Se houve erro:
> ❌ Deploy falhou para {serviço}: {erro}. Sugestão: {ação}.

---

## REGRAS DE SEGURANÇA

1. **NUNCA deployar em prod sem confirmação explícita do usuário**
2. **NUNCA rodar migrations sem confirmação**
3. **SEMPRE verificar az account e kubectl context ANTES de qualquer ação**
4. **Se um serviço falhar, NÃO prosseguir para o próximo automaticamente — reportar e perguntar**
5. **NUNCA fazer git push — esta skill é apenas para deploy de código já mergeado**
