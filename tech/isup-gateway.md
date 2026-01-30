# ISUP Gateway - Documentação Técnica Completa

**Última atualização:** 2026-01-29
**Status:** Produção

---

## Índice

1. [Visão Geral](#visão-geral)
2. [Arquitetura](#arquitetura)
3. [Protocolo Binário](#protocolo-binário)
4. [Implementação](#implementação)
5. [Troubleshooting](#troubleshooting)
6. [Quando Usar ISUP](#quando-usar-isup)

---

## Visão Geral

ISUP (Platform Access) é um protocolo proprietário Hikvision para câmeras reportarem presença e IP para plataformas de gestão.

**Características:**
- Protocolo TCP binário na porta 7660
- Heartbeat a cada ~6 segundos
- Não mantém conexão persistente (conecta, envia, desconecta)
- Transmite: Serial Number, Firmware Version, Device ID
- **NÃO transmite:** Imagens, Key ISUP configurada na câmera

---

## Arquitetura

```
[Câmera Hikvision] --TCP 7660--> [LoadBalancer AKS] ---> [cms-api ISUP Gateway]
                                                                    |
                                                                    v
                                                            [PostgreSQL]
                                                        UPDATE last_seen_at,
                                                               last_seen_ip4
```

### Componentes

| Componente | Localização | Função |
|------------|-------------|--------|
| IsupGateway | `cms-api/src/modules/isup/isup.gateway.ts` | Servidor TCP, recebe conexões |
| IsupService | `cms-api/src/modules/isup/isup.service.ts` | Lógica de negócio, atualiza DB |
| IsupParserUtil | `cms-api/src/modules/isup/utils/isup-parser.util.ts` | Parse de pacotes binários |
| LoadBalancer | `infra-registry/apps/cms-api/base/service-isup.yaml` | Expõe porta 7660 publicamente |

---

## Protocolo Binário

### Formato TLV (Type-Length-Value)

#### Heartbeat (2 bytes)
```
Offset  Bytes       Descrição
0x00    10 74       Heartbeat packet
```

#### Registration (102-116 bytes)

```
Offset  Bytes       Descrição
------  ----------  ---------------------------------------------
0x00    01 01 00    Header padrão (pode ter prefixo 10 66 antes)
0x03    09          Length do Serial Number
0x04    XX...       Serial Number (ex: "GA7462504")
0x0D    14          Length do Firmware
0x0E    XX...       Firmware Version (ex: "G20250527AIGA7462504")
...     00 01       Separator
...     09          Length do Device ID
...     XX...       Device ID
...     XX...       Hash/Checksum (32+ bytes, propósito desconhecido)
```

**Exemplo real (câmera GA7462504):**
```
01 01 00 09 47 41 37 34 36 32 35 30 34 14 47 32 30 32 35 30 35 32 37 41 49 47 41 37 34 36 32 35 30 34 00 01 09 47 41 37 34 36 32 35 30 34 07 ab c4 6e ba 10 43 a3 dd 78 2d f7 24 7b 75 43 24 32
```

### Descobertas Importantes

#### ❌ Key ISUP NÃO é transmitida
Durante testes empíricos, configuramos a key "visioisup123" na câmera e analisamos hex dumps completos dos pacotes. **A key não aparece em nenhum lugar do payload binário.**

**Implicação:** Validação por key ISUP não é viável. Segurança depende de:
- Serial Number único
- Validação no banco (câmera cadastrada)
- Network whitelist (firewall/VPN)

#### ✅ Serial Number é o campo mais confiável
Testado em múltiplos modelos:
- GA7462504 (pacotes 116 bytes)
- L55926782 (pacotes 102-104 bytes)

Serial sempre aparece como primeiro campo TLV após header `01 01 00`.

#### 📊 Comportamento de Reconexão
- Câmera conecta a cada **~6 segundos**
- Envia 2 pacotes: heartbeat (2 bytes) + registration (102-116 bytes)
- Fecha conexão imediatamente após receber ACK
- **NÃO é um túnel persistente**

#### ⚠️ Formatos Diferentes entre Modelos
Câmeras diferentes enviam pacotes de tamanhos variados:
- 102 bytes (DS-2CD3066G2-IS com prefixo `10 66`)
- 104 bytes (variação do mesmo modelo)
- 116 bytes (câmera facial GA7462504)

Parser atual busca header `01 01 00` dinamicamente para suportar prefixos variáveis.

---

## Implementação

### Configuração de Câmera Hikvision

**1. Acessar interface web da câmera**

**2. Configuration → Network → Platform Access**
```
Enable Platform Access: ✅ Checked
Platform Access Mode: ISUP
Server Address: <seu-ip-ou-dominio>
Port: 7660
Device ID: (opcional, autopreenchido)
ISUP Key: visioisup123
```

**3. Salvar e observar status:**
- Status: Online (verde) = sucesso
- Status: Offline (vermelho) = verificar troubleshooting

### Configuração do Backend (cms-api)

**Environment Variables:**
```bash
ISUP_PORT=7660
ISUP_KEY=visioisup123  # Não validado, mantido para compatibilidade futura
```

**Database:**
```sql
-- Câmera precisa estar cadastrada
INSERT INTO mvp_cameras (
  organization_id,
  spot_id,
  serial_number,  -- CRÍTICO: precisa bater com serial do pacote
  name,
  status,
  algorithm,
  manufacturer
) VALUES (
  'sc-demo',
  4,
  'GA7462504',  -- Serial extraído do pacote ISUP
  'Camera Hikvision Facial',
  'active',
  'facial',
  'Hikvision'
);
```

**Verificar conexão:**
```bash
# Ver se câmera conectou
SELECT serial_number, last_seen_at, last_seen_ip4
FROM mvp_cameras
WHERE serial_number = 'GA7462504';
```

### Configuração de Infraestrutura (AKS)

**LoadBalancer (service-isup.yaml):**
```yaml
apiVersion: v1
kind: Service
metadata:
  name: cms-api-isup
  namespace: cms
  labels:
    app: cms-api
    app.kubernetes.io/name: cms-api
    app.kubernetes.io/component: isup
spec:
  type: LoadBalancer
  selector:
    app: cms-api
  ports:
    - name: isup-tcp
      protocol: TCP
      port: 7660
      targetPort: 7660
```

**Deployment (base/deployment.yml):**
```yaml
containers:
  - name: cms-api
    ports:
      - containerPort: 3000
        name: http
      - containerPort: 7660
        name: isup
        protocol: TCP
```

**Deploy:**
```bash
cd repos/infra-registry
kubectl apply -k apps/cms-api/dev
```

**Verificar LoadBalancer IP:**
```bash
kubectl get svc -n cms cms-api-isup
# Usar EXTERNAL-IP para configurar na câmera
```

---

## Troubleshooting

### 1. Câmera não conecta (Status: Offline)

#### Verificar conectividade de rede
```bash
# Na máquina da câmera ou gateway
telnet <servidor-ip> 7660

# Ou capturar pacotes
sudo tcpdump -i any port 7660 -X
```

#### Verificar se servidor está ouvindo
```bash
# Localmente no servidor
lsof -i:7660

# Deve mostrar:
# node    12345 user   15u  IPv4  TCP *:7660 (LISTEN)
```

#### Verificar logs do backend
```bash
# Desenvolvimento
tail -f /tmp/cms-api.log | grep isup_

# Produção (Kubernetes)
kubectl logs -n cms -l app=cms-api --tail=100 | grep isup_
```

**Eventos esperados:**
```
[IsupGateway] isup_connection_received - clientIp: 192.168.1.64
[IsupGateway] isup_data_received - size: 2, hex: '1074'
[IsupService] isup_heartbeat
[IsupGateway] isup_data_received - size: 116, hex: '0101...'
[IsupParserUtil] isup_packet_parsed - serialNumber: 'GA7462504'
[IsupService] isup_registration_success - cameraId: 5
```

#### Verificar firewall
```bash
# Azure NSG (Network Security Group)
# Verificar se porta 7660 TCP está aberta

# AKS LoadBalancer
kubectl describe svc -n cms cms-api-isup
# Verificar se tem EXTERNAL-IP atribuído
```

---

### 2. Parser não extrai serial corretamente

#### Capturar hex dump
```bash
# Método 1: Logs do backend (adicionar debug)
grep "isup_data_received" /var/log/cms-api.log | tail -1

# Método 2: tcpdump + Wireshark
tcpdump -i any port 7660 -w /tmp/isup.pcap
# Abrir no Wireshark: TCP stream → Follow

# Método 3: netcat + xxd
nc -l 7660 | xxd
```

#### Analisar pacote manualmente
```bash
# Exemplo de hex dump:
echo "0101000947413734363235303414473230323530353237414947413734363235303400010947413734363235303407abc46eba1043a3dd782df7247b75432432" | xxd -r -p | xxd -g 1

# Procurar por:
# - Header: 01 01 00 (offset variável)
# - Primeira string ASCII após header = Serial Number
```

#### Debug do parser
Adicionar logs temporários em `isup-parser.util.ts`:
```typescript
this.logger.debug({
  event: 'isup_parse_debug',
  headerOffset,
  serialLength: buffer[offset],
  serialBytes: buffer.slice(offset + 1, offset + 1 + buffer[offset]).toString('hex'),
  serialString: buffer.slice(offset + 1, offset + 1 + buffer[offset]).toString('utf8'),
});
```

---

### 3. Câmera conecta mas não atualiza banco

#### Verificar se câmera está cadastrada
```sql
SELECT id, serial_number, organization_id, spot_id
FROM mvp_cameras
WHERE serial_number = 'SEU_SERIAL';

-- Se retornar vazio, câmera não está cadastrada
```

**Erro esperado no log:**
```
[IsupService] isup_registration_error
  error: "Camera with serial number GA7462504 not found"
```

**Solução:** Cadastrar câmera com serial correto.

#### Verificar permissões de banco
```bash
# Testar UPDATE manual
UPDATE mvp_cameras
SET last_seen_at = NOW(), last_seen_ip4 = '192.168.1.64'
WHERE serial_number = 'GA7462504';

-- Se falhar, verificar permissões do usuário pgadmin
```

---

### 4. Múltiplas câmeras conectam mas só uma atualiza

**Causa comum:** Serials duplicados no banco.

```sql
-- Verificar duplicatas
SELECT serial_number, COUNT(*)
FROM mvp_cameras
GROUP BY serial_number
HAVING COUNT(*) > 1;
```

**Solução:**
- Garantir constraint UNIQUE em `serial_number` por organização
- Atualizar serials duplicados

---

### 5. Performance degradada (muitas câmeras)

**Sintomas:**
- Latência alta no UPDATE
- Conexões ISUP acumulando (timeout)

**Debug:**
```sql
-- Ver queries lentas
SELECT pid, query, state, now() - query_start as duration
FROM pg_stat_activity
WHERE query LIKE '%mvp_cameras%'
ORDER BY duration DESC;
```

**Soluções:**
- Adicionar índice em `serial_number`:
  ```sql
  CREATE INDEX idx_cameras_serial ON mvp_cameras(serial_number);
  ```
- Aumentar replicas do deployment (horizontal scaling)
- Connection pooling no TypeORM

---

### 6. ACK Response incorreto (experimental)

**Situação atual:** ACK response `0x11 0x7a` é **empírico** (não documentado oficialmente).

Se câmera mostrar "Offline" apesar de conectar:
1. Capturar pacotes de servidor Hikvision oficial (se tiver acesso)
2. Comparar ACK response oficial vs nosso
3. Atualizar `isup-parser.util.ts`:
   ```typescript
   static createAckResponse(): Buffer {
     return Buffer.from([0x11, 0x7a]); // Ajustar se necessário
   }
   ```

---

## Quando Usar ISUP

### ✅ Casos de Uso Apropriados

- **Descoberta automática de IP** de câmeras Hikvision
- **Heartbeat/presença** (saber se câmera está online)
- **Substituir DDNS** para câmeras Hikvision em redes dinâmicas
- **Tracking de câmeras** em instalações com DHCP
- **Plug-and-play** para novas câmeras (só precisa configurar IP:porta)

### ❌ Limitações

- **Não transmite imagens** ou stream de vídeo
- **Não valida Key ISUP** (campo configurado na câmera não é enviado no protocolo)
- **Protocolo proprietário** não documentado oficialmente (reverse engineering)
- **Suporte limitado a Hikvision** - Dahua, Intelbras, etc. usam protocolos diferentes
- **Sem autenticação forte** - depende de network whitelist

### 🆚 ISUP vs DDNS

| Critério | ISUP | DDNS |
|----------|------|------|
| **Configuração** | IP:porta (mesmo para todas) | Hostname único por câmera |
| **Presença** | Heartbeat a cada ~6s | Só atualiza quando IP muda |
| **Escalabilidade** | ✅ Plug-and-play | ⚠️ Gestão de hostnames |
| **Multi-vendor** | ❌ Hikvision only | ✅ Padrão universal |
| **Complexidade** | ⚠️ Protocolo binário | ✅ HTTP/DNS padrão |

**Recomendação:** Use ISUP para Hikvision + DDNS como fallback para outras marcas.

---

## Referências

- **Decisão arquitetural:** `decisions/2026-01-29-isup-camera-tracking.md`
- **Código:** `repos/plataforma/cms-api/src/modules/isup/`
- **Infra:** `repos/infra-registry/apps/cms-api/base/service-isup.yaml`
- **Protocolo oficial:** Hikvision não documenta publicamente o protocolo binário ISUP
- **Testes empíricos:** Sessão 2026-01-28/29 com câmeras GA7462504 (116 bytes) e L55926782 (102 bytes)
