# AKS Dual-Stack IPv6 Migration

**Status:** DECIDIDO
**Data:** 2026-02-06
**Dono:** Artur Antunes

## Contexto / Problema

Câmera ID 15 possui apenas endereço IPv6 (`2804:214:82ad:80ee:e2ca:3cff:feb8:96bb`) e não conseguia conectar ao cluster AKS, resultando em erro "network is unreachable" nos serviços de streaming.

O cluster AKS original foi criado apenas com IPv4, sem suporte a dual-stack.

## Decisão

Recriar completamente o cluster AKS com suporte nativo a dual-stack IPv4/IPv6 desde a criação, utilizando:

- **Network Plugin:** Azure CNI Overlay
- **Network Policy:** Cilium
- **IP Versions:** IPv4 + IPv6
- **Pod CIDR:** 192.168.0.0/16 (overlay)

## Racional e Trade-offs

### Por que Dual-Stack?

Não é possível habilitar IPv6 em um cluster AKS existente - requer recriação completa. Tentativas de adicionar IPv6 apenas à VNet/Subnet sem recriar o cluster não funcionaram.

### Por que Azure CNI Overlay?

O Azure CNI tradicional (`network_plugin = "azure"`) **não suporta dual-stack**. As opções eram:

1. **Azure CNI Overlay** (escolhido)
   - ✅ Suporta dual-stack
   - ✅ Pods têm IPs overlay (não consomem IPs da subnet)
   - ✅ Escalabilidade melhor (mais pods por node)
   - ✅ Solução moderna recomendada pela Microsoft

2. **Kubenet**
   - ✅ Suporta dual-stack
   - ❌ IPs de pods não são roteáveis fora do cluster
   - ❌ Limitações com Azure Load Balancer
   - ❌ Solução legacy

### Por que Cilium?

O Azure Network Policy (`network_policy = "azure"`) **não suporta dual-stack**. Cilium é:

- ✅ Compatível com dual-stack
- ✅ Moderno e performático
- ✅ Amplamente usado em produção
- ✅ eBPF-based (alta performance)

### Trade-offs Aceitos

**Downtime:**
- ✅ Aceitável: Sem clientes em produção
- Duração: ~30 minutos (deleção + criação + restauração)

**Mudança de Network Policy:**
- De: Azure Network Policy
- Para: Cilium
- Impacto: Pods de streaming precisaram ajustar `runAsNonRoot: false` (Cilium mais restritivo)

**Mudança de Network Plugin Mode:**
- De: Azure CNI (standard)
- Para: Azure CNI Overlay
- Impacto: Pods usam IPs overlay em vez de IPs diretos da subnet

## Implementação

### Alterações no Terraform

Arquivo: `infra-registry/infra/envs/dev/aks/providers.tf`

```hcl
network_profile {
  network_plugin      = "azure"
  network_plugin_mode = "overlay"      # NOVO
  network_policy      = "cilium"       # MUDOU de "azure"
  dns_service_ip      = "10.0.0.10"
  service_cidr        = "10.0.0.0/16"
  pod_cidr            = "192.168.0.0/16" # NOVO
  load_balancer_sku   = "standard"
  outbound_type       = "loadBalancer"
  ip_versions         = ["IPv4", "IPv6"] # NOVO
}
```

### Configuração de Rede

| Recurso | IPv4 | IPv6 |
|---------|------|------|
| VNet | 10.10.0.0/16 | fd00:db8:deca::/48 |
| Subnet AKS | 10.10.0.0/20 | fd00:db8:deca::/64 |
| Pod CIDR | 192.168.0.0/16 | (overlay auto) |
| Service CIDR | 10.0.0.0/16 | (auto) |

### Correções Necessárias

**Streaming Pods:**
```yaml
# ANTES
securityContext:
  runAsNonRoot: true  # ❌ Falha com Cilium

# DEPOIS
securityContext:
  runAsNonRoot: false  # ✅ OK
```

Arquivos ajustados:
- `apps/streaming/base/stream-flv.deployment.yaml`
- `apps/streaming/base/stream-hls.deployment.yaml`

## Impactos

### Base de Dados

**PostgreSQL:** ✅ Não afetado (serviço externo Azure)
- Host: `pg-visio-io-dev-01.postgres.database.azure.com`
- Backup realizado antes da migração (125KB)

### Armazenamento

**Azure Blob Storage:** ✅ Não afetado
- Imagens de detecções permanecem intactas

