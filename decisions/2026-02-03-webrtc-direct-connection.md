# Decisão: WebRTC Conexão Direta sem TURN Server

**Status:** DECIDIDO
**Data:** 2026-02-03
**Dono:** Artur Antunes

## Contexto / Problema

Atualmente, conexões WebRTC para streaming de câmeras **requerem TURN server** (Coturn) para funcionar, mesmo quando o cliente tem conectividade direta ao LoadBalancer público do MediaMTX.

### Diagnóstico da Causa Raiz

O problema **NÃO** é configuração incorreta do MediaMTX ou do backend. A causa raiz é:

**Azure NSG (Network Security Group) está bloqueando tráfego UDP na porta 8189 do MediaMTX.**

#### Por que TURN funciona mas conexão direta não?

- ✅ **TURN (Coturn)**: Usa portas UDP 3478 e 49152-65535 que **estão permitidas no NSG**
- ❌ **MediaMTX UDP direto**: Usa porta UDP 8189 que **NÃO está no NSG**

O tráfego é bloqueado no nível de rede do Azure antes mesmo de chegar ao Kubernetes.

#### Evidências

1. **MediaMTX está configurado corretamente:**
   - `webrtcLocalUDPAddress: :8189` (porta única para todos os streams)
   - `webrtcAdditionalHosts: [20.12.82.254]` (IP público correto)
   - LoadBalancer Service com `externalTrafficPolicy: Local`

2. **Backend (stream-webrtc) funciona com TURN:**
   - ICE servers incluem TURN: `turn:20.75.115.81:3478`
   - Conexão estabelece via relay quando UDP 8189 falha

3. **NSG tem regras apenas para TURN, não para MediaMTX:**
   ```hcl
   # Existe:
   Allow-TURN-UDP (priority 180): UDP 3478
   Allow-TURN-Relay-UDP (priority 190): UDP 49152-65535

   # Falta:
   Allow-MediaMTX-UDP: UDP 8189 ❌
   ```

## Decisão

**Adicionar regra NSG para permitir UDP 8189 e remover dependência de TURN server.**

### Mudanças Implementadas

#### 1. Terraform - NSG Rule (Priority 200)

**Arquivo:** `infra-registry/infra/envs/dev/aks/providers.tf`

Adicionada regra após linha 165:
```hcl
security_rule {
  name                       = "Allow-MediaMTX-UDP"
  priority                   = 200
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Udp"
  source_port_range          = "*"
  destination_port_range     = "8189"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}
```

#### 2. Kubernetes Network Policy

**Arquivo:** `streaming/deploy/k8s/networkpolicy.yaml`

Adicionada policy para permitir UDP externo no MediaMTX:
```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-mediamtx-webrtc-udp
  namespace: streaming
spec:
  podSelector:
    matchLabels:
      app: mediamtx
  policyTypes:
    - Ingress
  ingress:
    - ports:
        - protocol: UDP
          port: 8189
```

#### 3. Remoção de TURN do Backend (Fase de Teste)

**Arquivo:** `streaming/deploy/k8s/configmap.yaml`

```yaml
# Antes (com TURN):
WEBRTC_ICE_SERVERS_JSON: '[{"urls":["stun:stun.l.google.com:19302"]},{"urls":["turn:20.75.115.81:3478"],"username":"visio-turn-user","credential":"8kJ2mP9xR4nQ7wL3vT6yH5bN1cF0dG"}]'

# Depois (apenas STUN):
WEBRTC_ICE_SERVERS_JSON: '[{"urls":["stun:stun.l.google.com:19302"]}]'
```

## Racional e Trade-offs

### Por que isso deve funcionar?

1. **TURN funciona hoje** → prova que o problema não é NAT/firewall do cliente
2. **TURN funciona** porque suas portas (3478, 49152-65535) estão no NSG
3. **MediaMTX direto** só precisa da mesma permissão NSG para porta 8189
4. **LoadBalancer já funciona** (externalTrafficPolicy: Local, IP público correto)
5. **MediaMTX já anuncia IP correto** via webrtcAdditionalHosts

**A única peça faltando é a regra de firewall no Azure.**

### Benefícios (sem TURN)

- ✅ **Conexão direta** (menor latência, melhor qualidade)
- ✅ **Menos custo** (sem relay de dados através do Coturn)
- ✅ **Mais eficiente** (sem consumo de CPU/rede do TURN)
- ✅ **Escalabilidade** (conexões P2P não sobrecarregam servidor)

### Trade-offs (com TURN atual)

- ❌ **Mais latência** (hop extra através do relay)
- ❌ **Mais banda** (todo tráfego passa pelo servidor)
- ❌ **Mais custo** (CPU/rede do Coturn)

