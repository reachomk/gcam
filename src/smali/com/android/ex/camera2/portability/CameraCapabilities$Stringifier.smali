.class public final Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stringifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    if-nez p0, :cond_0

    .line 391
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    aget-object v0, v0, v1

    .line 396
    :goto_0
    return-object v0

    .line 394
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    if-nez p0, :cond_0

    .line 361
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    aget-object v0, v0, v1

    .line 366
    :goto_0
    return-object v0

    .line 364
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    if-nez p0, :cond_0

    .line 421
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    aget-object v0, v0, v1

    .line 426
    :goto_0
    return-object v0

    .line 424
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toApiCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toEnumCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
