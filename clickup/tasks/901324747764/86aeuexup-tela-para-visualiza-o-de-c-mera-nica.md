# Tela para visualização de câmera única

ID: 86aeuexup
Custom ID: TECH-203
Status: to do
Assignee(s): —
Prioridade: —
List: Sprint 5 (1/26 - 2/8)

Datas:
- Criado: 2026-01-26
- Atualizado: 2026-01-28
- Due: —

## Descrição
## Objetivo

Implementar a tela de visualização de câmera única, permitindo assistir vídeo ao vivo ou gravado de uma câmera específica, com navegação temporal, controles de reprodução e acesso rápido a câmeras próximas.

## Regras de Negócio

### Modo de Visualização

**Ao vivo:**

*   Stream RTSP/HLS em tempo real
*   Botão "Ao vivo" ativado (amarelo)
*   Timeline mostra "agora" como último ponto
*   Controles de navegação temporal desabilitados
*   Controles de velocidade inativo

**Gravação:**

*   Playback de vídeo gravado, buscando do streaming
*   Botão "Ao vivo" "desativado"
*   Controles de velocidade ativos
*   Ao mover a time line para um ponto gravado, fazer o switch para o Gravado

### Navegação entre Câmeras

**Clicar em câmera da sidebar:**

*   Se estava ao vivo: carrega a nova câmera ao vivo
*   Se estava em gravação: carrega a nova câmera no mesmo timestamp relativo

### Timeline

*   Mostrar apenas períodos com gravação disponível
*   Eventos devem ser clicáveis (redirecionar para timestamp do evento)
*   Zoom deve manter o cursor no centro do período visível

### Player

*   Suportar os componentes definidos
*   Resoluções: Não precisamos implementar nada de resolução nesse momento

### Câmeras Próximas

**Listar da seguinte maneira:**

1. Mesmo ponto (sem distância)
2. Outros pontos (por distância crescente)

*   Distância calculada em linha reta (lat/lng)

## APIs necessárias

```elixir
GET /cameras/:id/recordings      # Períodos com gravação (timeline)
GET /cameras/:id/events          # Eventos da câmera (marcadores)
GET /cameras/:id/nearby          # Câmeras próximas
```

## Critérios de Aceitação

- [ ] Carrega stream ao vivo corretamente
- [ ] Carrega gravação e permite navegação temporal
- [ ] Timeline mostra períodos de gravação e eventos
- [ ] Sidebar mostra câmeras próximas ordenadas por distância
- [ ] Clique em câmera próxima troca para ela (mantendo contexto ou timestamp atual ou indo para o aovivo)
- [ ] Player com os controles inseridos
- [ ] Mini-mapa mostra localização e orientação da câmera
- [ ] Responsivo (desktop, tablet)

> **Nota:** Não está incluso o download do vídeo, isso ficará em outra task

## Notas Técnicas

*   Verificar latência do streaming ao vivo (meta: < 3s)
*   Considerar buffer de vídeo para transição suave entre segmentos
*   Implementar retry automático em caso de perda de conexão
* * *

cafe

## Custom Fields
- Versão: 0
- Módulo/Épico: —
