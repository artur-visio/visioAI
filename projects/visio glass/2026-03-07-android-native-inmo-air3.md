# Android Native INMO Air3 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Criar app Android nativo em Kotlin em `repos/inmo-air3/android/` com paridade total ao app Unity existente em `repos/inmo-air3/unity/`.

**Architecture:** Single Activity (`VisioActivity`) com layers de View sobre ela. Componentes desacoplados (AuthRepository, AlertWebSocketManager, CameraCapturePipeline, FaceDetector, FrameUploader) comunicando via callbacks/StateFlow. UI em WindowManager overlay para o debug panel persistente.

**Tech Stack:** Kotlin, CameraX, ML Kit Face Detection (bundled), OkHttp (HTTP + WebSocket), ValueAnimator, WindowManager, Gradle build flavors dev/prod.

**Referencia:** Design doc em `docs/plans/2026-03-07-android-native-inmo-air3-design.md`. Scripts Unity originais em `repos/inmo-air3/unity/Assets/Scripts/`.

**Working dir para todos os comandos:** `repos/inmo-air3/android/`

---

## Task 1: Scaffold do projeto Gradle

**Files:**
- Create: `repos/inmo-air3/android/settings.gradle.kts`
- Create: `repos/inmo-air3/android/build.gradle.kts`
- Create: `repos/inmo-air3/android/gradle.properties`
- Create: `repos/inmo-air3/android/app/build.gradle.kts`
- Create: `repos/inmo-air3/android/app/src/main/AndroidManifest.xml`

**Step 1: Criar settings.gradle.kts**

```kotlin
// settings.gradle.kts
pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}
rootProject.name = "visio-glass"
include(":app")
```

**Step 2: Criar build.gradle.kts (root)**

```kotlin
// build.gradle.kts (root)
plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.kotlin.android) apply false
}
```

**Step 3: Criar gradle/libs.versions.toml**

```toml
[versions]
agp = "8.3.2"
kotlin = "1.9.24"
coreKtx = "1.13.1"
appcompat = "1.7.0"
camerax = "1.3.4"
mlkitFace = "16.1.7"
okhttp = "4.12.0"
coroutines = "1.8.1"
lifecycle = "2.8.3"

[libraries]
androidx-core-ktx = { group = "androidx.core", name = "core-ktx", version.ref = "coreKtx" }
androidx-appcompat = { group = "androidx.appcompat", name = "appcompat", version.ref = "appcompat" }
camerax-core = { group = "androidx.camera", name = "camera-core", version.ref = "camerax" }
camerax-camera2 = { group = "androidx.camera", name = "camera-camera2", version.ref = "camerax" }
camerax-lifecycle = { group = "androidx.camera", name = "camera-lifecycle", version.ref = "camerax" }
mlkit-face = { group = "com.google.mlkit", name = "face-detection", version.ref = "mlkitFace" }
okhttp = { group = "com.squareup.okhttp3", name = "okhttp", version.ref = "okhttp" }
coroutines-android = { group = "org.jetbrains.kotlinx", name = "kotlinx-coroutines-android", version.ref = "coroutines" }
lifecycle-runtime = { group = "androidx.lifecycle", name = "lifecycle-runtime-ktx", version.ref = "lifecycle" }

[plugins]
android-application = { id = "com.android.application", version.ref = "agp" }
kotlin-android = { id = "org.jetbrains.kotlin.android", version.ref = "kotlin" }
```

**Step 4: Criar app/build.gradle.kts**

```kotlin
plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
}

android {
    namespace = "io.visio.glass"
    compileSdk = 34

    defaultConfig {
        applicationId = "io.visio.glass"
        minSdk = 31
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildFeatures {
        buildConfig = true
        viewBinding = true
    }

    flavorDimensions += "env"
    productFlavors {
        create("dev") {
            dimension = "env"
            buildConfigField("String", "BASE_API_URL", "\"https://api.dev.visio.io\"")
            buildConfigField("String", "BASE_WEBHOOK_URL", "\"https://webhook.dev.visio.io\"")
            buildConfigField("String", "DEVICE_SERIAL", "\"GLASS-001\"")
            buildConfigField("boolean", "AUTO_START", "false")
        }
        create("prod") {
            dimension = "env"
            buildConfigField("String", "BASE_API_URL", "\"https://api.visio.io\"")
            buildConfigField("String", "BASE_WEBHOOK_URL", "\"https://webhook.visio.io\"")
            buildConfigField("String", "DEVICE_SERIAL", "\"GLASS-001\"")
            buildConfigField("boolean", "AUTO_START", "true")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions { jvmTarget = "1.8" }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.appcompat)
    implementation(libs.camerax.core)
    implementation(libs.camerax.camera2)
    implementation(libs.camerax.lifecycle)
    implementation(libs.mlkit.face)
    implementation(libs.okhttp)
    implementation(libs.coroutines.android)
    implementation(libs.lifecycle.runtime)
}
```

**Step 5: Criar gradle.properties**

```properties
org.gradle.jvmargs=-Xmx2048m
android.useAndroidX=true
kotlin.code.style=official
```

**Step 6: Criar AndroidManifest.xml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />
    <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE_CAMERA" />

    <application
        android:label="Visio Glass"
        android:theme="@style/Theme.AppCompat.NoActionBar">

        <activity
            android:name=".VisioActivity"
            android:configChanges="orientation|screenSize|keyboardHidden"
            android:exported="true"
            android:launchMode="singleTask"
            android:screenOrientation="landscape"
            android:showWhenLocked="true"
            android:turnScreenOn="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>

    </application>
</manifest>
```

**Step 7: Baixar Gradle wrapper e verificar build**

```bash
cd repos/inmo-air3/android
gradle wrapper --gradle-version 8.6
./gradlew assembleDevDebug --dry-run
```

Esperado: BUILD SUCCESSFUL (sem erros de configuracao).

**Step 8: Commit**

```bash
git add repos/inmo-air3/android/
git commit -m "feat(glass): scaffold Android project — Gradle, flavors dev/prod, manifest"
```

---

## Task 2: Modelos de dados

**Files:**
- Create: `app/src/main/java/io/visio/glass/model/AlertPayload.kt`
- Create: `app/src/test/java/io/visio/glass/model/AlertParserTest.kt`
- Create: `app/src/main/java/io/visio/glass/websocket/AlertParser.kt`

**Step 1: Criar AlertPayload.kt**

```kotlin
package io.visio.glass.model

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
    val document: String?,
    val description: String?,
    val interestType: String?,
    val fileUrl: String?,
    val labels: List<FacialLabel>
)

data class FacialLabel(
    val id: String?,
    val name: String?,
    val colorDark: String?
)

data class CameraData(
    val id: String?,
    val name: String?,
    val serialNumber: String?
)

data class SpotData(
    val id: String?,
    val name: String?
)
```

**Step 2: Criar AlertParser.kt**

Parser manual replicando a logica de `WebSocketClient.cs`. Processa apenas mensagens com `event.alert` + `FACIAL_ALERT` + `matchFound:true`.

```kotlin
package io.visio.glass.websocket

import io.visio.glass.model.*

object AlertParser {

    fun parse(json: String, deviceSerial: String): AlertPayload? {
        if (!json.contains("\"event\":\"event.alert\"")) return null
        if (!json.contains("\"type\":\"FACIAL_ALERT\"")) return null
        if (!json.contains("\"matchFound\":true")) return null

        val camJson = extractObject(json, "\"cameraData\":")
        val camSerial = if (camJson != null) extractString(camJson, "\"serialNumber\":") else null
        if (camSerial == null || camSerial != deviceSerial) return null

        val facialJson = extractObject(json, "\"facialData\":")
        val spotJson = extractObject(json, "\"spotData\":")

        val scoreStr = extractString(json, "\"matchScore\":")
        val rawScore = scoreStr?.toFloatOrNull() ?: 0f
        val matchScore = if (rawScore <= 1f) rawScore * 100f else rawScore

        val facialData = if (facialJson != null) {
            val labelsJson = extractArray(facialJson, "\"labels\":")
            val firstLabel = if (labelsJson != null) extractFirstObject(labelsJson) else null
            val label = if (firstLabel != null) FacialLabel(
                id = extractString(firstLabel, "\"id\":"),
                name = extractString(firstLabel, "\"name\":"),
                colorDark = extractString(firstLabel, "\"colorDark\":")
            ) else null

            FacialData(
                name = extractString(facialJson, "\"name\":"),
                document = extractString(facialJson, "\"document\":"),
                description = extractString(facialJson, "\"description\":"),
                interestType = extractString(facialJson, "\"interestType\":"),
                fileUrl = extractString(facialJson, "\"fileUrl\":"),
                labels = if (label != null) listOf(label) else emptyList()
            )
        } else null

        val cameraData = if (camJson != null) CameraData(
            id = extractString(camJson, "\"id\":"),
            name = extractString(camJson, "\"name\":"),
            serialNumber = camSerial
        ) else null

        val spotData = if (spotJson != null) SpotData(
            id = extractString(spotJson, "\"id\":"),
            name = extractString(spotJson, "\"name\":")
        ) else null

        // id e timestamp estao dentro de "data": {} — buscar apos esse marcador
        val dataJson = extractObject(json, "\"data\":")
        val id = if (dataJson != null) extractString(dataJson, "\"id\":") else extractString(json, "\"id\":")
        val timestamp = if (dataJson != null) extractString(dataJson, "\"timestamp\":") else extractString(json, "\"timestamp\":")

        return AlertPayload(
            type = "FACIAL_ALERT",
            id = id,
            timestamp = timestamp,
            matchScore = matchScore,
            matchFound = true,
            facialData = facialData,
            cameraData = cameraData,
            spotData = spotData,
            snapshotUrl = extractString(json, "\"snapshotUrl\":"),
            cropUrl = extractString(json, "\"cropUrl\":"),
            status = extractString(json, "\"status\":")
        )
    }

    // --- helpers (replicando WebSocketClient.cs) ---

    fun extractString(json: String, key: String): String? {
        val idx = json.indexOf(key)
        if (idx < 0) return null
        var start = idx + key.length
        while (start < json.length && json[start] == ' ') start++
        if (start >= json.length) return null
        return when {
            json[start] == '"' -> {
                val end = json.indexOf('"', start + 1)
                if (end < 0) null else json.substring(start + 1, end)
            }
            json[start] == 'n' -> null // null literal
            else -> {
                var end = start
                while (end < json.length && json[end] != ',' && json[end] != '}') end++
                json.substring(start, end).trim()
            }
        }
    }

