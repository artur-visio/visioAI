# Atualizar TypeScript e ajustar entities

ID: 86af5uq1g
Custom ID: TECH-271
Status: to do
Assignee(s): —
Prioridade: —
List: Sprint 6 (2/9 - 2/22)

Datas:
- Criado: 2026-02-06
- Atualizado: 2026-02-09
- Due: —

## Descrição
Atualmente a cms-api está rodando com o TypeScript v5.7.3.
A versão 5.9.3 do TS está estourando erros de validação de algumas entities na geração ou execução de migrations.
Exemplo:
Na entity `Organization` o atributo `state` está sendo interpretado pela v5.9.3 como objeto e o TS estoura um erro de validação. Nesse exemplo, basta definir o tipo do campo como `varchar(2)`.

Precisamos atualizar para a versão 5.9.3 (ou mais recente) e fazer os devidos ajustes.

## Custom Fields
- Versão: —
- Módulo/Épico: —
