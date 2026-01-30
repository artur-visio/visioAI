# Decisão: ISUP para tracking de câmeras Hikvision

**Status:** DECIDIDO
**Data:** 2026-01-29
**Dono:** Artur Antunes
**Contexto:** Câmeras Hikvision precisam reportar presença e IP automaticamente sem configuração manual

---

## Problema

Câmeras IP Hikvision em redes dinâmicas (DHCP) precisam:
- Reportar seu IP atual automaticamente
- Indicar status de "online/offline"
- Funcionar sem configuração manual por câmera

**Alternativas consideradas:**
1. **DDNS (Dynamic DNS)** - usado por Hikvision e No-IP
2. **ISUP (Platform Access)** - protocolo proprietário Hikvision TCP/7660

---

## Decisão

Implementar gateway **ISUP (Platform Access)** na plataforma CMS.

**Arquitetura:**
- Gateway TCP na porta 7660 (LoadBalancer público no AKS)
- Parser binário para extrair Serial Number dos pacotes
- Atualização automática de `last_seen_at` e `last_seen_ip4/ip6` no banco
- Identificação de câmeras por Serial Number único

---

## Racional

### Por que ISUP vs DDNS?

| Critério | ISUP | DDNS |
|----------|------|------|
| Configuração | ✅ Automática (só IP:porta) | ❌ Manual (hostname único por câmera) |
| Tracking presença | ✅ Heartbeat a cada ~6s | ❌ Só atualiza quando IP muda |
| Escalabilidade | ✅ Plug-and-play | ⚠️ Requer gestão de hostnames |
| Complexidade | ⚠️ Protocolo proprietário | ✅ Protocolo padrão |
| Vendor lock-in | ❌ Hikvision only | ✅ Multi-vendor |

**Decisão:** ISUP para Hikvision (maioria das câmeras) + DDNS como fallback para outras marcas

---

## Implementação

### Componentes
- **Backend:** `cms-api/src/modules/isup/` (NestJS + TCP net module)
- **Infra:** LoadBalancer TCP público porta 7660 (AKS)
- **Database:** Campos `last_seen_at`, `last_seen_ip4`, `last_seen_ip6` em `mvp_cameras`

### Segurança
- ✅ Identificação por Serial Number único (extraído do pacote)
- ✅ Validação: câmera precisa estar cadastrada no banco
- ⚠️ Network whitelist recomendado (firewall/VPN)
- ❌ Key ISUP não é transmitida no protocolo (descoberta empírica)

### Descoberta crítica
Durante implementação, descobrimos que:
- **Key ISUP configurada na câmera NÃO é transmitida nos pacotes**
- Validação por key não é viável
- Segurança depende de: serial number + network whitelist + validação no banco

---

## Trade-offs

### ✅ Vantagens
- Plug-and-play para câmeras Hikvision
- Tracking automático de presença (heartbeat)
- Sem configuração manual por câmera
- Descoberta automática de IP

### ❌ Limitações
- Protocolo proprietário não documentado oficialmente
- Limitado a Hikvision (Dahua/Intelbras usam protocolos diferentes)
- Parsing binário empírico (reverse engineering)
- Não transmite imagens ou outros dados (só presença + IP)

---

## Impactos

### Database
- Campos já existentes: `last_seen_at`, `last_seen_ip4`, `last_seen_ip6`
- Nenhuma migração necessária

### API
- Novo módulo `IsupModule` (não expõe endpoints REST)
- Gateway TCP independente na porta 7660

### Infraestrutura
- Novo LoadBalancer público porta 7660
- Env vars: `ISUP_PORT`, `ISUP_KEY`

### UX
- Usuário não interage diretamente
- Benefício: status "online" automático, IP sempre atualizado

### Operação
- Monitorar conexões ISUP via logs
- Alertar se câmeras cadastradas param de reportar

---

## Pendências / Follow-ups

- [ ] Monitoramento: alertas para câmeras que param de conectar (>5min sem heartbeat)
- [ ] Documentar ACK response correto (atual é empírico: `0x11 0x7a`)
- [ ] Avaliar suporte a outros fabricantes (Dahua, Intelbras) no futuro
- [ ] Considerar rate limiting por IP se houver abuso

---

## Referências

- **Implementação:** `repos/plataforma/cms-api/src/modules/isup/`
- **Infra:** `repos/infra-registry/apps/cms-api/base/service-isup.yaml`
- **Documentação técnica:** `tech/isup-gateway.md`
- **Protocolo oficial:** Hikvision não documenta publicamente o protocolo binário ISUP