    fun extractObject(json: String, key: String): String? {
        val idx = json.indexOf(key)
        if (idx < 0) return null
        var start = idx + key.length
        while (start < json.length && json[start] == ' ') start++
        if (start >= json.length || json[start] == 'n') return null
        if (json[start] != '{') return null
        var depth = 0
        for (i in start until json.length) {
            when (json[i]) {
                '{' -> depth++
                '}' -> { depth--; if (depth == 0) return json.substring(start, i + 1) }
            }
        }
        return null
    }

    fun extractArray(json: String, key: String): String? {
        val idx = json.indexOf(key)
        if (idx < 0) return null
        var start = idx + key.length
        while (start < json.length && json[start] == ' ') start++
        if (start >= json.length || json[start] != '[') return null
        var depth = 0
        for (i in start until json.length) {
            when (json[i]) {
                '[' -> depth++
                ']' -> { depth--; if (depth == 0) return json.substring(start, i + 1) }
            }
        }
        return null
    }

    fun extractFirstObject(arrayJson: String): String? {
        val start = arrayJson.indexOf('{')
        if (start < 0) return null
        var depth = 0
        for (i in start until arrayJson.length) {
            when (arrayJson[i]) {
                '{' -> depth++
                '}' -> { depth--; if (depth == 0) return arrayJson.substring(start, i + 1) }
            }
        }
        return null
    }
}
```

**Step 3: Escrever testes do parser**

```kotlin
package io.visio.glass.model

import io.visio.glass.websocket.AlertParser
import org.junit.Assert.*
import org.junit.Test

class AlertParserTest {

    private val validJson = """
        {
          "event": "event.alert",
          "data": {
            "id": "abc123",
            "type": "FACIAL_ALERT",
            "timestamp": "2026-03-07T12:00:00Z",
            "matchFound": true,
            "matchScore": 0.92,
            "snapshotUrl": "https://example.com/snap.jpg",
            "cropUrl": "https://example.com/crop.jpg",
            "status": "ACTIVE",
            "facialData": {
              "name": "Joao Silva",
              "document": "***.***.***-00",
              "description": "Roubo",
              "interestType": "WANTED",
              "fileUrl": "https://example.com/face.jpg",
              "labels": [{"id": "l1", "name": "PROCURADO", "colorDark": "#ff0000"}]
            },
            "cameraData": {
              "id": "cam1",
              "name": "Camera Principal",
              "serialNumber": "GLASS-001"
            },
            "spotData": {"id": "s1", "name": "Entrada"}
          }
        }
    """.trimIndent()

    @Test
    fun `parse returns payload for valid alert`() {
        val result = AlertParser.parse(validJson, "GLASS-001")
        assertNotNull(result)
        assertEquals("abc123", result!!.id)
        assertEquals("Joao Silva", result.facialData?.name)
        assertEquals("WANTED", result.facialData?.interestType)
        assertEquals(92f, result.matchScore)
        assertEquals("GLASS-001", result.cameraData?.serialNumber)
        assertEquals("PROCURADO", result.facialData?.labels?.firstOrNull()?.name)
    }

    @Test
    fun `parse returns null for wrong serial`() {
        val result = AlertParser.parse(validJson, "GLASS-999")
        assertNull(result)
    }

    @Test
    fun `parse returns null if matchFound false`() {
        val json = validJson.replace("\"matchFound\":true", "\"matchFound\":false")
        val result = AlertParser.parse(json, "GLASS-001")
        assertNull(result)
    }

    @Test
    fun `parse returns null for non-alert event`() {
        val json = validJson.replace("event.alert", "event.ping")
        val result = AlertParser.parse(json, "GLASS-001")
        assertNull(result)
    }

    @Test
    fun `matchScore converts 0-1 range to percentage`() {
        val result = AlertParser.parse(validJson, "GLASS-001")
        assertEquals(92f, result!!.matchScore)
    }

    @Test
    fun `matchScore keeps value if already in percentage range`() {
        val json = validJson.replace("\"matchScore\": 0.92", "\"matchScore\": 92.0")
        val result = AlertParser.parse(json, "GLASS-001")
        assertEquals(92f, result!!.matchScore)
    }
}
```

**Step 4: Rodar testes**

```bash
./gradlew testDevDebugUnitTest --tests "io.visio.glass.model.AlertParserTest" -q
```

Esperado: 6 testes passando.

**Step 5: Commit**

```bash
git add repos/inmo-air3/android/app/src/
git commit -m "feat(glass): add AlertPayload models and AlertParser with unit tests"
```

---

## Task 3: AuthRepository

**Files:**
- Create: `app/src/main/java/io/visio/glass/auth/AuthRepository.kt`

**Step 1: Criar AuthRepository.kt**

Referencia: `unity/Assets/Scripts/AuthManager.cs`

```kotlin
package io.visio.glass.auth

import android.content.Context
import io.visio.glass.BuildConfig
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.util.concurrent.TimeUnit

class AuthRepository(private val context: Context) {

    private val prefs = context.getSharedPreferences("visio_prefs", Context.MODE_PRIVATE)
    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(10, TimeUnit.SECONDS)
        .build()

    var token: String?
        get() = prefs.getString("jwt_token", null)
        private set(value) = prefs.edit().putString("jwt_token", value).apply()

    suspend fun login(email: String, password: String): Result<String> = withContext(Dispatchers.IO) {
        try {
            val body = """{"email":"$email","password":"$password"}"""
                .toRequestBody("application/json".toMediaType())
            val request = Request.Builder()
                .url("${BuildConfig.BASE_API_URL}/cms/auth/login")
                .post(body)
                .build()

            val response = client.newCall(request).execute()
            val responseBody = response.body?.string() ?: ""

            if (!response.isSuccessful) {
                return@withContext Result.failure(Exception("Login failed: ${response.code} $responseBody"))
            }

            val accessToken = extractToken(responseBody)
                ?: return@withContext Result.failure(Exception("No accessToken in response"))

            token = accessToken
            Result.success(accessToken)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    fun clearToken() {
        token = null
    }

    // Extrai accessToken do JSON sem Gson
    private fun extractToken(json: String): String? {
        val key = "\"accessToken\":"
        val idx = json.indexOf(key)
        if (idx < 0) return null
        var start = idx + key.length
        while (start < json.length && json[start] == ' ') start++
        if (start >= json.length || json[start] != '"') return null
        val end = json.indexOf('"', start + 1)
        if (end < 0) return null
        return json.substring(start + 1, end)
    }
}
```

**Step 2: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/auth/
git commit -m "feat(glass): add AuthRepository — login + JWT token persistence"
```

---

## Task 4: AlertWebSocketManager

**Files:**
- Create: `app/src/main/java/io/visio/glass/websocket/AlertWebSocketManager.kt`

**Step 1: Criar AlertWebSocketManager.kt**

Referencia: `unity/Assets/Scripts/WebSocketClient.cs`

```kotlin
package io.visio.glass.websocket

import android.util.Log
import io.visio.glass.BuildConfig
import io.visio.glass.model.AlertPayload
import kotlinx.coroutines.*
import okhttp3.*
import java.util.concurrent.TimeUnit

class AlertWebSocketManager {

    companion object {
        private const val TAG = "AlertWebSocketManager"
        private const val RECONNECT_DELAY_MS = 5_000L
    }

    var onAlertReceived: ((AlertPayload) -> Unit)? = null
    var onConnectionChanged: ((Boolean) -> Unit)? = null

    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(0, TimeUnit.SECONDS) // no timeout for WS
        .build()

    private var webSocket: WebSocket? = null
    private var token: String? = null
    private var isConnected = false
    private var shouldReconnect = true
    private var reconnectJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    fun connect(jwtToken: String) {
        token = jwtToken
        shouldReconnect = true
        connectInternal()
    }

    fun disconnect() {
        shouldReconnect = false
        reconnectJob?.cancel()
        webSocket?.close(1000, "Disconnect requested")
        webSocket = null
    }

    private fun connectInternal() {
        if (isConnected) return
        webSocket?.close(1000, null)

        val url = "${BuildConfig.BASE_API_URL.replace("https://", "wss://").replace("http://", "ws://")}/cms/ws?token=$token"
        Log.d(TAG, "Connecting to $url")

        val request = Request.Builder().url(url).build()
        webSocket = client.newWebSocket(request, object : WebSocketListener() {
            override fun onOpen(ws: WebSocket, response: Response) {
                Log.d(TAG, "Connected")
                isConnected = true
                reconnectJob?.cancel()
                onConnectionChanged?.invoke(true)
            }

            override fun onMessage(ws: WebSocket, text: String) {
                Log.d(TAG, "Message len=${text.length}")
                val payload = AlertParser.parse(text, BuildConfig.DEVICE_SERIAL)
                if (payload != null) {
                    onAlertReceived?.invoke(payload)
                }
            }

            override fun onFailure(ws: WebSocket, t: Throwable, response: Response?) {
                Log.e(TAG, "Failure: ${t.message}")
                onDisconnected()
            }

            override fun onClosed(ws: WebSocket, code: Int, reason: String) {
                Log.d(TAG, "Closed: $code $reason")
                onDisconnected()
            }
        })
    }

    private fun onDisconnected() {
        isConnected = false
        onConnectionChanged?.invoke(false)
        if (shouldReconnect) scheduleReconnect()
    }

    private fun scheduleReconnect() {
        reconnectJob?.cancel()
        reconnectJob = scope.launch {
            delay(RECONNECT_DELAY_MS)
            if (shouldReconnect && !isConnected) {
                Log.d(TAG, "Reconnecting...")
                connectInternal()
            }
        }
    }
}
```

**Step 2: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/websocket/
git commit -m "feat(glass): add AlertWebSocketManager — OkHttp WS with auto-reconnect"
```

---

## Task 5: FaceDetector + CameraCapturePipeline

**Files:**
- Create: `app/src/main/java/io/visio/glass/camera/FaceDetector.kt`
- Create: `app/src/main/java/io/visio/glass/camera/CameraCapturePipeline.kt`

**Step 1: Criar FaceDetector.kt**

Diferenca vs Unity: sem bridge de arquivo — ML Kit direto no `ImageProxy`.

```kotlin
package io.visio.glass.camera

import android.graphics.Rect
import androidx.camera.core.ImageProxy
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.face.FaceDetection
import com.google.mlkit.vision.face.FaceDetectorOptions
import kotlinx.coroutines.tasks.await

class FaceDetector {

    private val detector = FaceDetection.getClient(
        FaceDetectorOptions.Builder()
            .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_FAST)
            .setLandmarkMode(FaceDetectorOptions.LANDMARK_MODE_NONE)
            .setClassificationMode(FaceDetectorOptions.CLASSIFICATION_MODE_NONE)
            .setMinFaceSize(0.01f)
            .build()
    )

    // Retorna bounding box em coordenadas da imagem, ou null se nenhuma face
    suspend fun detect(imageProxy: ImageProxy): Rect? {
        val image = InputImage.fromMediaImage(
            imageProxy.image ?: return null,
            imageProxy.imageInfo.rotationDegrees
        )
        val faces = detector.process(image).await()
        return faces.firstOrNull()?.boundingBox
    }

    fun close() = detector.close()
}
```

**Step 2: Criar CameraCapturePipeline.kt**

Referencia: `unity/Assets/Scripts/FrameSender.cs`

```kotlin
package io.visio.glass.camera

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.YuvImage
import android.util.Log
import androidx.camera.core.*
import androidx.camera.lifecycle.ProcessCameraProvider
import androidx.core.content.ContextCompat
import androidx.lifecycle.LifecycleOwner
import kotlinx.coroutines.*
import java.io.ByteArrayOutputStream
import java.util.concurrent.atomic.AtomicBoolean

data class CaptureResult(
    val timestamp: String,
    val cropJpeg: ByteArray,
    val fullJpeg: ByteArray,        // frame anotado com bounding box
    val hasFace: Boolean
)

class CameraCapturePipeline(
    private val context: Context,
    private val faceDetector: FaceDetector
) {

    companion object {
        private const val TAG = "CameraCapturePipeline"
        private const val CAPTURE_INTERVAL_MS = 1_000L
        private const val JPEG_QUALITY = 75
        private const val FACE_PAD = 24
        private const val BOX_THICKNESS = 6f
        private const val BOX_PAD = 16
    }

    var onFrameCaptured: ((String) -> Unit)? = null
    var onFaceDetected: ((String, ByteArray, ByteArray) -> Unit)? = null
    var onFrameSent: ((String, Boolean) -> Unit)? = null
    var onNoFace: ((String, Float) -> Unit)? = null
    var onFrameSkipped: ((String) -> Unit)? = null

    private val detecting = AtomicBoolean(false)
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var lastCaptureMs = 0L

    fun start(lifecycleOwner: LifecycleOwner) {
        val future = ProcessCameraProvider.getInstance(context)
        future.addListener({
            val provider = future.get()
            val analysis = ImageAnalysis.Builder()
                .setTargetResolution(android.util.Size(1280, 720))
                .setBackpressureStrategy(ImageAnalysis.STRATEGY_KEEP_ONLY_LATEST)
                .build()
                .also { it.setAnalyzer(ContextCompat.getMainExecutor(context), ::analyzeFrame) }

            try {
                provider.unbindAll()
                provider.bindToLifecycle(lifecycleOwner, CameraSelector.DEFAULT_BACK_CAMERA, analysis)
                Log.d(TAG, "Camera bound")
            } catch (e: Exception) {
                Log.e(TAG, "Camera bind failed: ${e.message}")
            }
        }, ContextCompat.getMainExecutor(context))
    }

    private fun analyzeFrame(imageProxy: ImageProxy) {
        val nowMs = System.currentTimeMillis()
        if (nowMs - lastCaptureMs < CAPTURE_INTERVAL_MS) {
            imageProxy.close()
            return
        }
        lastCaptureMs = nowMs

        val ts = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault())
            .format(java.util.Date())

        if (detecting.get()) {
            onFrameCaptured?.invoke(ts)
            onFrameSkipped?.invoke(ts)
            imageProxy.close()
            return
        }

        onFrameCaptured?.invoke(ts)
        val startT = System.currentTimeMillis()

        // Converter ImageProxy para Bitmap antes de fechar o proxy
        val bitmap = imageProxy.toBitmap()
        imageProxy.close()

        scope.launch {
            detecting.set(true)
            try {
                // Reutilizar imageProxy ja foi fechado — criar InputImage do bitmap
                val inputImage = InputImage.fromBitmap(bitmap, 0)
                val faces = faceDetector.detector.process(inputImage).await()
                val boundingBox = faces.firstOrNull()?.boundingBox

                val elapsed = (System.currentTimeMillis() - startT) / 1000f

                if (boundingBox == null) {
                    onNoFace?.invoke(ts, elapsed)
                    return@launch
                }

                val cropJpeg = cropFace(bitmap, boundingBox)
                val annotatedJpeg = annotateFrame(bitmap, boundingBox)

                withContext(Dispatchers.Main) {
                    onFaceDetected?.invoke(ts, cropJpeg, annotatedJpeg)
                }
            } finally {
                detecting.set(false)
                bitmap.recycle()
            }
        }
    }

