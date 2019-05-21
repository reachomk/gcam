.class final Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2Shim.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;


# instance fields
.field private synthetic val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private synthetic val$closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private synthetic val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/SafeCloseable;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iput-object p3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 57
    return-void
.end method

.method public final onDisconnected()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been disconnected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 47
    return-void
.end method

.method public final onError(I)V
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encountered error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 67
    return-void
.end method

.method public final onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;->val$futureCameraDevice:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