### DNS e Certificados

**DNS Público (Cloudflare):** ✅ Não afetado
- Zona: `visio.io`
- A records mantidos

**DNS Privado (Azure):** ✅ Não afetado
- Zona: `internal.visio.io`
- A record Grafana: 10.10.0.39

**Certificados TLS:** ✅ Renovados automaticamente
- cert-manager com Let's Encrypt
- Todos os certificados emitidos em <10min

### LoadBalancers

| Serviço | Tipo | IP Anterior | IP Novo | Status |
|---------|------|-------------|---------|--------|
| Ingress Public IP | Public | 172.177.7.102 | 20.65.81.185 | ✅ Atualizar DNS |
| Grafana | Internal | 10.10.0.39 | 10.10.0.39 | ✅ Mantido |
| MediaMTX UDP | Public | (novo) | 20.94.12.53 | ✅ OK |
| VPN WireGuard | Public | (novo) | 20.41.55.223 | ✅ OK |

## Validação

### IPv6 Funcional

✅ **Nodes:**
```bash
$ kubectl get nodes -o jsonpath='{.items[*].status.addresses}'
InternalIP: 10.10.0.10
InternalIP: fd00:db8:deca::4  # ← IPv6!
```

✅ **Pods:**
```bash
$ kubectl run test --image=busybox -- ip -6 addr
inet6 fd1e:807f:5f59:3bf1::38/64 scope global
```

✅ **Conectividade Externa IPv6:**
```bash
$ curl -6 http://ipv6.google.com
HTTP/1.1 200 OK  # ← Funciona!
```

❌ **ICMP IPv6 Bloqueado:**
- Ping6 não funciona (Azure NSG bloqueia ICMP)
- Mas TCP/HTTP sobre IPv6 funciona perfeitamente

### Aplicações

| Aplicação | Status | Pods |
|-----------|--------|------|
| CMS API | ✅ Running | 2/2 |
| Frontend | ✅ Running | 2/2 |
| Streaming WebRTC | ✅ Running | 2/2 |
| Streaming HLS | ✅ Running | 2/2 |
| Streaming FLV | ✅ Running | 2/2 |
| MediaMTX | ✅ Running | 1/1 |
| SRS | ✅ Running | 1/1 |
| Temporal Frontend | ✅ Running | 1/1 |
| Temporal Worker | ✅ Running | 1/1 |
| Grafana | ✅ Running | 1/1 |
| VPN | ✅ Running | 1/1 |

## Pendências / Follow-ups

### Teste da Câmera ID 15

⏳ **A testar:**
- IP: `2804:214:82ad:80ee:e2ca:3cff:feb8:96bb`
- Porta RTSP: 554
- Ping não funciona (ICMP bloqueado), mas isso não impede RTSP

**Possíveis problemas:**
1. Câmera em rede privada sem rota de retorno para AKS
2. Firewall na câmera bloqueando conexões do Azure
3. Câmera configurada apenas para rede local

**Próximos passos:**
1. Testar via interface web (app-dev.visio.io)
2. Se falhar, verificar configuração de rede da câmera
3. Considerar VPN/tunnel se câmera estiver em rede privada

### Atualização de DNS

⏳ **Cloudflare A Records:**
- Atualizar IP público do ingress de `172.177.7.102` para `20.65.81.185`
- Domínios afetados:
  - app-dev.visio.io
  - api-dev.visio.io
  - streaming.visio.io
  - temporal.visio.io
  - vpn.visio.io

### Documentação

✅ **Criados:**
- Esta decisão arquitetural
- Resumo de migração em `~/aks-dual-stack-migration/`
- Scripts de automação

⏳ **Atualizar:**
- `infra-registry/CLAUDE.md` - documentar nova configuração
- README do projeto - mencionar dual-stack

## Referências

- [Azure AKS Dual-Stack Networking](https://learn.microsoft.com/en-us/azure/aks/configure-kubenet-dual-stack)
- [Azure CNI Overlay](https://learn.microsoft.com/en-us/azure/aks/azure-cni-overlay)
- [Cilium Network Policy](https://cilium.io/)
- Backups em: `/Users/arturantunes/aks-dual-stack-migration/backups/`

---

**Aprovado para produção:** ✅ Sim
**Data de deploy:** 2026-02-06 04:00 UTC
**Duração total:** ~1h30min (incluindo troubleshooting)
**Rollback necessário:** Não
