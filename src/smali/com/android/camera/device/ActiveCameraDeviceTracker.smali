.class public final Lcom/android/camera/device/ActiveCameraDeviceTracker;
.super Ljava/lang/Object;
.source "ActiveCameraDeviceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/ActiveCameraDeviceTracker$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeCamera:Lcom/google/android/apps/camera/device/CameraId;

.field private final lock:Ljava/lang/Object;

.field private previousCamera:Lcom/google/android/apps/camera/device/CameraId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ActvCamDevTrckr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->lock:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static instance()Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/android/camera/device/ActiveCameraDeviceTracker$Singleton;->INSTANCE:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    return-object v0
.end method


# virtual methods
.method public final getActiveOrPreviousCamera()Lcom/google/android/apps/camera/device/CameraId;
    .locals 5

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    monitor-exit v1

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    sget-object v0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->previousCamera:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Returning previously active camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->previousCamera:Lcom/google/android/apps/camera/device/CameraId;

    monitor-exit v1

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onCameraClosed(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    iput-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->previousCamera:Lcom/google/android/apps/camera/device/CameraId;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    .line 79
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onCameraOpening(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    iput-object v0, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->previousCamera:Lcom/google/android/apps/camera/device/CameraId;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Tracking active camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/android/camera/device/ActiveCameraDeviceTracker;->activeCamera:Lcom/google/android/apps/camera/device/CameraId;

    .line 70
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
