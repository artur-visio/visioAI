# Visio Glass — Overview

**Objetivo:** App Android nativo em Kotlin para os óculos INMO Air3, que captura vídeo, detecta faces e exibe alertas em tempo real para agentes de campo.

**Problema resolvido:** A versão Unity causava brilho excessivo pelo pipeline ATW do SDK INMO. A versão nativa bypassa isso forçando brightness=1.0f em onCreate.

---

## Escopo MVP (atual)

- Captura de câmera a 1fps com CameraX
- Detecção facial local com ML Kit (bundled, sem Play Services)
- Upload de frames para backend (`POST /webhooks/camera-events`)
- Alertas em tempo real via WebSocket (`wss://api.visio.io/cms/ws`)
- Popup fullscreen animado por tipo: WANTED (vermelho), MISSING (azul), SUSPECT (amarelo)
- Debug overlay via WindowManager (toggle com Volume UP)
- Auto-start no boot (apenas flavor prod)

## Fora do escopo MVP

- Multi-dispositivo (cada óculos é um serial único)
- Reconhecimento via câmera traseira
- Configuração remota de credenciais

---

## Status atual

| Data | Marco |
|------|-------|
| 2026-03-07 | Conversão Unity → Android nativo concluída (14 commits) |
| 2026-03-09 | Primeiro build e deploy confirmados no dispositivo |

---

## Próximas ações

1. **Corrigir flavor prod**: `BASE_API_URL` ainda aponta para `api.dev.visio.io` — ajustar antes de qualquer deploy em produção
2. **Validar fluxo WSS → alerta** no dispositivo real (eventos sendo recebidos e popup disparando)
3. **Definir serial number definitivo**: `DEVICE_SERIAL=GLASS-001` está hardcoded — avaliar se precisa ser configurável
4. **Credenciais de prod**: `LOGIN_EMAIL/PASSWORD` hardcoded no flavor — avaliar Key Vault ou config externa
5. **Testes de reconexão**: simular queda de WiFi e validar retry automático (5s)

---

## Riscos e dependências

| Risco | Impacto | Mitigação |
|-------|---------|-----------|
| Serial number do dispositivo não bate com `DEVICE_SERIAL` no BuildConfig | Alertas ignorados silenciosamente | Confirmar serial cadastrado no backend |
| JWT expira enquanto óculos está em uso | WebSocket desconecta sem re-auth | Implementar refresh de token ou re-login automático |
| Flavor prod aponta para URL dev | Deploy em prod enviaria dados para dev | Fix imediato antes de qualquer uso em campo |
| Credenciais hardcoded | Segurança em dispositivo físico | Avaliar config remota ou Key Vault |

---

## Referências

- `2026-03-07-android-native-inmo-air3-design.md` — arquitetura e comportamento esperado
- `2026-03-07-android-native-inmo-air3.md` — plano de implementação (13 tasks)
- `build-and-deploy.md` — build, flavors, deploy e histórico
