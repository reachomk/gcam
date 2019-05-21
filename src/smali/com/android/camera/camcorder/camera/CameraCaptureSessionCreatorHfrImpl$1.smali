.class final Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCreatorHfrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->createCameraCaptureSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;

.field final synthetic val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$previewSurface:Landroid/view/Surface;

.field private synthetic val$recordingSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$previewSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$recordingSurface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$000(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$100(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    monitor-exit v1

    .line 118
    :goto_0
    return-void

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createHfrCameraCaptureSession"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$previewSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$recordingSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$300(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v1

    new-instance v2, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1$1;-><init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