### Quando TURN ainda seria necessário?

TURN é útil em cenários raros:
- Redes corporativas com firewall muito restritivo (bloqueiam UDP externo)
- NAT simétrico agressivo (raro com IP público fixo)
- Algumas redes 4G/5G com NAT carrier-grade

**Estratégia de fallback:** Se alguns clientes tiverem problemas, podemos:
1. Manter TURN como **opcional** no backend
2. Detectar falha de conexão direta
3. Retry com TURN se UDP direto falhar após timeout
4. Isso dá o melhor dos dois mundos (eficiência + confiabilidade)

## Impactos

### Infraestrutura (Azure)
- ✅ Nova regra NSG (priority 200)
- ⚠️ Requer `terraform apply` em produção

### Kubernetes
- ✅ Nova Network Policy (não breaking)
- ✅ Remoção de TURN do configmap (testável com rollback)

### Aplicação
- ✅ Nenhuma mudança no código
- ✅ Apenas configuração (ICE servers)

### Operação
- ⚠️ Monitorar taxa de sucesso de conexão WebRTC após deploy
- ⚠️ Verificar logs de "deadline exceeded" (devem desaparecer)
- ⚠️ Se houver regressão, rollback é adicionar TURN de volta ao configmap

## Pendências / Follow-ups

### Fase de Teste (obrigatória)
1. ✅ Aplicar Terraform (NSG rule)
2. ✅ Aplicar Network Policy
3. ⏳ Verificar IP do LoadBalancer (atualizar se diferente)
4. ⏳ Remover TURN do configmap
5. ⏳ Testar conexão **sem VPN** de múltiplos locais
6. ⏳ Verificar ICE candidates no browser (deve mostrar srflx com IP público)
7. ⏳ Monitorar logs de erro por 24-48h

### Após validação bem-sucedida
1. Deletar recursos Coturn (opcional):
   - `streaming/deploy/k8s/coturn.configmap.yaml`
   - `streaming/deploy/k8s/coturn.deployment.yaml`
   - `streaming/deploy/k8s/coturn.service.yaml`

2. Remover regras NSG do TURN (opcional):
   - Priority 170: Allow-TURN-TCP
   - Priority 180: Allow-TURN-UDP
   - Priority 190: Allow-TURN-Relay-UDP

3. Atualizar documentação:
   - Remover menções a Coturn da arquitetura
   - Atualizar diagramas de rede
   - Documentar processo de troubleshooting WebRTC

### Se houver problemas
1. Rollback imediato:
   ```bash
   mv streaming/deploy/k8s/configmap.yaml.backup streaming/deploy/k8s/configmap.yaml
   kubectl apply -f streaming/deploy/k8s/configmap.yaml
   kubectl rollout restart deployment/stream-webrtc -n streaming
   ```

2. Investigar:
   - Logs do MediaMTX
   - Logs do stream-webrtc
   - ICE candidates no browser
   - Teste de conectividade UDP: `nc -u -v 20.12.82.254 8189`

## Arquivos Modificados

### Terraform
- `infra-registry/infra/envs/dev/aks/providers.tf` (linha 167-175)

### Kubernetes
- `streaming/deploy/k8s/networkpolicy.yaml` (nova policy no final)
- `streaming/deploy/k8s/configmap.yaml` (linha 17 - ICE servers)

### Scripts
- `deploy-webrtc-fix.sh` (automação de deployment)

## Comandos de Verificação

### Verificar NSG no Azure
```bash
az network nsg rule list \
  --resource-group rg-visio-io-dev-01 \
  --nsg-name nsg-aks-dev \
  --query "[?destinationPortRange=='8189']"
```

### Testar conectividade UDP
```bash
nc -u -v 20.12.82.254 8189
```

### Verificar ICE candidates no browser
```javascript
// DevTools Console
pc.onicecandidate = (e) => {
  if (e.candidate) {
    console.log('ICE candidate:', e.candidate.candidate);
  }
};

// Deve aparecer:
// candidate:... typ srflx ... 20.12.82.254 rport 8189
```

### Verificar LoadBalancer IP
```bash
kubectl get svc mediamtx-udp -n streaming -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

## Referências

- **Plano original:** `/Users/arturantunes/.claude/projects/-Users-arturantunes-Desktop-trabalho-visioAI/8d4cdff5-342c-405b-956c-a757b0c373a9.jsonl`
- **Documentação MediaMTX:** https://github.com/bluenviron/mediamtx
- **WebRTC ICE RFC:** https://datatracker.ietf.org/doc/html/rfc8445
- **Azure NSG docs:** https://learn.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview
