.class final Lcom/android/camera/app/CacheCameraInfoBehavior;
.super Ljava/lang/Object;
.source "CacheCameraInfoBehavior.java"

# interfaces
.implements Lcom/android/camera/behavior/Behavior;


# instance fields
.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method constructor <init>(Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/debug/trace/Trace;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/app/CacheCameraInfoBehavior;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 21
    iput-object p2, p0, Lcom/android/camera/app/CacheCameraInfoBehavior;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/app/CacheCameraInfoBehavior;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "#cacheDeviceInfo"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/app/CacheCameraInfoBehavior;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraManager;->findAllCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/device/CameraId;

    .line 40
    iget-object v2, p0, Lcom/android/camera/app/CacheCameraInfoBehavior;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CacheCameraInfoBehavior;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 43
    return-void
.end method
