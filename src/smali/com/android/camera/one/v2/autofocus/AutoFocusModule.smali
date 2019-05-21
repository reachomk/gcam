.class public final Lcom/android/camera/one/v2/autofocus/AutoFocusModule;
.super Ljava/lang/Object;
.source "AutoFocusModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSceneChangeSupported(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 190
    goto :goto_0
.end method


# virtual methods
.method public final provideAFControl(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/camera/one/v2/autofocus/TouchToFocus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;",
            ">;)",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocus;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;->isSceneChangeSupported(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    goto :goto_0
.end method

.method public final provideAFHoldSeconds(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)I
    .locals 1

    .prologue
    .line 143
    invoke-static {p1, p2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;->isSceneChangeSupported(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    .line 143
    goto :goto_0
.end method

.method public final provideAfRequestTransformer(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;",
            "Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1, p2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;->isSceneChangeSupported(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    invoke-static {p4}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_0
    move-object p4, p3

    .line 165
    goto :goto_0
.end method

.method public final provideSceneChangeRequestTransformer(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p2, p3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;->isSceneChangeSupported(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method
