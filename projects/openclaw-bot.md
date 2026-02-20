# OpenClaw — Bot pessoal do Artur

> **Escopo**: Projeto pessoal/teste. Não faz parte da VISIO.

## Objetivo
Bot de AI pessoal via WhatsApp usando OpenClaw, rodando em VM na AWS.

## Infraestrutura

| Item | Detalhe |
|------|---------|
| **VM** | EC2 `t3.small`, Ubuntu 24.04, `us-east-2` |
| **IP** | `13.59.25.91` |
| **Instance ID** | `i-0eaf9dd278d0a8266` |
| **Acesso SSH** | `ssh -i ~/Desktop/trabalho/arturKP ubuntu@13.59.25.91` |
| **AWS Account** | Pessoal (ID 715760504966), subscription Visio Dev |
| **Custo** | ~$15/mês (EC2) + uso API Anthropic (pay-per-use) |

## OpenClaw

| Item | Detalhe |
|------|---------|
| **Versão** | v2026.2.17 |
| **Modelo** | `anthropic/claude-sonnet-4-20250514` |
| **Canal** | WhatsApp (+5547936180748) |
| **Número pareado** | +554796274240 |
| **Plugins ativos** | whatsapp, telegram |
| **Skills prontas** | healthcheck, skill-creator, tmux, weather |

## Configuração

- **API key**: `~/.openclaw/.env` (variável `ANTHROPIC_API_KEY`)
- **Config geral**: `~/.openclaw/openclaw.json`
- **Auth profiles**: `~/.openclaw/agents/main/agent/auth-profiles.json`
- **Logs**: `/tmp/openclaw/openclaw-YYYY-MM-DD.log`

## Daemon (serviço 24/7)

```bash
# Status
systemctl --user status openclaw-gateway.service

# Start/Stop/Restart
systemctl --user start openclaw-gateway.service
systemctl --user stop openclaw-gateway.service
systemctl --user restart openclaw-gateway.service

# Logs em tempo real
journalctl --user -u openclaw-gateway.service -f
```

## AWS — Recursos criados

- **Key pair**: `clawdbot-key` (us-east-2) — importada de `~/.ssh/id_rsa.pub`
- **Security group**: `clawdbot-sg` (sg-0117b16e6a8897e74) — porta 22 aberta
- **SSH key adicional**: `~/Desktop/trabalho/arturKP` adicionada ao `authorized_keys`

## Status atual
- Data: 2026-02-18
- Bot funcionando via WhatsApp
- Daemon ativo e habilitado
- Skills avançadas (github, email, etc.) ainda não configuradas

## Próximas ações
1. Rotacionar AWS Access Key e API key Anthropic (expostas no chat)
2. Explorar e instalar mais skills (github, coding-agent, summarize)
3. Configurar Telegram como canal adicional
