# Visio Glass — Build & Deploy

## Pré-requisitos

### Java 17
- Instalar via Homebrew: `brew install --cask temurin@17`
- AGP 8.3.2 exige Java 17 (não usar o JDK embarcado do Unity — é Java 11)

### Android SDK + ADB
- Usar o SDK embarcado do Unity (já instalado se Unity estiver presente)
- Path: `/Applications/Unity/Hub/Editor/2022.3.62f3/PlaybackEngines/AndroidPlayer/SDK`
- ADB: `<SDK>/platform-tools/adb`

### Variáveis de ambiente para build
```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export ANDROID_HOME=/Applications/Unity/Hub/Editor/2022.3.62f3/PlaybackEngines/AndroidPlayer/SDK
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$PATH"
```

---

## Build

Diretório do projeto: `repos/inmo-air3/android/`

### Dev Debug (padrão para testes)
```bash
cd repos/inmo-air3/android
JAVA_HOME=$(/usr/libexec/java_home -v 17) \
ANDROID_HOME=/Applications/Unity/Hub/Editor/2022.3.62f3/PlaybackEngines/AndroidPlayer/SDK \
./gradlew assembleDevDebug
```

APK gerado em:
```
app/build/outputs/apk/dev/debug/app-dev-debug.apk
```

### Prod Release
```bash
./gradlew assembleProdRelease
```

---

## Deploy no óculos (INMO Air3)

### 1. Conectar via USB com USB Debugging habilitado

### 2. Verificar dispositivo
```bash
adb devices
# Esperado: YM00FCE5600628  device
```

### 3. Instalar APK
```bash
adb install app/build/outputs/apk/dev/debug/app-dev-debug.apk
```

### 4. Lançar app diretamente
```bash
adb shell am start -n io.visio.glass/.VisioActivity
```

### 5. Ver logs em tempo real
```bash
adb logcat -s VisioActivity CameraCapturePipeline AlertWebSocketManager FrameUploader
```

---

## Flavors

| Flavor | AUTO_START | Uso |
|--------|-----------|-----|
| `dev`  | false | Testes manuais |
| `prod` | true  | Deploy definitivo (boot automático) |

> **Atenção:** prod flavor ainda aponta para `api.dev.visio.io` — ajustar antes de deploy real.

---

## Configuração por flavor (`app/build.gradle.kts`)

| Campo | Valor atual (dev e prod) |
|---|---|
| BASE_API_URL | https://api.dev.visio.io |
| BASE_WEBHOOK_URL | https://webhook.dev.visio.io |
| DEVICE_SERIAL | GLASS-001 |
| LOGIN_EMAIL | admin@visio.io |
| LOGIN_PASSWORD | visio1234 |

---

## Estrutura do projeto

```
repos/inmo-air3/
├── android/          ← projeto Android nativo (ativo)
│   ├── app/src/main/java/io/visio/glass/
│   │   ├── VisioActivity.kt          (orquestrador principal)
│   │   ├── auth/AuthRepository.kt    (JWT)
│   │   ├── camera/                   (CameraX + ML Kit + upload)
│   │   ├── websocket/                (OkHttp WS + parser de alertas)
│   │   └── ui/                       (popup, gallery, overlays)
│   └── gradle/libs.versions.toml    (versões de dependências)
└── unity/            ← projeto Unity legado (não usar)
```

---

## Histórico

- **2026-03-07**: Conversão Unity → Android nativo concluída (14 commits)
- **2026-03-09**: Primeiro build e deploy no óculos confirmados
