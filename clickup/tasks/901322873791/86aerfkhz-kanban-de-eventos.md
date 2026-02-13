# Kanban de Eventos

ID: 86aerfkhz
Custom ID: TECH-178
Status: to do
Assignee(s): —
Prioridade: —
List: Backlog

Datas:
- Criado: 2026-01-23
- Atualizado: 2026-02-09
- Due: —

## Descrição
### Funcionalidades MVP
Tela 1: Kanban (operação do dia)
\- 4 colunas: Pendente → Em Atendimento → Em Andamento → Concluído
\- Cards com thumbnail, tipo, câmera, horário
\- Drag-and-drop para mover
\- Real-time (novos eventos aparecem automaticamente - webhook)
\- Filtro por tipo de evento e câmera/spot

Tela 2: Histórico
\- Lista de eventos com filtro por período
\- Status final (concluído / não tratado)
\- Quem atendeu, tempo de resposta
\- Exportar (V2 talvez, mas estrutura pronta)

### Regra de negócio
Ownership - Quem move primeiro, assume o evento
Na tela é apresentado apenas eventos do dia (com possibilidade de filtrar e alterar o dia)
Sempre será apresentado o mais recente primeiro (created\_at DESC)

## Custom Fields
- Versão: 0
- Módulo/Épico: 5