    private fun cropFace(bitmap: Bitmap, box: Rect): ByteArray {
        val x = (box.left - FACE_PAD).coerceAtLeast(0)
        val y = (box.top - FACE_PAD).coerceAtLeast(0)
        val w = (box.width() + FACE_PAD * 2).coerceAtMost(bitmap.width - x)
        val h = (box.height() + FACE_PAD * 2).coerceAtMost(bitmap.height - y)
        val crop = Bitmap.createBitmap(bitmap, x, y, w, h)
        return crop.toJpeg()
    }

    private fun annotateFrame(bitmap: Bitmap, box: Rect): ByteArray {
        val annotated = bitmap.copy(Bitmap.Config.ARGB_8888, true)
        val canvas = Canvas(annotated)
        val paint = Paint().apply {
            color = Color.argb(217, 255, 61, 61) // #FF3D3D, alpha 0.85
            style = Paint.Style.STROKE
            strokeWidth = BOX_THICKNESS
        }
        val pad = BOX_PAD
        canvas.drawRect(
            (box.left - pad).toFloat(),
            (box.top - pad).toFloat(),
            (box.right + pad).toFloat(),
            (box.bottom + pad).toFloat(),
            paint
        )
        return annotated.toJpeg()
    }

    private fun Bitmap.toJpeg(): ByteArray {
        val out = ByteArrayOutputStream()
        compress(Bitmap.CompressFormat.JPEG, JPEG_QUALITY, out)
        return out.toByteArray()
    }

    fun stop() {
        scope.cancel()
        faceDetector.close()
    }
}

// Extensao para usar com InputImage.fromBitmap() no FaceDetector
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.face.FaceDetection
import com.google.mlkit.vision.face.FaceDetectorOptions
import kotlinx.coroutines.tasks.await

val FaceDetector.detector get() = FaceDetection.getClient(
    FaceDetectorOptions.Builder()
        .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_FAST)
        .setLandmarkMode(FaceDetectorOptions.LANDMARK_MODE_NONE)
        .setClassificationMode(FaceDetectorOptions.CLASSIFICATION_MODE_NONE)
        .setMinFaceSize(0.01f)
        .build()
)
```

> **Nota:** O `FaceDetector` precisa expor o `detector` interno. Refatorar `FaceDetector.kt` para expor o campo `detector` publicamente (já está assim no código acima), ou usar o metodo `detect(bitmap)` diretamente sem o `ImageProxy`.

**Versão final limpa do FaceDetector.kt** (sem duplicata):

```kotlin
package io.visio.glass.camera

import android.graphics.Bitmap
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.face.FaceDetection
import com.google.mlkit.vision.face.FaceDetectorOptions
import com.google.mlkit.vision.face.FaceDetector as MlKitFaceDetector
import kotlinx.coroutines.tasks.await
import android.graphics.Rect

class FaceDetector {

    val detector: MlKitFaceDetector = FaceDetection.getClient(
        FaceDetectorOptions.Builder()
            .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_FAST)
            .setLandmarkMode(FaceDetectorOptions.LANDMARK_MODE_NONE)
            .setClassificationMode(FaceDetectorOptions.CLASSIFICATION_MODE_NONE)
            .setMinFaceSize(0.01f)
            .build()
    )

    suspend fun detect(bitmap: Bitmap): Rect? {
        val image = InputImage.fromBitmap(bitmap, 0)
        val faces = detector.process(image).await()
        return faces.firstOrNull()?.boundingBox
    }

    fun close() = detector.close()
}
```

E no `CameraCapturePipeline.kt`, no `analyzeFrame`, usar `faceDetector.detect(bitmap)` diretamente.

**Step 3: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/camera/
git commit -m "feat(glass): add FaceDetector (ML Kit) and CameraCapturePipeline (CameraX 1fps)"
```

---

## Task 6: FrameUploader

**Files:**
- Create: `app/src/main/java/io/visio/glass/camera/FrameUploader.kt`

**Step 1: Criar FrameUploader.kt**

Referencia: `unity/Assets/Scripts/FrameSender.cs` metodo `SendFrame`.

```kotlin
package io.visio.glass.camera

import android.util.Log
import io.visio.glass.BuildConfig
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.util.concurrent.TimeUnit

class FrameUploader(private val getToken: () -> String?) {

    companion object {
        private const val TAG = "FrameUploader"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .readTimeout(10, TimeUnit.SECONDS)
        .build()

    suspend fun upload(
        cropJpeg: ByteArray,
        fullJpeg: ByteArray?,
        serialNumber: String
    ): Boolean = withContext(Dispatchers.IO) {
        try {
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("serialNumber", serialNumber)
                .addFormDataPart(
                    "croppedImage", "crop.jpg",
                    cropJpeg.toRequestBody("image/jpeg".toMediaType())
                )
                .apply {
                    if (fullJpeg != null) {
                        addFormDataPart(
                            "fullImage", "full.jpg",
                            fullJpeg.toRequestBody("image/jpeg".toMediaType())
                        )
                    }
                }
                .build()

            val request = Request.Builder()
                .url("${BuildConfig.BASE_WEBHOOK_URL}/webhooks/camera-events")
                .header("x-provider", "glass")
                .apply { getToken()?.let { header("Authorization", "Bearer $it") } }
                .post(body)
                .build()

            val response = client.newCall(request).execute()
            val ok = response.isSuccessful
            Log.d(TAG, "Upload ${if (ok) "OK" else "FAIL"} (${response.code})")
            ok
        } catch (e: Exception) {
            Log.e(TAG, "Upload error: ${e.message}")
            false
        }
    }
}
```

