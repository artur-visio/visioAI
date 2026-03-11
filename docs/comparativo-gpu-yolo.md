# Comparativo de VMs Azure para YOLOv11 — Detecção de Veículos

**Data:** 2026-03-05
**Workload:** 20 câmeras IP, vídeos de 1h cada, extrair 1 FPS com FFmpeg, analisar com YOLOv11

## Cenário

| Parâmetro | Valor |
|-----------|-------|
| Câmeras | 20 |
| Duração por vídeo | 1 hora |
| FPS original | 20 |
| FPS após FFmpeg | 1 |
| Frames por vídeo | 3.600 |
| **Total de frames** | **72.000** |
| Modelo | YOLOv11s (640px) |
| Tarefa | Detecção de veículos (carros) |

---

## Modelos de Detecção — Comparativo

### Família YOLO (Ultralytics) — na T4

| Modelo | Params | Tamanho | FPS (T4 FP32) | FPS (T4 TensorRT FP16) | Tempo 72k frames (TRT) | Accuracy (mAP50) | Uso recomendado |
|--------|--------|---------|--------------|----------------------|----------------------|------------------|-----------------|
| **YOLOv11n** (nano) | 2.6M | 5.4 MB | ~60-80 | ~150-200 | **~6-8 min** | ~75% | Velocidade máxima, boa accuracy |
| **YOLOv11s** (small) | 9.4M | 18.4 MB | ~35-45 | ~80-120 | **~10-15 min** | ~80% | Melhor custo-benefício |
| **YOLOv11m** (medium) | 20.1M | 38.8 MB | ~20-30 | ~50-70 | **~17-24 min** | ~83% | Alta accuracy |
| **YOLOv11l** (large) | 25.3M | 49.0 MB | ~15-20 | ~35-50 | **~24-34 min** | ~84% | Accuracy máxima |
| **YOLOv11x** (extra) | 56.9M | 109.3 MB | ~8-12 | ~20-30 | **~40-60 min** | ~85% | Overkill para veículos |

> **Recomendação: YOLOv11s** — melhor equilíbrio entre velocidade e accuracy para detecção de veículos.
> YOLOv11n é aceitável se velocidade for prioridade absoluta (perda mínima de accuracy em objetos grandes como carros).
> Modelos m/l/x são desnecessários — veículos são objetos grandes e fáceis de detectar.

### Família YOLO — na K80

| Modelo | FPS (K80 FP32) | Tempo 72k frames | Observação |
|--------|---------------|-------------------|------------|
| **YOLOv11n** | ~15-20 | **~1-1.3h** | Melhor opção na K80 |
| **YOLOv11s** | ~6-10 | **~2-3.3h** | Aceitável |
| **YOLOv11m** | ~3-5 | **~4-6.5h** | Lento |
| **YOLOv11l+** | ~1.5-3 | **~6.5-13h** | Não recomendado |

> K80 não suporta TensorRT FP16. Todos os valores são PyTorch FP32.

### Alternativas ao YOLO

| Modelo | Framework | FPS (T4) | Accuracy | Vantagem | Desvantagem |
|--------|-----------|----------|----------|----------|-------------|
| **YOLOv11s** | Ultralytics | ~35-45 | ~80% | Rápido, fácil de usar, excelente docs | — |
| **RT-DETR-l** | Ultralytics | ~25-35 | ~83% | Melhor accuracy, transformer-based | Mais lento, mais VRAM |
| **YOLOv8s** | Ultralytics | ~30-40 | ~78% | Maduro, muito testado | v11 é superior |
| **EfficientDet-D2** | TensorFlow | ~20-30 | ~79% | Boa accuracy | Ecossistema TF, menos prático |
| **SSD MobileNet v2** | TensorFlow | ~80-100 | ~65% | Muito rápido, leve | Accuracy inferior |
| **Faster R-CNN** | Detectron2 | ~5-10 | ~85% | Accuracy alta | Muito lento para batch grande |

> **Veredicto: YOLOv11 é a melhor escolha.** Ultralytics tem o melhor ecossistema (CLI, Python API, export TensorRT, tracking, etc). Não há motivo para usar outro framework neste caso de uso.

---

## FFmpeg — Extração de Frames

### Comando base

