# Alert Popup Layout Redesign

**Date:** 2026-03-09
**Status:** APROVADO
**Scope:** `repos/inmo-air3/android/`

## Problema

O layout atual de `view_alert_popup.xml` usa `layout_height="0dp"` para as imagens, fazendo com que `face_image` e `body_image` preencham a altura total do card. Isso cria containers desproporcionais para:
- `face_image` (imagem 1:1 — crop facial quadrado)
- `body_image` (imagem 16:9 — snapshot da câmera em paisagem)

Além disso, as infos textuais (nome, local, hora, confiança) ficam num painel lateral estreito e mal distribuído.

## Design Aprovado — Abordagem A (3 zonas)

```
┌──────────────────────────────────────────┐  6dp margin
│  [PROCURADO ●]            [VISIO]        │  44dp  ← Zone 1: Header
│ ──────────────────────────────────────── │  1dp separator
│  João Silva    Câmera 3 · 14:32   85%   │  48dp  ← Zone 2: Info strip
│ ──────────────────────────────────────── │  1dp separator
│                                          │
│  [face 1:1  ]  [body 16:9 ─────────── ] │  ← Zone 3: Imagens (fill restante)
│                                          │
└──────────────────────────────────────────┘
```

## Especificação por Zona

### Zone 1 — Header (sem mudança)
- Badge colorido (`header_label`) à esquerda, `VISIO` label à direita
- Altura: 44dp

### Zone 2 — Info strip (novo)
- Layout horizontal com 3 blocos:
  - **Esquerda:** nome (18sp bold branco) + descrição (13sp cinza) em coluna
  - **Centro:** localização (13sp cinza) + hora (13sp #888) em coluna
  - **Direita:** confiança % (22sp bold, cor do tipo) + "de confiança" (12sp cinza)
- Altura: 48dp
- Separadores horizontais: `View` 1dp `#30FFFFFF` acima e abaixo da strip

### Zone 3 — Imagens (fill remaining height)
- `face_image`: `layout_constraintDimensionRatio="1:1"`, altura preenche zona via constraints top/bottom, `scaleType="centerCrop"`
- `body_image`: largura `0dp` (preenche restante), mesma altura via constraints, `scaleType="centerCrop"`
- Gap entre imagens: 10dp
- Scan lines e animações existentes mantidas (sem mudança no Kotlin)

## Arquivos Impactados

| Arquivo | Mudança |
|---|---|
| `app/src/main/res/layout/view_alert_popup.xml` | Reestruturar zones 2 e 3; adicionar separadores; corrigir aspect ratios |
| `app/src/main/java/io/visio/glass/ui/AlertPopupView.kt` | Bind dos novos IDs do info strip (se renomeados) |

## O que NÃO muda
- Animações (rings, scan lines, screen flash, card entrance)
- Lógica de carregamento de imagens
- Cores por tipo de alerta
- Header (Zone 1)