**Step 2: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/camera/FrameUploader.kt
git commit -m "feat(glass): add FrameUploader — OkHttp multipart POST com x-provider:glass"
```

---

## Task 7: Layouts XML

**Files:**
- Create: `app/src/main/res/layout/activity_visio.xml`
- Create: `app/src/main/res/layout/view_alert_popup.xml`
- Create: `app/src/main/res/layout/view_gallery.xml`
- Create: `app/src/main/res/layout/view_debug_overlay.xml`
- Create: `app/src/main/res/layout/view_system_monitor.xml`

**Step 1: activity_visio.xml** — container raiz com layers de overlay

```xml
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/root"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#000000">

    <!-- Preview invisivel da camera (necessario para CameraX lifecycle) -->
    <androidx.camera.view.PreviewView
        android:id="@+id/camera_preview"
        android:layout_width="1px"
        android:layout_height="1px"
        android:visibility="invisible" />

    <!-- Alert popup — fullscreen, inicialmente invisivel -->
    <include
        android:id="@+id/alert_popup"
        layout="@layout/view_alert_popup"
        android:visibility="gone" />

    <!-- Gallery — fullscreen, inicialmente invisivel -->
    <include
        android:id="@+id/gallery_view"
        layout="@layout/view_gallery"
        android:visibility="gone" />

</FrameLayout>
```

**Step 2: view_alert_popup.xml** — popup fullscreen de alerta

```xml
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#CC000000">

    <!-- Screen flash (overlay colorido que faz fade out) -->
    <View
        android:id="@+id/screen_flash"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:alpha="0" />

    <!-- Aneis pulsantes (3) — posicionados atras do card -->
    <View android:id="@+id/ring_1"
        android:layout_width="320dp" android:layout_height="320dp"
        android:layout_gravity="center"
        android:background="@drawable/ring_circle" />
    <View android:id="@+id/ring_2"
        android:layout_width="280dp" android:layout_height="280dp"
        android:layout_gravity="center"
        android:background="@drawable/ring_circle" />
    <View android:id="@+id/ring_3"
        android:layout_width="240dp" android:layout_height="240dp"
        android:layout_gravity="center"
        android:background="@drawable/ring_circle" />

    <!-- Glow atras do card -->
    <View
        android:id="@+id/glow_behind_card"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:alpha="0" />

    <!-- Card principal -->
    <androidx.constraintlayout.widget.ConstraintLayout
        android:id="@+id/card"
        android:layout_width="680dp"
        android:layout_height="380dp"
        android:layout_gravity="center"
        android:background="#1A1A2E"
        android:elevation="8dp">

        <!-- Scan lines (5) — linhas horizontais animadas -->
        <View android:id="@+id/scan_line_1"
            android:layout_width="match_parent" android:layout_height="2dp"
            android:background="#80FFFFFF"
            android:scaleX="0"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent" />
        <View android:id="@+id/scan_line_2"
            android:layout_width="match_parent" android:layout_height="2dp"
            android:background="#60FFFFFF"
            android:scaleX="0"
            android:layout_marginTop="70dp"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent" />
        <View android:id="@+id/scan_line_3"
            android:layout_width="match_parent" android:layout_height="2dp"
            android:background="#40FFFFFF"
            android:scaleX="0"
            android:layout_marginTop="140dp"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent" />
        <View android:id="@+id/scan_line_4"
            android:layout_width="match_parent" android:layout_height="2dp"
            android:background="#30FFFFFF"
            android:scaleX="0"
            android:layout_marginTop="210dp"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent" />
        <View android:id="@+id/scan_line_5"
            android:layout_width="match_parent" android:layout_height="2dp"
            android:background="#20FFFFFF"
            android:scaleX="0"
            android:layout_marginTop="280dp"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent" />

        <!-- Header badge -->
        <TextView
            android:id="@+id/header_label"
            android:layout_width="wrap_content"
            android:layout_height="36dp"
            android:paddingHorizontal="12dp"
            android:gravity="center"
            android:textColor="#000000"
            android:textSize="14sp"
            android:textStyle="bold"
            android:background="#FFFFFF"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent"
            android:layout_marginTop="12dp"
            android:layout_marginStart="12dp" />

        <!-- Dot pulsante -->
        <View
            android:id="@+id/header_dot"
            android:layout_width="12dp"
            android:layout_height="12dp"
            android:background="@drawable/ring_circle"
            app:layout_constraintTop_toTopOf="@id/header_label"
            app:layout_constraintBottom_toBottomOf="@id/header_label"
            app:layout_constraintStart_toEndOf="@id/header_label"
            android:layout_marginStart="8dp" />

        <!-- Face image (esquerda) com scan line vertical -->
        <ImageView
            android:id="@+id/face_image"
            android:layout_width="160dp"
            android:layout_height="200dp"
            android:scaleType="centerCrop"
            android:background="#262626"
            app:layout_constraintTop_toBottomOf="@id/header_label"
            app:layout_constraintStart_toStartOf="parent"
            android:layout_marginTop="8dp"
            android:layout_marginStart="12dp" />

        <!-- Scan line na face (ping-pong vertical) -->
        <View
            android:id="@+id/scan_face_line"
            android:layout_width="160dp"
            android:layout_height="3dp"
            android:background="#CC00BFFF"
            app:layout_constraintTop_toTopOf="@id/face_image"
            app:layout_constraintStart_toStartOf="@id/face_image" />

        <!-- Body image (ao lado da face) com scan line horizontal -->
        <ImageView
            android:id="@+id/body_image"
            android:layout_width="120dp"
            android:layout_height="200dp"
            android:scaleType="centerCrop"
            android:background="#262626"
            app:layout_constraintTop_toTopOf="@id/face_image"
            app:layout_constraintStart_toEndOf="@id/face_image"
            android:layout_marginStart="8dp" />

        <!-- Scan line no corpo (ping-pong horizontal) -->
        <View
            android:id="@+id/scan_body_line"
            android:layout_width="3dp"
            android:layout_height="200dp"
            android:background="#CC00BFFF"
            app:layout_constraintTop_toTopOf="@id/body_image"
            app:layout_constraintStart_toStartOf="@id/body_image" />

        <!-- Info: nome, localizacao, tempo, descricao -->
        <TextView
            android:id="@+id/name_text"
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:textColor="#FFFFFF"
            android:textSize="18sp"
            android:textStyle="bold"
            app:layout_constraintTop_toBottomOf="@id/header_label"
            app:layout_constraintStart_toEndOf="@id/body_image"
            app:layout_constraintEnd_toEndOf="parent"
            android:layout_marginTop="8dp"
            android:layout_marginStart="12dp"
            android:layout_marginEnd="12dp" />

        <TextView
            android:id="@+id/location_text"
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:textColor="#AAAAAA"
            android:textSize="13sp"
            app:layout_constraintTop_toBottomOf="@id/name_text"
            app:layout_constraintStart_toStartOf="@id/name_text"
            app:layout_constraintEnd_toEndOf="parent"
            android:layout_marginEnd="12dp"
            android:layout_marginTop="4dp" />

        <TextView
            android:id="@+id/time_text"
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:textColor="#888888"
            android:textSize="12sp"
            app:layout_constraintTop_toBottomOf="@id/location_text"
            app:layout_constraintStart_toStartOf="@id/name_text"
            app:layout_constraintEnd_toEndOf="parent"
            android:layout_marginEnd="12dp"
            android:layout_marginTop="2dp" />

        <TextView
            android:id="@+id/description_text"
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:textColor="#CCCCCC"
            android:textSize="13sp"
            app:layout_constraintTop_toBottomOf="@id/time_text"
            app:layout_constraintStart_toStartOf="@id/name_text"
            app:layout_constraintEnd_toEndOf="parent"
            android:layout_marginEnd="12dp"
            android:layout_marginTop="8dp" />

        <!-- Confidence bar -->
        <FrameLayout
            android:id="@+id/confidence_track"
            android:layout_width="0dp"
            android:layout_height="8dp"
            android:background="#333333"
            app:layout_constraintTop_toBottomOf="@id/description_text"
            app:layout_constraintStart_toStartOf="@id/name_text"
            app:layout_constraintEnd_toEndOf="parent"
            android:layout_marginEnd="12dp"
            android:layout_marginTop="10dp">

            <View
                android:id="@+id/confidence_fill"
                android:layout_width="0dp"
                android:layout_height="match_parent" />

        </FrameLayout>

        <TextView
            android:id="@+id/confidence_label"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textSize="12sp"
            android:textStyle="bold"
            app:layout_constraintTop_toBottomOf="@id/confidence_track"
            app:layout_constraintStart_toStartOf="@id/confidence_track"
            android:layout_marginTop="2dp" />

    </androidx.constraintlayout.widget.ConstraintLayout>

</FrameLayout>
```

Criar tambem `res/drawable/ring_circle.xml`:

```xml
<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android"
    android:shape="ring"
    android:innerRadiusRatio="2.5"
    android:thickness="2dp"
    android:useLevel="false">
    <solid android:color="#60FFFFFF" />
</shape>
```

**Step 3: view_gallery.xml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#EB000000">

    <TextView
        android:id="@+id/gallery_title"
        android:layout_width="match_parent"
        android:layout_height="40dp"
        android:gravity="center"
        android:textColor="#FFFFFF"
        android:textSize="14sp"
        android:textStyle="bold"
        android:layout_gravity="top" />

    <!-- Borda colorida atras do crop -->
    <FrameLayout
        android:id="@+id/crop_border"
        android:layout_width="0dp"
        android:layout_height="match_parent"
        android:layout_marginTop="40dp"
        android:layout_marginStart="5dp"
        android:layout_marginBottom="5dp"
        android:layout_marginEnd="3dp">
        <!-- largura definida programaticamente: 60% da tela -->
    </FrameLayout>

    <ImageView
        android:id="@+id/gallery_crop"
        android:layout_width="0dp"
        android:layout_height="match_parent"
        android:layout_marginTop="43dp"
        android:layout_marginStart="8dp"
        android:layout_marginBottom="8dp"
        android:scaleType="fitCenter" />

    <ImageView
        android:id="@+id/gallery_full"
        android:layout_width="0dp"
        android:layout_height="match_parent"
        android:layout_marginTop="43dp"
        android:layout_marginBottom="8dp"
        android:layout_marginEnd="8dp"
        android:scaleType="fitCenter" />

</FrameLayout>
```

> Nota: as larguras de `gallery_crop` (60%) e `gallery_full` (40%) sao definidas programaticamente em `GalleryView.kt` apos `onLayout`.

**Step 4: view_debug_overlay.xml** — overlay WindowManager bottom-left

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/debug_overlay_root"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:padding="4dp">
    <!-- 10 TextViews gerados programaticamente em DebugOverlayView.kt -->
