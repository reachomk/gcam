.class final Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;
.super Ljava/lang/Object;
.source "Video2CamcorderDeviceOpenerImpl.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->openCamcorderDevice(Lcom/android/camera/module/video2/Video2ModuleUI;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

.field private synthetic val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private synthetic val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    iput-object p2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 5

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

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

    .line 229
    :cond_0
    return-void
.end method

.method public final onDisconnected()V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

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

    .line 220
    :cond_0
    return-void
.end method

.method public final onError(I)V
    .locals 5

    .prologue
    .line 233
    invoke-static {}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Camera fatal error: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$100(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderDeviceCallback;->onCameraError()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

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

    goto :goto_0
.end method

.method public final onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;->val$futureCameraDeviceProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method
