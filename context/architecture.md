Arquitetura geral:
- Backend em microserviços
- Ingestão de vídeo e snapshots
- Processamento assíncrono de eventos
- Separação clara entre ingestão, processamento e visualização

Premissas:
- Custo é restrição forte
- Escalar por evento, não por vídeo bruto
- Hardware é instável (rede, firmware, marcas)