</LinearLayout>
```

**Step 5: view_system_monitor.xml** — widget bottom-right

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:background="#FFFFFFFF"
    android:padding="6dp">

    <TextView
        android:id="@+id/batt_text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:textSize="13sp"
        android:textStyle="bold"
        android:fontFamily="monospace"
        android:text="Bat  --" />

    <TextView
        android:id="@+id/fps_text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:textSize="13sp"
        android:textStyle="bold"
        android:fontFamily="monospace"
        android:text="FPS  --" />

    <TextView
        android:id="@+id/temp_text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:textSize="13sp"
        android:textStyle="bold"
        android:fontFamily="monospace"
        android:text="Temp --" />

</LinearLayout>
```

**Step 6: Adicionar ConstraintLayout ao build.gradle.kts**

```kotlin
// Adicionar na secao dependencies de app/build.gradle.kts:
implementation("androidx.constraintlayout:constraintlayout:2.1.4")
```

**Step 7: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/res/
git add repos/inmo-air3/android/app/build.gradle.kts
git commit -m "feat(glass): add XML layouts — alert popup, gallery, debug overlay, system monitor"
```

---

## Task 8: DebugOverlayView + SystemMonitorWidget

**Files:**
- Create: `app/src/main/java/io/visio/glass/ui/DebugOverlayView.kt`
- Create: `app/src/main/java/io/visio/glass/ui/SystemMonitorWidget.kt`

**Step 1: Criar DebugOverlayView.kt**

Referencia: `unity/Assets/Scripts/DebugPanel.cs`

```kotlin
package io.visio.glass.ui

import android.content.Context
import android.graphics.Color
import android.graphics.PixelFormat
import android.os.Handler
import android.os.Looper
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat

private data class DebugEntry(
    val timestamp: String,
    var hasFace: Boolean = false,
    var skipped: Boolean = false,
    var sent: Boolean? = null,        // null=pending, true=ok, false=fail
    var elapsedSec: Float = -1f,
    val captureTimeMs: Long = System.currentTimeMillis(),
    val highlightUntilMs: Long = System.currentTimeMillis() + 4_000L
) {
    val text: String get() = when {
        skipped -> "$timestamp - sem analise"
        hasFace -> when (sent) {
            null  -> "$timestamp - face detect - ..."
            true  -> "$timestamp - face detect - send" + if (elapsedSec >= 0) " (${String.format("%.1f", elapsedSec)}s)" else ""
            false -> "$timestamp - face detect - fail" + if (elapsedSec >= 0) " (${String.format("%.1f", elapsedSec)}s)" else ""
        }
        else -> "$timestamp - no face" + if (elapsedSec >= 0) " (${String.format("%.1f", elapsedSec)}s)" else ""
    }

    fun color(): Int {
        val now = System.currentTimeMillis()
        return when {
            now < highlightUntilMs         -> Color.CYAN
            skipped                        -> Color.argb(255, 128, 128, 128)
            hasFace && sent == true        -> Color.argb(255, 100, 255, 100)
            hasFace && sent == false       -> Color.argb(255, 255, 100, 100)
            else                           -> Color.argb(255, 190, 190, 190)
        }
    }
}

class DebugOverlayView(private val context: Context) {

    private val windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    private val handler = Handler(Looper.getMainLooper())
    private val entries = ArrayDeque<DebugEntry>(10)
    private val rows = mutableListOf<TextView>()
    private lateinit var container: LinearLayout
    private var isAttached = false
    var isVisible = false
        private set

    init { buildView() }

    private fun buildView() {
        container = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(4, 4, 4, 4)
        }
        for (i in 0 until 10) {
            val tv = TextView(context).apply {
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f)
                typeface = android.graphics.Typeface.MONOSPACE
                visibility = View.GONE
                setShadowLayer(2f, 1f, 1f, Color.BLACK)
            }
            container.addView(tv, 0) // inserir no topo — mais novo fica embaixo
            rows.add(tv)
        }
    }

    fun attach() {
        if (isAttached) return
        val params = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or
                    WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.BOTTOM or Gravity.START
            x = 8
            y = 8
        }
        windowManager.addView(container, params)
        isAttached = true
        container.visibility = View.INVISIBLE // começa invisivel
    }

    fun detach() {
        if (isAttached) {
            windowManager.removeView(container)
            isAttached = false
        }
    }

    fun toggle() {
        isVisible = !isVisible
        container.visibility = if (isVisible) View.VISIBLE else View.INVISIBLE
    }

    fun onFrameCaptured(ts: String) {
        handler.post {
            addEntry(DebugEntry(timestamp = ts))
            refresh()
        }
    }

    fun onFaceDetected(ts: String) {
        handler.post {
            entries.find { it.timestamp == ts }?.hasFace = true
            refresh()
        }
    }

    fun onFrameSent(ts: String, success: Boolean) {
        handler.post {
            val e = entries.find { it.timestamp == ts && it.hasFace }
            if (e != null) {
                e.sent = success
                e.elapsedSec = (System.currentTimeMillis() - e.captureTimeMs) / 1000f
            }
            refresh()
        }
    }

    fun onNoFace(ts: String, elapsedSec: Float) {
        handler.post {
            entries.find { it.timestamp == ts }?.elapsedSec = elapsedSec
            refresh()
        }
    }

    fun onFrameSkipped(ts: String) {
        handler.post {
            val e = entries.find { it.timestamp == ts }
            if (e != null) e.skipped = true
            else addEntry(DebugEntry(timestamp = ts, skipped = true))
            refresh()
        }
    }

    private fun addEntry(entry: DebugEntry) {
        entries.addFirst(entry)
        if (entries.size > 10) entries.removeLast()
    }

    private fun refresh() {
        if (!isVisible) return
        for (i in rows.indices) {
            val entry = entries.getOrNull(i)
            if (entry != null) {
                rows[i].text = entry.text
                rows[i].setTextColor(entry.color())
                rows[i].visibility = View.VISIBLE
            } else {
                rows[i].visibility = View.GONE
            }
        }
    }

    // Atualiza cores (highlight expira)
    fun tick() {
        handler.post { if (isVisible) refresh() }
    }
}
```

**Step 2: Criar SystemMonitorWidget.kt**

Referencia: `unity/Assets/Scripts/SystemMonitor.cs`

```kotlin
package io.visio.glass.ui

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.Color
import android.graphics.PixelFormat
import android.os.BatteryManager
import android.os.Handler
import android.os.Looper
import android.os.PowerManager
import android.view.Gravity
import android.view.LayoutInflater
import android.view.WindowManager
import android.widget.TextView
import io.visio.glass.R
import kotlinx.coroutines.*

class SystemMonitorWidget(private val context: Context) {

    private val windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    private val handler = Handler(Looper.getMainLooper())
    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    private lateinit var battText: TextView
    private lateinit var fpsText: TextView
    private lateinit var tempText: TextView
    private lateinit var rootView: android.view.View

    private var battPct = -1
    private var battFirstPct = -1
    private var battFirstTimeMs = -1L
    private var battDrainH = Float.NaN

    private var fpsSmooth = -1f
    private var lastFrameMs = -1L

    private var thermalStatus = -1
    private var thermalHeadroom = Float.NaN

    private var isAttached = false

    init { buildView() }

    private fun buildView() {
        rootView = LayoutInflater.from(context).inflate(R.layout.view_system_monitor, null)
        battText = rootView.findViewById(R.id.batt_text)
        fpsText = rootView.findViewById(R.id.fps_text)
        tempText = rootView.findViewById(R.id.temp_text)
    }

    fun attach() {
        if (isAttached) return
        val params = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or
                    WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
            PixelFormat.OPAQUE
        ).apply {
            gravity = Gravity.BOTTOM or Gravity.END
            x = 8
            y = 8
        }
        windowManager.addView(rootView, params)
        isAttached = true
        rootView.visibility = android.view.View.INVISIBLE
        startPolling()
    }

    fun detach() {
        if (isAttached) {
            scope.cancel()
            windowManager.removeView(rootView)
            isAttached = false
        }
    }

    fun setVisible(visible: Boolean) {
        rootView.visibility = if (visible) android.view.View.VISIBLE else android.view.View.INVISIBLE
    }

    fun tickFrame() {
        val now = System.currentTimeMillis()
        if (lastFrameMs > 0) {
            val dt = (now - lastFrameMs) / 1000f
            val fps = if (dt > 0) 1f / dt else 60f
            fpsSmooth = if (fpsSmooth < 0) fps else fpsSmooth * 0.9f + fps * 0.1f
            refreshFps()
        }
        lastFrameMs = now
    }

    private fun startPolling() {
        scope.launch {
            while (isActive) {
                readBattery()
                refreshBatt()
                delay(5_000)
            }
        }
        scope.launch {
            while (isActive) {
                readThermal()
                refreshTemp()
                delay(8_000)
            }
        }
    }

    private fun readBattery() {
        try {
            val filter = IntentFilter(Intent.ACTION_BATTERY_CHANGED)
            val intent = context.registerReceiver(null, filter) ?: return
            val level = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1)
            val scale = intent.getIntExtra(BatteryManager.EXTRA_SCALE, 100)
            if (level >= 0) {
                battPct = (level * 100f / scale).toInt()
                val now = System.currentTimeMillis()
                if (battFirstTimeMs < 0) { battFirstTimeMs = now; battFirstPct = battPct }
                val elapsedH = (now - battFirstTimeMs) / 3_600_000f
                if (elapsedH >= (5f / 60f)) { // 5 minutos
                    battDrainH = (battFirstPct - battPct) / elapsedH
                }
            }
        } catch (e: Exception) { /* ignore */ }
    }

    private fun readThermal() {
        try {
            val pm = context.getSystemService(Context.POWER_SERVICE) as PowerManager
            thermalStatus = pm.currentThermalStatus
        } catch (e: Exception) { /* ignore */ }
        try {
            val tm = context.getSystemService("thermal") as? android.os.HardwarePropertiesManager
            // ThermalManager nao e diretamente acessivel sem API 31 cast
            // Usar reflexao ou simplesmente ignorar — thermal status ja e suficiente
        } catch (e: Exception) { /* ignore */ }
    }

    private fun refreshBatt() {
        handler.post {
            if (battPct < 0) {
                battText.text = "Bat  ERR"
                battText.setTextColor(Color.GRAY)
                return@post
            }
            val drain = if (battDrainH.isNaN()) "--" else String.format("%.1f%%/h", battDrainH)
            battText.text = "Bat  $battPct%  $drain"
            battText.setTextColor(when {
                battPct >= 60 -> Color.rgb(0, 190, 0)
                battPct >= 30 -> Color.rgb(255, 128, 0)
                else          -> Color.RED
            })
        }
    }

    private fun refreshFps() {
        handler.post {
            if (fpsSmooth < 0) return@post
            val label = when {
                fpsSmooth > 50 -> "Baixo"
                fpsSmooth > 30 -> "Medio"
                else           -> "Alto"
            }
            fpsText.text = "FPS  ${fpsSmooth.toInt()}  CPU $label"
            fpsText.setTextColor(when {
                fpsSmooth > 50 -> Color.rgb(13, 140, 13)
                fpsSmooth > 30 -> Color.rgb(191, 115, 0)
                else           -> Color.rgb(204, 13, 13)
            })
        }
    }

    private fun refreshTemp() {
        handler.post {
            if (!thermalHeadroom.isNaN()) {
                val pct = ((1f - thermalHeadroom) * 100).toInt()
                val label = when {
                    thermalHeadroom > 0.85f -> "Normal"
                    thermalHeadroom > 0.6f  -> "Morno"
                    else                    -> "ALTO"
                }
                tempText.text = "Temp $pct%  $label"
                tempText.setTextColor(when {
                    thermalHeadroom > 0.85f -> Color.rgb(0, 190, 0)
                    thermalHeadroom > 0.6f  -> Color.rgb(255, 128, 0)
                    else                    -> Color.RED
                })
                return@post
            }
            if (thermalStatus < 0) {
                tempText.text = "Temp ERR"
                tempText.setTextColor(Color.GRAY)
                return@post
            }
            val labels = arrayOf("Normal", "Morno", "Morno", "Alto", "CRITICO", "CRITICO", "CRITICO")
            val label = labels.getOrElse(thermalStatus) { "CRITICO" }
            tempText.text = "Temp  $label"
            tempText.setTextColor(when {
                thermalStatus <= 0 -> Color.rgb(0, 190, 0)
                thermalStatus <= 2 -> Color.rgb(255, 128, 0)
                else               -> Color.RED
            })
        }
    }
}
```

**Step 3: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/ui/
git commit -m "feat(glass): add DebugOverlayView and SystemMonitorWidget (WindowManager overlays)"
```

