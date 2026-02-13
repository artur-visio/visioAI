# Criação do servidor DDNS (heartbeat) para atualizar ip das cameras - M

ID: 86aef4jc2
Custom ID: TECH-141
Status: complete
Assignee(s): Felipe Nogueira Gaudio
Prioridade: —
List: Sprint 5 (1/26 - 2/8)

Datas:
- Criado: 2026-01-12
- Atualizado: 2026-01-30
- Due: —

## Descrição
## **Objetivo**
Criar um endpoint **compatível com DynDNS/Hikvision** para que câmeras façam check-in periódico e a plataforma:

1. Atualize **IP atual** e last\_seen\_at da câmera
2. Registre **tentativas desconhecidas** (nohost/badauth/badip) para diagnóstico
3. Gere **logs estruturados** para observabilidade e suporte
> Importante: não atualizar DNS. É “DDNS-like” só para heartbeat/IP.

### **Input disponível na câmera (Hikvision)**
*   Server Address (ex.: [ddns.visio.io](http://ddns.visio.io))
*   Port (80/443)
*   Domain (campo texto obrigatório) → usaremos como **identificador**
*   Username / Password (Basic Auth)

## **Convenção de identificação (produto)**
*   Campo **Domain** na câmera = <serial\_number> (mesmo campo usado no nome do dispositivo)
*   Username = visio
*   Password = token forte gerado na plataforma (armazenar **hash**) um unico para todas as cameras

* * *
## **Saídas / efeitos**
*   Atualiza na tabela cameras:
    *   last\_seen\_at
    *   last\_seen\_ip4
    *   last\_seen\_ip6
*   Log estruturado em **toda requisição**

## **Critérios de aceite (DoD)**
1. Câmera cadastrada + credenciais corretas:
    *   endpoint responde **texto puro** good <ip> na primeira vez
    *   responde nochg <ip> em chamadas repetidas com mesmo IP
    *   atualiza cameras.last\_seen\_at sempre
2. Credenciais inválidas:
    *   responde badauth
    *   cria o log de unknown reason=BADAUTH
3. Domain não encontrado:
    *   responde nohost
    *   cria o log de unknown reason=NOHOST
4. IP inválido:
    *   responde badip
    *   registra reason=BADIP
5. Rate limit básico ativo
6. Teste automatizado cobrindo os cenários acima (precisa nesse momento?)

### Anexo
![](https://t90132794332.p.clickup-attachments.com/t90132794332/01f71655-6ddf-4d41-b779-1e6f116eb99b/image.png)

## Custom Fields
- Versão: 0
- Módulo/Épico: 2
