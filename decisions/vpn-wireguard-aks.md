# VPN WireGuard no AKS

**Status:** DECIDIDO
**Data:** 2026-01-24
**Dono:** Artur Antunes

## Contexto / Problema

O PostgreSQL do ambiente dev está configurado com `public_network_access_enabled = false`, rodando em uma subnet privada (`10.10.16.0/27`) com Private DNS Zone. Isso impede acesso direto ao banco de fora do cluster AKS para desenvolvimento local, debug e operações.

## Decisão

Implementar VPN WireGuard usando `wg-access-server` rodando como pod no AKS, permitindo acesso seguro à VNet e recursos internos.

## Alternativas Descartadas

| Opção | Motivo do descarte |
|-------|-------------------|
| Azure VPN Gateway (P2S) | Custo alto (~$27-140/mês), overhead de gestão |
| Tailscale | Dependência externa, menos controle |
| kubectl port-forward | Temporário, não escala, não resolve DNS privado |
| Habilitar acesso público no PostgreSQL | Risco de segurança |

## Arquitetura

```
Internet ──► Ingress (vpn.visio.io) ──► Web UI (:8000)
    │
    └──► LoadBalancer (UDP :51820) ──► WireGuard Server
                                              │
                                              ▼
                                    VNet 10.10.0.0/16
                                    ├── AKS (10.10.0.0/20)
                                    └── PostgreSQL (10.10.16.0/27)
```

## Configuração Final

| Item | Valor |
|------|-------|
| Imagem | `place1/wg-access-server:v0.4.6` |
| Client Subnet | `10.44.0.0/24` |
| Allowed IPs | `10.10.0.0/16`, `10.0.0.0/16` |
| WireGuard Port | UDP 51820 (LoadBalancer) |
| Web UI | https://vpn.visio.io |
| LoadBalancer IP | `20.36.245.75` |

## Impactos

### Terraform (infra/envs/dev/aks/providers.tf)
- Adicionada regra NSG `Allow-WireGuard-UDP` (priority 160, UDP 51820)

### Kubernetes (apps/vpn/)
- Novo namespace `vpn`
- Deployment, Services, ConfigMap, Secret, Ingress

### DNS
- `vpn.visio.io` → Ingress IP (172.177.7.102) via Cloudflare (Proxied OK)
- WireGuard usa IP direto do LoadBalancer, não domínio

## Limitações Conhecidas

1. **DNS privado não resolve no cliente** - PostgreSQL usa Private DNS Zone que não resolve fora do Azure. Workaround: usar IP direto (`10.10.16.4`) ou adicionar entrada no `/etc/hosts`

2. **Storage in-memory** - Devices não persistem entre restarts do pod. Para produção, configurar SQLite ou outro backend

3. **Credenciais básicas** - Usando basic auth. Para produção, considerar OIDC

## Referências

- Branch: `vpn` no repo `infra-registry`
- Arquivos: `apps/vpn/`, `cluster/dev/namespaces/vpn.yml`