---

## Task 9: AlertPopupView

**Files:**
- Create: `app/src/main/java/io/visio/glass/ui/AlertPopupView.kt`

**Step 1: Criar AlertPopupView.kt**

Referencia: `unity/Assets/Scripts/ExplosiveAlertPopup.cs`

```kotlin
package io.visio.glass.ui

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Color
import android.os.Handler
import android.os.Looper
import android.view.View
import android.view.animation.AccelerateDecelerateInterpolator
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import com.bumptech.glide.Glide  // NOTE: adicionar Glide ao build.gradle se preferir; ou usar OkHttp diretamente
import io.visio.glass.BuildConfig
import io.visio.glass.R
import io.visio.glass.model.AlertPayload
import kotlinx.coroutines.*

class AlertPopupView(context: Context) : FrameLayout(context) {

    companion object {
        private val COLOR_WANTED  = Color.rgb(255, 61,  61)   // #FF3D3D
        private val COLOR_MISSING = Color.rgb(0,   191, 255)  // #00BFFF
        private val COLOR_SUSPECT = Color.rgb(255, 214, 0)    // #FFD600
        private val COLOR_DEFAULT = Color.rgb(0,   229, 255)  // #00E5FF
    }

    var isShowing = false
        private set

    private val handler = Handler(Looper.getMainLooper())
    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    private var timeAgoJob: Job? = null
    private var currentPayload: AlertPayload? = null

    // Views — atribuidas apos inflate
    private lateinit var card: View
    private lateinit var screenFlash: View
    private lateinit var rings: Array<View>
    private lateinit var scanLines: Array<View>
    private lateinit var glowBehindCard: View
    private lateinit var headerLabel: TextView
    private lateinit var headerDot: View
    private lateinit var faceImage: ImageView
    private lateinit var bodyImage: ImageView
    private lateinit var scanFaceLine: View
    private lateinit var scanBodyLine: View
    private lateinit var nameText: TextView
    private lateinit var locationText: TextView
    private lateinit var timeText: TextView
    private lateinit var descriptionText: TextView
    private lateinit var confidenceFill: View
    private lateinit var confidenceLabel: TextView

    init {
        inflate(context, R.layout.view_alert_popup, this)
        bindViews()
        visibility = View.GONE
    }

    private fun bindViews() {
        card             = findViewById(R.id.card)
        screenFlash      = findViewById(R.id.screen_flash)
        rings            = arrayOf(
            findViewById(R.id.ring_1),
            findViewById(R.id.ring_2),
            findViewById(R.id.ring_3)
        )
        scanLines        = arrayOf(
            findViewById(R.id.scan_line_1),
            findViewById(R.id.scan_line_2),
            findViewById(R.id.scan_line_3),
            findViewById(R.id.scan_line_4),
            findViewById(R.id.scan_line_5)
        )
        glowBehindCard   = findViewById(R.id.glow_behind_card)
        headerLabel      = findViewById(R.id.header_label)
        headerDot        = findViewById(R.id.header_dot)
        faceImage        = findViewById(R.id.face_image)
        bodyImage        = findViewById(R.id.body_image)
        scanFaceLine     = findViewById(R.id.scan_face_line)
        scanBodyLine     = findViewById(R.id.scan_body_line)
        nameText         = findViewById(R.id.name_text)
        locationText     = findViewById(R.id.location_text)
        timeText         = findViewById(R.id.time_text)
        descriptionText  = findViewById(R.id.description_text)
        confidenceFill   = findViewById(R.id.confidence_fill)
        confidenceLabel  = findViewById(R.id.confidence_label)
    }

    fun show(payload: AlertPayload) {
        dismiss()
        currentPayload = payload
        visibility = View.VISIBLE
        isShowing = true

        val typeColor = typeColor(payload)
        populateData(payload, typeColor)
        loadImages(payload)
        playEntrance(typeColor)
        startContinuous(typeColor, payload)
    }

    fun dismiss() {
        isShowing = false
        timeAgoJob?.cancel()
        visibility = View.GONE
        currentPayload = null
    }

    private fun populateData(payload: AlertPayload, typeColor: Int) {
        faceImage.setImageDrawable(null)
        bodyImage.setImageDrawable(null)
        faceImage.setBackgroundColor(Color.rgb(38, 38, 38))
        bodyImage.setBackgroundColor(Color.rgb(38, 38, 38))

        headerLabel.text = getLabel(payload)
        headerLabel.setTextColor(Color.BLACK)
        headerLabel.setBackgroundColor(Color.WHITE)
        headerDot.setBackgroundColor(typeColor)
        card.setBackgroundColor(Color.rgb(26, 26, 46))

        nameText.text        = payload.facialData?.name ?: "-"
        locationText.text    = formatTimeAgo(payload.timestamp)
        timeText.text        = "Detectado as " + formatTime(payload.timestamp)
        descriptionText.text = payload.facialData?.description ?: ""

        val score = payload.matchScore
        confidenceLabel.text = "${score.toInt()}%"
        confidenceLabel.setTextColor(darken(typeColor))

        // Confidence fill largura = 0 (animada depois)
        confidenceFill.layoutParams = (confidenceFill.layoutParams as FrameLayout.LayoutParams).also {
            it.width = 0
        }
        confidenceFill.setBackgroundColor(typeColor)
    }

    private fun loadImages(payload: AlertPayload) {
        val faceUrl = payload.cropUrl?.takeIf { it.isNotEmpty() } ?: payload.facialData?.fileUrl
        val bodyUrl = payload.snapshotUrl

        // Carrega imagens via OkHttp em coroutine (sem Glide para evitar dependencia extra)
        scope.launch(Dispatchers.IO) {
            faceUrl?.let { url ->
                try {
                    val bitmap = loadBitmap(url)
                    withContext(Dispatchers.Main) {
                        if (bitmap != null) faceImage.setImageBitmap(bitmap)
                    }
                } catch (e: Exception) { /* ignore */ }
            }
            bodyUrl?.let { url ->
                try {
                    val bitmap = loadBitmap(url)
                    withContext(Dispatchers.Main) {
                        if (bitmap != null) bodyImage.setImageBitmap(bitmap)
                    }
                } catch (e: Exception) { /* ignore */ }
            }
        }
    }

    private fun loadBitmap(url: String): android.graphics.Bitmap? {
        val client = okhttp3.OkHttpClient()
        val request = okhttp3.Request.Builder().url(url).build()
        val response = client.newCall(request).execute()
        if (!response.isSuccessful) return null
        val bytes = response.body?.bytes() ?: return null
        return android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
    }

    private fun playEntrance(typeColor: Int) {
        // Card: scale 1.5 -> 1.0, alpha 0 -> 1, 500ms
        card.scaleX = 1.5f; card.scaleY = 1.5f; card.alpha = 0f
        val scaleX = ObjectAnimator.ofFloat(card, "scaleX", 1.5f, 1.0f).apply { duration = 500 }
        val scaleY = ObjectAnimator.ofFloat(card, "scaleY", 1.5f, 1.0f).apply { duration = 500 }
        val alpha  = ObjectAnimator.ofFloat(card, "alpha",  0f,   1.0f).apply { duration = 500 }
        scaleX.interpolator = AccelerateDecelerateInterpolator()
        scaleY.interpolator = AccelerateDecelerateInterpolator()
        AnimatorSet().apply { playTogether(scaleX, scaleY, alpha); start() }

        // Screen flash
        screenFlash.setBackgroundColor(typeColor)
        screenFlash.alpha = 0.3f
        ObjectAnimator.ofFloat(screenFlash, "alpha", 0.3f, 0f).apply { duration = 500; start() }

        // 3 aneis: scale 1 -> 1.4, alpha 0.6 -> 0, delay 0/200/400ms, 1500ms
        rings.forEachIndexed { i, ring ->
            ring.scaleX = 1f; ring.scaleY = 1f; ring.alpha = 0.6f
            ring.setBackgroundColor(typeColor)
            val startDelay = (i * 200).toLong()
            val sX = ObjectAnimator.ofFloat(ring, "scaleX", 1f, 1.4f).apply { duration = 1500; this.startDelay = startDelay }
            val sY = ObjectAnimator.ofFloat(ring, "scaleY", 1f, 1.4f).apply { duration = 1500; this.startDelay = startDelay }
            val a  = ObjectAnimator.ofFloat(ring, "alpha",  0.6f, 0f).apply { duration = 1500; this.startDelay = startDelay }
            AnimatorSet().apply { playTogether(sX, sY, a); start() }
        }

        // 5 scan lines: scaleX 0 -> 1, delay 0/60/120/180/240ms, 300ms
        scanLines.forEachIndexed { i, line ->
            line.scaleX = 0f
            ObjectAnimator.ofFloat(line, "scaleX", 0f, 1f).apply {
                duration = 300
                startDelay = (i * 60).toLong()
                start()
            }
        }
    }

    private fun startContinuous(typeColor: Int, payload: AlertPayload) {
        // Confidence fill animada
        post {
            val trackWidth = (confidenceFill.parent as? View)?.width ?: 200
            val targetWidth = (trackWidth * payload.matchScore / 100f).toInt()
            ValueAnimator.ofInt(0, targetWidth).apply {
                duration = 1000
                addUpdateListener { anim ->
                    confidenceFill.layoutParams =
                        (confidenceFill.layoutParams as FrameLayout.LayoutParams).also {
                            it.width = anim.animatedValue as Int
                        }
                    confidenceFill.requestLayout()
                }
                start()
            }
        }

        // Header dot pulsando
        startPulse(headerDot, typeColor)

        // Glow atras do card pulsando
        startPulse(glowBehindCard, typeColor)

        // Scan lines ping-pong
        startScanFacePingPong()
        startScanBodyPingPong()

        // "Tempo decorrido" a cada 1s
        timeAgoJob = scope.launch {
            while (isActive) {
                locationText.text = formatTimeAgo(payload.timestamp)
                delay(1_000)
            }
        }
    }

    private fun startPulse(view: View, color: Int) {
        ValueAnimator.ofFloat(0f, 0.5f).apply {
            duration = 1000
            repeatCount = ValueAnimator.INFINITE
            repeatMode = ValueAnimator.REVERSE
            addUpdateListener { anim ->
                val alpha = anim.animatedValue as Float
                view.setBackgroundColor(Color.argb((alpha * 255).toInt(),
                    Color.red(color), Color.green(color), Color.blue(color)))
            }
            start()
        }
    }

    private fun startScanFacePingPong() {
        scanFaceLine.visibility = View.VISIBLE
        ValueAnimator.ofFloat(0f, 1f).apply {
            duration = 1000
            repeatCount = ValueAnimator.INFINITE
            repeatMode = ValueAnimator.REVERSE
            addUpdateListener { anim ->
                val fraction = anim.animatedValue as Float
                scanFaceLine.translationY = (faceImage.height * fraction)
            }
            start()
        }
    }

    private fun startScanBodyPingPong() {
        scanBodyLine.visibility = View.VISIBLE
        ValueAnimator.ofFloat(0f, 1f).apply {
            duration = 1500
            repeatCount = ValueAnimator.INFINITE
            repeatMode = ValueAnimator.REVERSE
            addUpdateListener { anim ->
                val fraction = anim.animatedValue as Float
                scanBodyLine.translationX = (bodyImage.width * fraction)
            }
            start()
        }
    }

    private fun typeColor(payload: AlertPayload): Int {
        val type = (payload.facialData?.interestType ?: "").uppercase()
        return when {
            type.contains("WANTED") || type.contains("BLACKLIST")  -> COLOR_WANTED
            type.contains("MISSING")                               -> COLOR_MISSING
            type.contains("SUSPECT") || type.contains("WATCHLIST") -> COLOR_SUSPECT
            else                                                   -> COLOR_DEFAULT
        }
    }

    private fun getLabel(payload: AlertPayload): String {
        val type = (payload.facialData?.interestType ?: "").uppercase()
        return when {
            type.contains("WANTED") || type.contains("BLACKLIST")  -> "PROCURADO"
            type.contains("MISSING")                               -> "DESAPARECIDO"
            type.contains("SUSPECT") || type.contains("WATCHLIST") -> "SUSPEITO"
            else                                                   -> "ALERTA"
        }
    }

    private fun formatTimeAgo(iso: String?): String {
        if (iso.isNullOrEmpty()) return "Agora"
        return try {
            val sdf = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", java.util.Locale.US)
            sdf.timeZone = java.util.TimeZone.getTimeZone("UTC")
            val dt = sdf.parse(iso) ?: return "Agora"
            val diff = System.currentTimeMillis() - dt.time
            when {
                diff < 5_000    -> "Agora mesmo"
                diff < 60_000   -> "Ha ${diff / 1000}s"
                diff < 3_600_000 -> "Ha ${diff / 60_000} min"
                else             -> "Ha ${diff / 3_600_000}h"
            }
        } catch (e: Exception) { "Agora" }
    }

    private fun formatTime(iso: String?): String {
        if (iso.isNullOrEmpty()) return "--:--:--"
        return try {
            val sdf = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", java.util.Locale.US)
            sdf.timeZone = java.util.TimeZone.getTimeZone("UTC")
            val dt = sdf.parse(iso) ?: return "--:--:--"
            java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(dt)
        } catch (e: Exception) { "--:--:--" }
    }

    private fun darken(color: Int): Int {
        return Color.rgb(
            (Color.red(color) * 0.6f).toInt(),
            (Color.green(color) * 0.6f).toInt(),
            (Color.blue(color) * 0.6f).toInt()
        )
    }
}
```

