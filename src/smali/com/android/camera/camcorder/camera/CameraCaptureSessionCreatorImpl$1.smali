.class final Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->createCameraCaptureSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;

.field final synthetic val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$mediaRecorderSurface:Landroid/view/Surface;

.field private synthetic val$optionalSnapshotSurface:Lcom/google/common/base/Optional;

.field private synthetic val$previewSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$previewSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$mediaRecorderSurface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$optionalSnapshotSurface:Lcom/google/common/base/Optional;

    iput-object p5, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$000(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$100(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    monitor-exit v1

    .line 117
    :goto_0
    return-void

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start create CameraCaptureSessionProxy"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$previewSurface:Landroid/view/Surface;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$mediaRecorderSurface:Landroid/view/Surface;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$optionalSnapshotSurface:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$optionalSnapshotSurface:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->this$0:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$300(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v0

    new-instance v2, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1$1;-><init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
