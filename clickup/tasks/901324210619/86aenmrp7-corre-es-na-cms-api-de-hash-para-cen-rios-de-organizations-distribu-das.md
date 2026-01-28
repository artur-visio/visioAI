# Correções na cms-api de hash para cenários de organizations distribuídas

ID: 86aenmrp7
Custom ID: TECH-173
Status: complete
Assignee(s): Esau Bandeira
Prioridade: —
List: Sprint 4 (1/12 - 1/25)

Datas:
- Criado: 2026-01-20
- Atualizado: 2026-01-20
- Due: —

## Descrição
*   Salvar a hash na entidade facial no nosso banco e permitir além do GET facial/id um GET facial/hash.
*   Trocar a id da organization de número para um slug do nome da cidade. Ex: "São Bento do Sul" viraria "sc-sao-bento-do-sul".
*   A hash no findface pode continuar "{orgId}\_{facialId}", mas como mudamos a organizationId ela muda por baixo, consequentemente.

Thread relacionada no slack: [https://visio-sede.slack.com/archives/C09UYBE14LE/p1768918545924669](https://visio-sede.slack.com/archives/C09UYBE14LE/p1768918545924669)

## Custom Fields
- Versão: 0
- Módulo/Épico: —
