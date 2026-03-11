# Alert Popup Layout Redesign — Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Reestruturar `view_alert_popup.xml` em 3 zonas (header / info strip / imagens), corrigindo aspect ratios de `face_image` (1:1) e `body_image` (16:9).

**Architecture:** Reescrever as Zones 2 e 3 do XML mantendo todos os IDs existentes (sem mudança no Kotlin). Zone 3 usa `layout_constraintDimensionRatio` para forçar proporções corretas. Zone 2 consolida os TextViews soltos num strip horizontal de 48dp.

**Tech Stack:** Android XML (ConstraintLayout), Kotlin (sem mudança lógica), ADB deploy

---

## Contexto de referência

- Design doc: `docs/plans/2026-03-09-alert-popup-layout-redesign.md`
- Layout: `repos/inmo-air3/android/app/src/main/res/layout/view_alert_popup.xml`
- Kotlin: `repos/inmo-air3/android/app/src/main/java/io/visio/glass/ui/AlertPopupView.kt`
- Build dir: `repos/inmo-air3/android/`
- Build cmd: `JAVA_HOME=$(/usr/libexec/java_home -v 17) ANDROID_HOME=/opt/homebrew/share/android-commandlinetools ./gradlew assembleDevDebug`
- Deploy: `adb -s YM00FCE5600628 install -r app/build/outputs/apk/dev/debug/app-dev-debug.apk && adb -s YM00FCE5600628 shell am start -n io.visio.glass/.VisioActivity`

---

### Task 1: Adicionar separadores e info strip ao XML

**Files:**
- Modify: `repos/inmo-air3/android/app/src/main/res/layout/view_alert_popup.xml`

**Contexto:** Hoje os TextViews (name_text, location_text, time_text, description_text, confidence_label, confidence_sub) ficam soltos num painel lateral. Precisamos agrupá-los num strip horizontal de 48dp logo abaixo do header.

**Step 1: Adicionar separator_1 (abaixo do header)**

Dentro do `ConstraintLayout` de id `card`, logo após o bloco de `scan_line_5`, adicionar:

```xml
<View
    android:id="@+id/separator_1"
    android:layout_width="0dp"
    android:layout_height="1dp"
    android:background="#30FFFFFF"
    app:layout_constraintTop_toBottomOf="@id/visio_label"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    android:layout_marginTop="8dp" />
```

**Step 2: Adicionar o info_strip (LinearLayout horizontal de 48dp)**

Logo após o separator_1:

```xml
<LinearLayout
    android:id="@+id/info_strip"
    android:layout_width="0dp"
    android:layout_height="48dp"
    android:orientation="horizontal"
    android:paddingStart="14dp"
    android:paddingEnd="14dp"
    app:layout_constraintTop_toBottomOf="@id/separator_1"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintEnd_toEndOf="parent">

    <!-- Esquerda: nome + descrição -->
    <LinearLayout
        android:layout_width="0dp"
        android:layout_height="match_parent"
        android:layout_weight="2"
        android:orientation="vertical"
        android:gravity="center_vertical">

        <TextView
            android:id="@+id/name_text"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textColor="#FFFFFF"
            android:textSize="16sp"
            android:textStyle="bold"
            android:maxLines="1"
            android:ellipsize="end" />

        <TextView
            android:id="@+id/description_text"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textColor="#AAAAAA"
            android:textSize="11sp"
            android:maxLines="1"
            android:ellipsize="end" />
    </LinearLayout>

    <!-- Centro: localização + hora -->
    <LinearLayout
        android:layout_width="0dp"
        android:layout_height="match_parent"
        android:layout_weight="2"
        android:orientation="vertical"
        android:gravity="center_vertical">

        <TextView
            android:id="@+id/location_text"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textColor="#AAAAAA"
            android:textSize="12sp"
            android:maxLines="1"
            android:ellipsize="end" />

        <TextView
            android:id="@+id/time_text"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textColor="#888888"
            android:textSize="11sp"
            android:maxLines="1" />
    </LinearLayout>

    <!-- Direita: confiança -->
    <LinearLayout
        android:layout_width="0dp"
        android:layout_height="match_parent"
        android:layout_weight="1"
        android:orientation="vertical"
        android:gravity="center_vertical|end">

        <TextView
            android:id="@+id/confidence_label"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textSize="22sp"
            android:textStyle="bold" />

        <TextView
            android:id="@+id/confidence_sub"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="de confiança"
            android:textColor="#888888"
            android:textSize="11sp" />
    </LinearLayout>

</LinearLayout>
```

**Step 3: Adicionar separator_2 (abaixo do info strip)**

