# Criação do servidor DDNS (heartbeat) para atualizar ip das cameras - M

ID: 86aef4jc2  
Status: to do  
Assignee(s): —  
Prioridade: —  
List: Sprint 4 (1/12 - 1/25)  

Datas:
- Criado: 2026-01-12
- Atualizado: 2026-01-13
- Due: —

## Descrição
Objetivo
Criar um endpoint compatível com DynDNS/Hikvision para que câmeras façam check-in periódico e a plataforma:

Atualize IP atual e last_seen_at da câmera
Registre tentativas desconhecidas (nohost/badauth/badip) para diagnóstico
Gere logs estruturados para observabilidade e suporte
Importante: não atualizar DNS. É “DDNS-like” só para heartbeat/IP.
 
Input disponível na câmera (Hikvision)
Server Address (ex.: ddns.visio.io)
Port (80/443)
Domain (campo texto obrigatório) → usaremos como identificador
Username / Password (Basic Auth)

Convenção de identificação (produto)
Campo Domain na câmera = <serial_number> (mesmo campo usado no nome do dispositivo)
Username = visio
Password = token forte gerado na plataforma (armazenar hash) um unico para todas as cameras

Saídas / efeitos
Atualiza na tabela cameras:
last_seen_at
last_seen_ip4
last_seen_ip6
Log estruturado em toda requisição


Critérios de aceite (DoD)
Câmera cadastrada + credenciais corretas:
endpoint responde texto puro good <ip> na primeira vez
responde nochg <ip> em chamadas repetidas com mesmo IP
atualiza cameras.last_seen_at sempre
Credenciais inválidas:
responde badauth
cria o log de unknown reason=BADAUTH
Domain não encontrado:
responde nohost
cria o log de unknown reason=NOHOST
IP inválido:
responde badip
registra reason=BADIP
Rate limit básico ativo
Teste automatizado cobrindo os cenários acima (precisa nesse momento?)   


Anexo

## Custom Fields
- —
