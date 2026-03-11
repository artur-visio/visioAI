# Design: App Android Nativo — INMO Air3

**Data:** 2026-03-07
**Status:** APROVADO
**Repo:** `repos/inmo-air3/android/`
**Package:** `io.visio.glass`

---

## Contexto

O app Unity existente (`repos/inmo-air3/unity/`) tem problema de brilho causado pelo pipeline ATW do SDK INMO. A solução é substituir por um app Android nativo em Kotlin que vai direto pelo display stack do Android, eliminando o ATW.

O app Unity estava 100% funcional. O objetivo é paridade total de comportamento.

---

## Stack

- Kotlin, minSdk 31, targetSdk 34
- CameraX (câmera + ImageAnalysis)
- ML Kit Face Detection (bundled, sem Play Services)
- OkHttp (HTTP multipart + WebSocket)
- ValueAnimator / ObjectAnimator (animacoes do popup)
- WindowManager overlay (debug panel persistente)
- Gradle build flavors: `dev` / `prod`
- DI manual (sem Hilt)

---

## Arquitetura

**Single Activity** — `VisioActivity : AppCompatActivity`

Gerencia todas as views como layers sobre a Activity. Intercepta todos os key events (VOLUME_UP/DOWN, ENTER deviceId=5).

### Componentes

| Responsabilidade | Classe Kotlin |
|---|---|
| Auth (login + token) | `AuthRepository` |
| WebSocket (alertas) | `AlertWebSocketManager` |
| Camera + captura 1fps | `CameraCapturePipeline` |
| Face detection (ML Kit) | `FaceDetector` |
| Upload multipart | `FrameUploader` |
| Debug overlay | `DebugOverlayView` |
| Popup de alerta | `AlertPopupView` |
| Galeria (ultimo envio) | `GalleryView` |
| Monitor de sistema | `SystemMonitorWidget` |
| Auto-start no boot | `BootReceiver` |

---

## Backend

### Auth
- `POST https://api.{flavor}.visio.io/cms/auth/login`
- Body: `{"email":"...","password":"..."}`
- Response: `{"accessToken":"..."}`
- Token salvo em `SharedPreferences`, enviado como `Authorization: Bearer {token}` em todas as requests

### Upload de frames
- `POST https://webhook.{flavor}.visio.io/webhooks/camera-events`
- Multipart: `serialNumber` (string), `croppedImage` (crop.jpg), `fullImage` (full.jpg anotado)
- Header: `x-provider: glass`
- Requires WebSocket connected

### WebSocket
- `wss://api.{flavor}.visio.io/cms/ws?token={JWT}`
- Reconecta automaticamente a cada 5s se desconectado
- Filtro: processa apenas mensagens com `event=event.alert`, `type=FACIAL_ALERT`, `matchFound=true`, `cameraData.serialNumber` == serial do dispositivo

---

## Modelos de dados

```kotlin
data class AlertPayload(
    val type: String,
    val id: String?,
    val timestamp: String?,
    val matchScore: Float,
    val matchFound: Boolean,
    val facialData: FacialData?,
    val cameraData: CameraData?,
    val spotData: SpotData?,
    val snapshotUrl: String?,
    val cropUrl: String?,
    val status: String?
)

data class FacialData(
    val name: String?,
    val document: String?,       // CPF mascarado
    val description: String?,    // crime/situacao
    val interestType: String?,   // WANTED | SUSPECT | MISSING
    val fileUrl: String?,        // foto cadastral
    val labels: List<FacialLabel>
)

data class FacialLabel(val id: String?, val name: String?, val colorDark: String?)
data class CameraData(val id: String?, val name: String?, val serialNumber: String?)
data class SpotData(val id: String?, val name: String?)
```

Parser manual do JSON do WebSocket (sem Gson) para evitar problemas com arrays aninhados — replicando a logica de `WebSocketClient.cs`.

---

## Input

```
dispatchKeyEvent em VisioActivity:
  KEYCODE_VOLUME_UP   → toggle debug overlay
  KEYCODE_VOLUME_DOWN → reservado
  KEYCODE_ENTER (deviceId=5) →
    if alertPopup.isShowing  → dismiss alerta
    else if gallery.isShowing → fecha galeria
    else if overlay.isVisible → abre galeria
```

---

## Camera + Face Detection

- CameraX `ImageAnalysis` com `STRATEGY_KEEP_ONLY_LATEST`, resolucao 1280x720
- Throttle para 1fps via timestamp
- ML Kit `FaceDetector` direto no `ImageProxy` (sem bridge de arquivo)
- Se face detectada: crop com padding 24px, frame anotado com bounding box vermelho (espessura 6, padding 16)
- Envio apenas se WebSocket conectado
- Se ML Kit ocupado (detecting=true): registra evento "sem analise" no overlay

---

## Debug Overlay