**Step 2: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/ui/AlertPopupView.kt
git commit -m "feat(glass): add AlertPopupView — fullscreen animated alert popup com paridade Unity"
```

---

## Task 10: GalleryView

**Files:**
- Create: `app/src/main/java/io/visio/glass/ui/GalleryView.kt`

**Step 1: Criar GalleryView.kt**

Referencia: `unity/Assets/Scripts/DebugPanel.cs` metodo `BuildGallery`

```kotlin
package io.visio.glass.ui

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import io.visio.glass.R

class GalleryView(context: Context) : FrameLayout(context) {

    private val titleText: TextView
    private val cropBorder: View
    private val cropImage: ImageView
    private val fullImage: ImageView

    var isShowing = false
        private set

    init {
        LayoutInflater.from(context).inflate(R.layout.view_gallery, this, true)
        titleText  = findViewById(R.id.gallery_title)
        cropBorder = findViewById(R.id.crop_border)
        cropImage  = findViewById(R.id.gallery_crop)
        fullImage  = findViewById(R.id.gallery_full)
        visibility = View.GONE
    }

    fun show(
        timestamp: String,
        cropJpeg: ByteArray,
        fullJpeg: ByteArray?,
        success: Boolean
    ) {
        val cropBitmap = BitmapFactory.decodeByteArray(cropJpeg, 0, cropJpeg.size)
        val fullBitmap = if (fullJpeg != null)
            BitmapFactory.decodeByteArray(fullJpeg, 0, fullJpeg.size)
        else null

        cropImage.setImageBitmap(cropBitmap)
        fullImage.setImageBitmap(fullBitmap)

        cropBorder.setBackgroundColor(
            if (success) Color.argb(217, 51, 230, 77)   // verde
            else         Color.argb(217, 230, 51, 51)   // vermelho
        )

        titleText.text = "Ultimo envio: $timestamp  (toque fecha)"

        // Definir larguras programaticamente: crop=60%, full=40%
        post {
            val totalW = width
            val cropW = (totalW * 0.6f).toInt()
            val fullW = totalW - cropW

            (cropBorder.layoutParams as FrameLayout.LayoutParams).apply {
                width = cropW - 6
                height = ViewGroup.LayoutParams.MATCH_PARENT
                topMargin = 43
                bottomMargin = 5
                leftMargin = 5
                rightMargin = 3
            }
            (cropImage.layoutParams as FrameLayout.LayoutParams).apply {
                width = cropW - 12
                height = ViewGroup.LayoutParams.MATCH_PARENT
                topMargin = 48; bottomMargin = 8; leftMargin = 8; rightMargin = 4
            }
            (fullImage.layoutParams as FrameLayout.LayoutParams).apply {
                width = fullW - 12
                height = ViewGroup.LayoutParams.MATCH_PARENT
                topMargin = 48; bottomMargin = 8; leftMargin = cropW + 4; rightMargin = 8
            }
            cropBorder.requestLayout()
            cropImage.requestLayout()
            fullImage.requestLayout()
        }

        visibility = View.VISIBLE
        isShowing = true
    }

    fun hide() {
        visibility = View.GONE
        isShowing = false
    }
}
```

**Step 2: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/ui/GalleryView.kt
git commit -m "feat(glass): add GalleryView — ultimo envio crop 60% / full 40%"
```

---

## Task 11: BootReceiver (flavor prod)

**Files:**
- Create: `app/src/prod/java/io/visio/glass/receiver/BootReceiver.kt`
- Modify: `app/src/main/AndroidManifest.xml` — adicionar `<receiver>` condicional

