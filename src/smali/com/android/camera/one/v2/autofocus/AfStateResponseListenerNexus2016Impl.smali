.class public final Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl;
.super Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;
.source "AfStateResponseListenerNexus2016Impl.java"


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/aaa/AfStateMonitor;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;-><init>(Lcom/google/android/apps/camera/aaa/AfStateMonitor;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final isSceneChangeDetected(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    sget-object v0, Lcom/google/android/camera/experimental2016/ExperimentalKeys;->EXPERIMENTAL_CONTROL_AF_SCENE_CHANGE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 23
    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 22
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