```xml
<View
    android:id="@+id/separator_2"
    android:layout_width="0dp"
    android:layout_height="1dp"
    android:background="#30FFFFFF"
    app:layout_constraintTop_toBottomOf="@id/info_strip"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintEnd_toEndOf="parent" />
```

**Step 4: Remover os TextViews soltos antigos**

Remover do XML os seguintes elementos (eles agora estão dentro do info_strip):
- `TextView android:id="@+id/name_text"` (o antigo, fora do strip)
- `TextView android:id="@+id/location_text"`
- `TextView android:id="@+id/time_text"`
- `TextView android:id="@+id/description_text"`
- `TextView android:id="@+id/confidence_label"` (o antigo)
- `TextView android:id="@+id/confidence_sub"` (o antigo)

---

### Task 2: Corrigir aspect ratios das imagens (Zone 3)

**Files:**
- Modify: `repos/inmo-air3/android/app/src/main/res/layout/view_alert_popup.xml`

**Contexto:** `face_image` deve ser 1:1 (quadrado) e `body_image` deve preencher a largura restante com a mesma altura. Ambas ancoradas abaixo do `separator_2` até o fim do card.

**Step 1: Atualizar face_image**

Substituir o bloco atual de `face_image` por:

```xml
<ImageView
    android:id="@+id/face_image"
    android:layout_width="0dp"
    android:layout_height="0dp"
    android:scaleType="centerCrop"
    android:background="#262626"
    app:layout_constraintDimensionRatio="H,1:1"
    app:layout_constraintTop_toBottomOf="@id/separator_2"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintStart_toStartOf="parent"
    android:layout_marginTop="8dp"
    android:layout_marginBottom="8dp"
    android:layout_marginStart="14dp" />
```

> `layout_constraintDimensionRatio="H,1:1"` + `layout_width="0dp"` + constraints top/bottom = altura determina a largura (quadrado).

**Step 2: Atualizar body_image**

Substituir o bloco atual de `body_image` por:

```xml
<ImageView
    android:id="@+id/body_image"
    android:layout_width="0dp"
    android:layout_height="0dp"
    android:scaleType="centerCrop"
    android:background="#262626"
    app:layout_constraintTop_toTopOf="@id/face_image"
    app:layout_constraintBottom_toBottomOf="@id/face_image"
    app:layout_constraintStart_toEndOf="@id/face_image"
    app:layout_constraintEnd_toEndOf="parent"
    android:layout_marginStart="10dp"
    android:layout_marginEnd="14dp" />
```

**Step 3: Atualizar scan_face_line e scan_body_line**

`scan_face_line` (linha azul horizontal animada na face):
```xml
<View
    android:id="@+id/scan_face_line"
    android:layout_width="0dp"
    android:layout_height="3dp"
    android:background="#CC00BFFF"
    app:layout_constraintTop_toTopOf="@id/face_image"
    app:layout_constraintStart_toStartOf="@id/face_image"
    app:layout_constraintEnd_toEndOf="@id/face_image" />
```

`scan_body_line` (linha azul vertical animada no body):
```xml
<View
    android:id="@+id/scan_body_line"
    android:layout_width="3dp"
    android:layout_height="0dp"
    android:background="#CC00BFFF"
    app:layout_constraintTop_toTopOf="@id/body_image"
    app:layout_constraintBottom_toBottomOf="@id/body_image"
    app:layout_constraintStart_toStartOf="@id/body_image" />
```

---

### Task 3: Build e verificação visual

**Files:** nenhum novo

**Step 1: Build**

```bash
cd repos/inmo-air3/android
JAVA_HOME=$(/usr/libexec/java_home -v 17) ANDROID_HOME=/opt/homebrew/share/android-commandlinetools ./gradlew assembleDevDebug
```

Esperado: `BUILD SUCCESSFUL`

**Step 2: Deploy no óculos**

```bash
/opt/homebrew/share/android-commandlinetools/platform-tools/adb -s YM00FCE5600628 install -r app/build/outputs/apk/dev/debug/app-dev-debug.apk
/opt/homebrew/share/android-commandlinetools/platform-tools/adb -s YM00FCE5600628 shell am start -n io.visio.glass/.VisioActivity
```

**Step 3: Verificar layout**

Triggar um alerta facial (via WebSocket `FACIAL_ALERT`) e conferir:
- [ ] face_image aparece quadrada (sem barras pretas laterais)
- [ ] body_image preenche a largura restante sem distorção
- [ ] Info strip mostra nome, local, hora e confiança numa linha horizontal
- [ ] Separadores visíveis entre header ↔ strip ↔ imagens
- [ ] Animações (rings, scan lines) intactas

**Step 4: Commit**

```bash
git add app/src/main/res/layout/view_alert_popup.xml
git commit -m "fix(glass): redesign alert popup — 3-zone layout, correct image aspect ratios"
```