- Bottom-left, max 10 entradas, cresce de baixo para cima
- WindowManager overlay (persiste sobre tudo, inclusive popup)
- Cores: ciano=recente (4s), verde=enviado, vermelho=falha, cinza=sem face
- Formatos:
  - `HH:mm:ss - face detect - send (1.2s)`
  - `HH:mm:ss - face detect - fail (0.8s)`
  - `HH:mm:ss - no face (0.3s)`
  - `HH:mm:ss - sem analise`
- VolumeUp: mostra/esconde overlay + SystemMonitor juntos

---

## Popup de Alerta

Fullscreen, aparece ao receber AlertPayload valido.

### Animacoes (paridade com ExplosiveAlertPopup.cs)
- Entrada: scale 1.5→1.0 + alpha 0→1, 500ms, SmoothStep
- 3 aneis pulsantes: scale 1→1.4, alpha 0.6→0, 1.5s, delay 0/200/400ms
- 5 scan lines: scaleX 0→1, 300ms, delay 0/60/120/180/240ms
- Confidence bar: largura 0→matchScore%, 1s
- "Tempo decorrido" atualiza a cada 1s
- Dismiss: KEYCODE_ENTER deviceId=5

### Cores por tipo
| interestType | Cor |
|---|---|
| WANTED / BLACKLIST | #FF3D3D |
| MISSING | #00BFFF |
| SUSPECT / WATCHLIST | #FFD600 |
| default | #00E5FF |

### Conteudo
- Face image: `cropUrl` (fallback: `facialData.fileUrl`)
- Body image: `snapshotUrl`
- Nome, score %, descricao, tempo decorrido
- Badge label: PROCURADO / DESAPARECIDO / SUSPEITO / ALERTA

---

## Galeria

- Ultimo envio com face detectada
- Crop: 60% largura, altura total disponivel
- Frame completo: 40% restante
- Titulo: `"Ultimo envio: HH:mm:ss (toque fecha)"`
- Borda colorida atrás do crop: verde=sucesso, vermelho=falha

---

## Monitor de Sistema (bottom-right)

- Bateria: nivel % via `ACTION_BATTERY_CHANGED` + drain rate (%/h, calculado apos 5min)
- FPS: media exponencial do intervalo entre frames (label CPU Baixo/Medio/Alto)
- Temperatura: `PowerManager.getCurrentThermalStatus()` (API 29) + `ThermalManager.getThermalHeadroom()` (API 31)
- Fundo branco solido, texto colorido por status
- Visivel apenas quando debug overlay estiver visivel

---

## Build Flavors

| Flavor | API base | BootReceiver | Auto-login |
|---|---|---|---|
| `dev` | `api.dev.visio.io` / `webhook.dev.visio.io` | desabilitado | nao |
| `prod` | `api.visio.io` / `webhook.visio.io` | habilitado | sim (se token valido) |

---

## Estrutura de arquivos

```
android/
  app/
    src/
      main/
        java/io/visio/glass/
          VisioActivity.kt
          auth/
            AuthRepository.kt
          camera/
            CameraCapturePipeline.kt
            FaceDetector.kt
            FrameUploader.kt
          websocket/
            AlertWebSocketManager.kt
            AlertParser.kt
          model/
            AlertPayload.kt
          ui/
            DebugOverlayView.kt
            AlertPopupView.kt
            GalleryView.kt
            SystemMonitorWidget.kt
        res/
          layout/
            activity_visio.xml
            view_alert_popup.xml
            view_gallery.xml
            view_debug_overlay.xml
            view_system_monitor.xml
      dev/java/io/visio/glass/
        BuildConfig extensions (baseUrl, serialNumber, autoStart)
      prod/java/io/visio/glass/
        BuildConfig extensions
        receiver/BootReceiver.kt
    build.gradle.kts
  build.gradle.kts
  settings.gradle.kts
  gradle.properties
```

---

## Decisoes tecnicas

1. **Parser manual do JSON** do WebSocket (sem Gson/Moshi) — replicando logica do `WebSocketClient.cs` que parseava manualmente por conta de arrays aninhados. Alternativa: Gson com TypeAdapter; manter manual para garantir paridade.

2. **WindowManager overlay** para o debug panel — persiste sobre qualquer Activity/popup, requer `TYPE_APPLICATION_OVERLAY` (permissao `SYSTEM_ALERT_WINDOW`).

3. **ML Kit bundled** (sem Play Services) — mesma dependencia do Unity: `com.google.mlkit:face-detection:16.1.7`.

4. **Coroutines** para concorrencia — substitui coroutines Unity + ThreadPool. Camera e upload em `Dispatchers.IO`, UI em `Dispatchers.Main`.

5. **BootReceiver** reimplementado em Kotlin — o `.jar` existente nao e compativel com app nativo. Logica simples: lanca `VisioActivity` no boot (apenas flavor prod).

6. **Brightness maxima** forçada em `onCreate` via `WindowManager.LayoutParams.screenBrightness = 1.0f` — mesmo que o `VisioActivity.java` original.
