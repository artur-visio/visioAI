# Hikvision ISUP – Guia Completo para Teste Local (Sem PDF)

Este documento descreve **de forma completa e prática** como funciona o ISUP (Platform Access) das câmeras Hikvision e como **testar localmente**, sem DDNS, sem Hik-Connect, sem SDK e sem implementar o protocolo completo.

Este conteúdo substitui a necessidade de acesso ao PDF oficial da Hikvision.

---

## 1. O que é ISUP (segundo a Hikvision)

ISUP é um mecanismo de **acesso à plataforma** onde a câmera:

- Inicia uma **conexão TCP de saída**
- Registra sua identidade em um servidor definido pelo usuário
- Mantém uma **sessão viva** com heartbeat periódico
- Reconecta automaticamente em caso de falha

Características importantes:

- ❌ NÃO é HTTP
- ❌ NÃO é REST
- ❌ NÃO usa webhook
- ❌ NÃO depende de DDNS
- ✅ É TCP puro (socket)
- ✅ É iniciado pela câmera (device → platform)
- ✅ Funciona em NAT e CGNAT (4G)

Na interface da câmera, ISUP aparece como **Platform Access**.

---

## 2. Para que serve ISUP na prática

ISUP resolve os seguintes problemas:

- Descobrir presença da câmera sem IP público fixo
- Eliminar dependência de DDNS (DynDNS / No-IP)
- Operar em redes 4G / CGNAT
- Saber se a câmera está online ou offline
- Observar o IP público usado (indiretamente, via source IP da conexão TCP)

ISUP **não serve** para:
- Expor HTTP ou RTSP diretamente
- Substituir streaming ou APIs
- Baixar vídeo

---

## 3. Relação entre DDNS, ISUP e outros mecanismos

| Função | Mecanismo |
|------|-----------|
| Resolver nome → IP | DDNS |
| Presença / online | ISUP |
| Acesso remoto cloud | Hik-Connect (P2P) |
| Eventos | EventStream (via ISAPI ou plataforma) |

ISUP **funciona independentemente de DDNS**.

---

## 4. Onde configurar ISUP na câmera (Web UI)

Caminho típico na interface Hikvision:

Configuration  
→ Network  
→ Advanced Settings  
→ Platform Access (ou ISUP)

---

## 5. Campos de configuração ISUP (importantes)

Preencher na câmera:

| Campo | Descrição |
|-----|----------|
| Enable | Ativar ISUP |
| Server Type | ISUP |
| Server Address | IP ou domínio do servidor |
| Port | Porta TCP (ex: 7660) |
| Device ID | Identificador único da câmera |
| Password / Key | Chave compartilhada |
| Protocol | TCP |
| Register Interval | 30s / 60s |

O `Device ID` é enviado pela câmera durante o registro.

---

## 6. Como funciona o fluxo ISUP

Fluxo real:

1. A câmera abre uma conexão TCP para o servidor
2. Envia um pacote binário de registro (contendo Device ID)
3. Periodicamente envia pacotes de keepalive
4. Se a conexão cair, tenta reconectar automaticamente

Todo o tráfego é **binário**, não legível.

---

## 7. Teste local ISUP – abordagem correta

### Importante
Ferramentas HTTP como webhook.site **NÃO funcionam** para ISUP.

ISUP exige um **listener TCP real**.

---

## 8. Teste local – Método mais simples (netcat)

### Passo 1 – Abrir listener TCP

No computador local (macOS / Linux / WSL):

```bash
nc -lv 7660