**Step 1: Criar BootReceiver.kt em src/prod/**

```kotlin
package io.visio.glass.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import io.visio.glass.VisioActivity

class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val action = intent.action ?: return
        if (action == Intent.ACTION_BOOT_COMPLETED ||
            action == "android.intent.action.QUICKBOOT_POWERON" ||
            action == Intent.ACTION_MY_PACKAGE_REPLACED) {
            val launch = Intent(context, VisioActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(launch)
        }
    }
}
```

**Step 2: Criar AndroidManifest para flavor prod**

Criar `app/src/prod/AndroidManifest.xml`:

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application>
        <receiver
            android:name=".receiver.BootReceiver"
            android:enabled="true"
            android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.BOOT_COMPLETED" />
                <action android:name="android.intent.action.QUICKBOOT_POWERON" />
                <action android:name="android.intent.action.MY_PACKAGE_REPLACED" />
            </intent-filter>
        </receiver>
    </application>
</manifest>
```

**Step 3: Commit**

```bash
git add repos/inmo-air3/android/app/src/prod/
git commit -m "feat(glass): add BootReceiver in prod flavor — auto-start on boot"
```

---

## Task 12: VisioActivity — wiring tudo

**Files:**
- Create: `app/src/main/java/io/visio/glass/VisioActivity.kt`

**Step 1: Criar VisioActivity.kt**

Esta e a classe central que conecta todos os componentes.

```kotlin
package io.visio.glass

import android.Manifest
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.util.Log
import android.view.KeyEvent
import android.view.WindowManager
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import io.visio.glass.auth.AuthRepository
import io.visio.glass.camera.CameraCapturePipeline
import io.visio.glass.camera.FaceDetector
import io.visio.glass.camera.FrameUploader
import io.visio.glass.databinding.ActivityVisioBinding
import io.visio.glass.ui.AlertPopupView
import io.visio.glass.ui.DebugOverlayView
import io.visio.glass.ui.GalleryView
import io.visio.glass.ui.SystemMonitorWidget
import io.visio.glass.websocket.AlertWebSocketManager
import kotlinx.coroutines.launch

class VisioActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "VisioActivity"
        private const val REQ_CAMERA = 1001
        private const val REQ_OVERLAY = 1002
    }

    private lateinit var binding: ActivityVisioBinding

    // Componentes
    private lateinit var authRepository: AuthRepository
    private lateinit var webSocketManager: AlertWebSocketManager
    private lateinit var faceDetector: FaceDetector
    private lateinit var cameraPipeline: CameraCapturePipeline
    private lateinit var frameUploader: FrameUploader
    private lateinit var debugOverlay: DebugOverlayView
    private lateinit var systemMonitor: SystemMonitorWidget
    private lateinit var alertPopup: AlertPopupView
    private lateinit var galleryView: GalleryView

    // Estado da galeria (ultimo envio)
    private var lastCropJpeg: ByteArray? = null
    private var lastFullJpeg: ByteArray? = null
    private var lastTs: String? = null
    private var lastSuccess: Boolean = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Forcar brilho maximo — resolve problema ATW do SDK INMO
        window.attributes = window.attributes.also { it.screenBrightness = 1.0f }
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)

        binding = ActivityVisioBinding.inflate(layoutInflater)
        setContentView(binding.root)

        authRepository = AuthRepository(this)
        webSocketManager = AlertWebSocketManager()
        faceDetector = FaceDetector()
        cameraPipeline = CameraCapturePipeline(this, faceDetector)
        frameUploader = FrameUploader { authRepository.token }

        // Overlays WindowManager
        debugOverlay = DebugOverlayView(this)
        systemMonitor = SystemMonitorWidget(this)

        // Views na Activity
        alertPopup = AlertPopupView(this)
        galleryView = GalleryView(this)
        binding.root.addView(alertPopup)
        binding.root.addView(galleryView)

        requestOverlayPermission()
    }

    private fun requestOverlayPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            val intent = android.content.Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                android.net.Uri.parse("package:$packageName")
            )
            startActivityForResult(intent, REQ_OVERLAY)
        } else {
            onOverlayGranted()
        }
    }

    private fun onOverlayGranted() {
        debugOverlay.attach()
        systemMonitor.attach()
        requestCameraPermission()
    }

    private fun requestCameraPermission() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA)
            != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.CAMERA), REQ_CAMERA)
        } else {
            onCameraGranted()
        }
    }

    override fun onRequestPermissionsResult(req: Int, perms: Array<String>, grants: IntArray) {
        super.onRequestPermissionsResult(req, perms, grants)
        if (req == REQ_CAMERA && grants.firstOrNull() == PackageManager.PERMISSION_GRANTED) {
            onCameraGranted()
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: android.content.Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == REQ_OVERLAY) onOverlayGranted()
    }

    private fun onCameraGranted() {
        wireCameraPipeline()
        cameraPipeline.start(this)
        startAuth()
    }

    private fun startAuth() {
        val savedToken = authRepository.token
        if (savedToken != null && BuildConfig.AUTO_START) {
            Log.d(TAG, "Auto-login com token salvo")
            webSocketManager.connect(savedToken)
        } else {
            lifecycleScope.launch {
                val result = authRepository.login("admin@visio.io", "visio1234")
                result.onSuccess { token ->
                    Log.d(TAG, "Login OK")
                    webSocketManager.connect(token)
                }.onFailure { e ->
                    Log.e(TAG, "Login falhou: ${e.message}")
                    // Tentar novamente em 5s
                    kotlinx.coroutines.delay(5_000)
                    startAuth()
                }
            }
        }
        wireWebSocket()
    }

    private fun wireWebSocket() {
        webSocketManager.onAlertReceived = { payload ->
            runOnUiThread {
                Log.d(TAG, "Alerta recebido: id=${payload.id}")
                alertPopup.show(payload)
            }
        }
        webSocketManager.onConnectionChanged = { connected ->
            Log.d(TAG, "WS connected=$connected")
        }
    }

    private fun wireCameraPipeline() {
        cameraPipeline.onFrameCaptured = { ts ->
            debugOverlay.onFrameCaptured(ts)
            systemMonitor.tickFrame()
        }
        cameraPipeline.onFaceDetected = { ts, crop, full ->
            debugOverlay.onFaceDetected(ts)
            lastCropJpeg = crop
            lastFullJpeg = full
            lastTs = ts
            lifecycleScope.launch {
                val ok = frameUploader.upload(crop, full, BuildConfig.DEVICE_SERIAL)
                debugOverlay.onFrameSent(ts, ok)
                lastSuccess = ok
                cameraPipeline.onFrameSent?.invoke(ts, ok)
            }
        }
        cameraPipeline.onNoFace = { ts, elapsed ->
            debugOverlay.onNoFace(ts, elapsed)
        }
        cameraPipeline.onFrameSkipped = { ts ->
            debugOverlay.onFrameSkipped(ts)
        }
    }

    // Tick para refresh de cores do debug overlay (highlight expira em 4s)
    private val tickRunnable = object : Runnable {
        override fun run() {
            debugOverlay.tick()
            binding.root.postDelayed(this, 500)
        }
    }

    override fun onResume() {
        super.onResume()
        binding.root.postDelayed(tickRunnable, 500)
    }

    override fun onPause() {
        super.onPause()
        binding.root.removeCallbacks(tickRunnable)
    }

    override fun onDestroy() {
        super.onDestroy()
        webSocketManager.disconnect()
        cameraPipeline.stop()
        debugOverlay.detach()
        systemMonitor.detach()
    }

    // ── Input handling ──────────────────────────────────────────────────────

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        val action = event.action
        val keyCode = event.keyCode
        Log.d(TAG, "dispatchKeyEvent keyCode=$keyCode action=$action deviceId=${event.deviceId}")

        if (keyCode == KeyEvent.KEYCODE_VOLUME_UP) {
            if (action == KeyEvent.ACTION_DOWN) toggleDebugOverlay()
            return true
        }

        if (keyCode == KeyEvent.KEYCODE_VOLUME_DOWN) {
            // reservado
            return true
        }

        // Toque lateral dos oculos: KEYCODE_ENTER deviceId=5
        if (keyCode == KeyEvent.KEYCODE_ENTER && event.deviceId == 5) {
            if (action == KeyEvent.ACTION_DOWN) onGlassesTouch()
            return true
        }

        return super.dispatchKeyEvent(event)
    }

    private fun toggleDebugOverlay() {
        debugOverlay.toggle()
        systemMonitor.setVisible(debugOverlay.isVisible)
    }

    private fun onGlassesTouch() {
        when {
            alertPopup.isShowing  -> alertPopup.dismiss()
            galleryView.isShowing -> galleryView.hide()
            debugOverlay.isVisible -> {
                val crop = lastCropJpeg
                val ts = lastTs
                if (crop != null && ts != null) {
                    galleryView.show(ts, crop, lastFullJpeg, lastSuccess)
                }
            }
        }
    }
}
```

**Step 2: Verificar que o projeto compila**

```bash
cd repos/inmo-air3/android
./gradlew assembleDevDebug
```

Esperado: BUILD SUCCESSFUL. Corrigir eventuais erros de import ou falta de dependencia.

**Step 3: Commit**

```bash
git add repos/inmo-air3/android/app/src/main/java/io/visio/glass/VisioActivity.kt
git commit -m "feat(glass): add VisioActivity — integra todos os componentes, input handling"
```

---

## Task 13: Build e deploy no dispositivo

**Step 1: Conectar via ADB WiFi**

```bash
adb connect 192.168.1.8:43395
adb devices
```

Esperado: `192.168.1.8:43395  device`

**Step 2: Build flavor dev debug**

```bash
cd repos/inmo-air3/android
./gradlew assembleDevDebug
```

**Step 3: Instalar no dispositivo**

```bash
adb install -r app/build/outputs/apk/dev/debug/app-dev-debug.apk
```

**Step 4: Verificar logcat durante inicializacao**

```bash
adb logcat -s VisioActivity AuthRepository AlertWebSocketManager CameraCapturePipeline FaceDetector FrameUploader
```

Verificar sequencia esperada:
1. `VisioActivity: dispatchKeyEvent` — teclado funcionando
2. `AuthRepository: Login OK` — JWT obtido
3. `AlertWebSocketManager: Connected` — WS conectado
4. `CameraCapturePipeline: Camera bound` — câmera iniciada
5. `FaceDetector: detect(...)` — ML Kit rodando

**Step 5: Testar input manualmente**

- `adb shell input keyevent KEYCODE_VOLUME_UP` → debug overlay aparece
- `adb shell input keyevent KEYCODE_VOLUME_UP` → debug overlay some
- Toque lateral dos oculos (ENTER dev=5) → galeria (se houver envio)

**Step 6: Commit final**

```bash
git add -A
git commit -m "feat(glass): Android native app complete — paridade total com Unity"
```

---

## Checklist de paridade com Unity

Antes de considerar concluido, verificar cada item:

- [ ] Brilho maximo forcado em `onCreate` (`screenBrightness = 1.0f`)
- [ ] Camera captura a ~1fps
- [ ] ML Kit detecta face sem bridge de arquivo
- [ ] Upload multipart com `serialNumber`, `croppedImage`, `fullImage`, header `x-provider: glass`
- [ ] WebSocket conecta apos login com JWT no query param `?token=`
- [ ] Reconecta automaticamente a cada 5s
- [ ] Filtra por `event.alert` + `FACIAL_ALERT` + `matchFound:true` + `serialNumber`
- [ ] Popup aparece com animacao scale 1.5→1.0
- [ ] 3 aneis pulsantes com cor por tipo (WANTED=vermelho, MISSING=azul, SUSPECT=amarelo)
- [ ] 5 scan lines
- [ ] Confidence bar animada
- [ ] "Tempo decorrido" atualiza a cada 1s
- [ ] Dismiss do popup com toque lateral (ENTER dev=5)
- [ ] VolumeUp toggle overlay
- [ ] Galeria mostra crop 60% / full 40%
- [ ] Monitor de sistema: bateria, FPS, temperatura
- [ ] BootReceiver funciona no flavor prod
- [ ] Flavor dev: URL `api.dev.visio.io`, sem BootReceiver