```bash
# Extrair 1 FPS de um vídeo MP4 (20fps → 1fps)
ffmpeg -i input.mp4 -vf "fps=1" output_1fps.mp4

# Alternativa: salvar frames como imagens (mais fácil para YOLO)
ffmpeg -i input.mp4 -vf "fps=1" frames/frame_%06d.jpg

# Batch: processar 20 vídeos em paralelo (4 de cada vez)
ls *.mp4 | xargs -P 4 -I {} ffmpeg -i {} -vf "fps=1" {}_1fps.mp4
```

### Performance do FFmpeg (CPU only)

| Operação | Tempo por vídeo (1h, 20fps) | CPU usada |
|----------|---------------------------|-----------|
| MP4 → MP4 1fps (re-encode) | ~2-3 min | ~1-2 cores |
| MP4 → JPGs 1fps (extração) | ~1-2 min | ~1 core |
| MP4 → JPGs 1fps (com resize 640px) | ~1.5-2.5 min | ~1 core |

### Tempo total FFmpeg (20 câmeras)

| Modo | Tempo total | Observação |
|------|-------------|------------|
| Sequencial (1 por vez) | ~40-60 min | Simples, usa 1 core |
| Paralelo (4 por vez) | ~10-15 min | `xargs -P 4`, usa 4 cores |
| Paralelo (8 por vez) | ~5-8 min | Precisa 8+ cores |

> **Dica:** Salvar como JPGs individuais (não MP4) facilita o pipeline YOLO — o Ultralytics aceita um diretório de imagens direto.
> Adicionar resize no FFmpeg (`-vf "fps=1,scale=640:-1"`) economiza tempo no YOLO (não precisa redimensionar na GPU).

### FFmpeg + YOLO — Pipeline completo na NC4as_T4_v3

| Etapa | Tempo (20 câmeras × 1h) | Recurso |
|-------|------------------------|---------|
| FFmpeg (paralelo, 4 workers) | ~10-15 min | CPU (4 cores) |
| YOLOv11s TensorRT FP16 | ~10-15 min | GPU (T4) |
| **Total** | **~20-30 min** | — |
| **Custo** | **~$0.18-$0.27** | NC4as_T4_v3 @ $0.53/h |

> FFmpeg e YOLO podem rodar em pipeline (FFmpeg processa vídeo N+1 enquanto YOLO analisa vídeo N).
> Na prática, o tempo total é dominado pela etapa mais lenta (~15 min).

---

## VMs com GPU (NVIDIA — CUDA)

### Disponíveis AGORA (quota aprovada — Dev, eastus2)

| VM | GPU | VRAM | vCPUs | RAM | YOLOv11s FPS | Tempo 72k frames | Custo/h | Custo do job | Quota |
|----|-----|------|-------|-----|-------------|-------------------|---------|-------------|-------|
| **NC4as_T4_v3** | 1x T4 | 16 GB | 4 | 28 GB | ~35-45 | **~27-34 min** | $0.53 | ~$0.30 | 4 de 16 vCPUs |
| **NC8as_T4_v3** | 1x T4 | 16 GB | 8 | 56 GB | ~35-45 | **~27-34 min** | $1.05 | ~$0.60 | 8 de 16 vCPUs |
| **NC16as_T4_v3** | 1x T4 | 16 GB | 16 | 110 GB | ~35-45 | **~27-34 min** | $2.10 | ~$1.20 | 16 de 16 vCPUs |

> **Nota:** NC4as, NC8as e NC16as têm a MESMA GPU T4. A diferença é CPU e RAM.
> NC4as é suficiente para YOLO. NC8as/NC16as só valem se o pipeline de FFmpeg precisar de mais CPU.

### Disponíveis AGORA (quota legacy — sem pedido)

| VM | GPU | VRAM | vCPUs | RAM | YOLOv11s FPS | Tempo 72k frames | Custo/h | Custo do job | Quota |
|----|-----|------|-------|-----|-------------|-------------------|---------|-------------|-------|
| **NC6** | 1x K80 | 12 GB | 6 | 56 GB | ~6-10 | **~2-3.3h** | $0.90 | ~$2.25 | 6 de 12 vCPUs |
| **NC12** | 2x K80 | 24 GB | 12 | 112 GB | ~12-20* | **~1-1.6h*** | $1.80 | ~$2.25 | 12 de 12 vCPUs |

