# VPN WireGuard - Runbook

## Acesso Rápido

### 1. Criar device (primeira vez)

1. Acesse https://vpn.visio.io
2. Login: `admin` / `visio-vpn-dev-2024`
3. "Add Device" → nome do device → baixar `.conf`
4. Editar arquivo e corrigir Endpoint para: `20.36.245.75:51820`

### 2. Conectar

```bash
# Instalar WireGuard (se necessário)
brew install wireguard-tools

# Ativar VPN
sudo wg-quick up ~/path/to/visio-vpn.conf

# Verificar conexão
sudo wg show
```

### 3. Desconectar

```bash
sudo wg-quick down visio-vpn
```

## Acessar PostgreSQL

```bash
# Via IP direto (recomendado)
psql -h 10.10.16.4 -U pgadmin -d appdb

# Databases disponíveis: appdb, temporal, temporal_visibility
```

| Campo | Valor |
|-------|-------|
| Host | `10.10.16.4` |
| Port | `5432` |
| User | `pgadmin` |
| Databases | `appdb`, `temporal`, `temporal_visibility` |

## Troubleshooting

### VPN não conecta

1. Verificar se Endpoint está correto: `20.36.245.75:51820`
2. Verificar se túnel está ativo: `sudo wg show`
3. Testar porta UDP: `nc -zvu 20.36.245.75 51820`

### Banco não conecta

1. Verificar VPN ativa: `sudo wg show` (deve mostrar "latest handshake")
2. Testar conectividade: `nc -zv 10.10.16.4 5432`
3. Verificar rotas: `netstat -rn | grep 10.10`

### Verificar servidor

```bash
# Status do pod
kubectl get pods -n vpn

# Logs
kubectl logs -n vpn deploy/wg-access-server

# Status WireGuard no servidor
kubectl exec -n vpn deploy/wg-access-server -- wg show
```

## Infraestrutura

| Recurso | Localização |
|---------|-------------|
| Manifests K8s | `repos/infra-registry/apps/vpn/` |
| NSG Rule | `repos/infra-registry/infra/envs/dev/aks/providers.tf` |
| Namespace | `repos/infra-registry/cluster/dev/namespaces/vpn.yml` |