> *NC12 só atinge o dobro se o código paralelizar entre as 2 GPUs.
> K80 = GPU de 2014, sem TensorRT, sem FP16 eficiente. Funciona mas é 5-7x mais lenta que T4.

### Aguardando quota (ticket aberto — Prod)

| VM | GPU | VRAM | vCPUs | RAM | YOLOv11s FPS | Tempo 72k frames | Custo/h | Custo do job |
|----|-----|------|-------|-----|-------------|-------------------|---------|-------------|
| **NC4as_T4_v3** | 1x T4 | 16 GB | 4 | 28 GB | ~35-45 | **~27-34 min** | $0.53 | ~$0.30 |

---

## VMs sem GPU (CPU only) — para referência

| VM | vCPUs | RAM | YOLOv11s FPS | Tempo 72k frames | Custo/h | Custo do job |
|----|-------|-----|-------------|-------------------|---------|-------------|
| **D8s_v5** | 8 | 32 GB | ~0.5-1 | **~20-40h** | $0.38 | ~$11.40 |
| **D16s_v5** | 16 | 64 GB | ~1-2 | **~10-20h** | $0.77 | ~$11.55 |
| **D32s_v5** | 32 | 128 GB | ~1.5-3 | **~6.5-13h** | $1.54 | ~$13.50 |
| **F32s_v2** (compute-opt) | 32 | 64 GB | ~2-3.5 | **~5.7-10h** | $1.35 | ~$10.80 |

> CPU only NÃO é recomendado. Mesmo a VM mais cara (D32s_v5) é 10-40x mais lenta e 45x mais cara por job que a T4.

---

## Otimizações com TensorRT (só T4)

| Modo | FPS na T4 | Tempo 72k frames | Melhoria |
|------|----------|-------------------|----------|
| YOLOv11s PyTorch (FP32) | ~35-45 | ~27-34 min | baseline |
| YOLOv11s TensorRT (FP16) | ~80-120 | **~10-15 min** | ~2.5x |
| YOLOv11n TensorRT (FP16) | ~150-200 | **~6-8 min** | ~5x |

> TensorRT converte o modelo para rodar otimizado na T4. Recomendado para produção.
> K80 NÃO suporta TensorRT FP16 de forma eficiente.

---

## Pipeline recomendado

```
[MP4 20fps] → FFmpeg (CPU) → [MP4 1fps] → YOLOv11 (GPU T4) → [JSON resultados]
```

1. **FFmpeg** extrai 1 frame/s de cada vídeo (CPU, ~2-3 min por vídeo)
2. **YOLOv11** analisa cada frame e detecta veículos (GPU)
3. Resultado: lista de frames com veículos detectados + bounding boxes

---

## Recomendação

| Fase | VM | Justificativa |
|------|----|--------------|
| **MVP/Teste** | NC4as_T4_v3 (Dev, eastus2) | Quota aprovada, $0.53/h, processa 20 câmeras em ~30 min |
| **Produção** | NC4as_T4_v3 (Prod, eastus2) | Aguardando aprovação de quota |
| **Escala (50+ câmeras)** | NC8as_T4_v3 ou múltiplas NC4as | Mais CPU para FFmpeg paralelo |

### Custo mensal estimado (24/7)

| VM | Custo/mês |
|----|-----------|
| NC4as_T4_v3 | ~$387 |
| NC4as_T4_v3 (Spot) | ~$77-155 (60-80% desconto, pode ser evicted) |

### Custo por execução (batch 20 câmeras × 1h)

| VM | Tempo | Custo |
|----|-------|-------|
| **NC4as_T4_v3 (T4)** | ~30 min | **~$0.27** |
| NC6 (K80) | ~2.5h | ~$2.25 |
| D16s_v5 (CPU) | ~15h | ~$11.55 |

---

## Status atual

- [x] Quota T4 aprovada — Dev (eastus, eastus2, westus2) — 16 vCPUs cada
- [ ] Quota T4 pendente — Prod (ticket aberto)
- [x] Quota K80 disponível — Dev e Prod — 12 vCPUs (legacy, não recomendado)
