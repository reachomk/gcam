.class final Lcom/android/camera/camcorder/camera/PreviewStarter$1;
.super Ljava/lang/Object;
.source "PreviewStarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/PreviewStarter;->startPreview(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/PreviewStarter;

.field final synthetic val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

.field private synthetic val$cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

.field final synthetic val$futureSessionProxy:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$previewSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->this$0:Lcom/android/camera/camcorder/camera/PreviewStarter;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iput-object p3, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$previewSurface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    iput-object p5, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$futureSessionProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->this$0:Lcom/android/camera/camcorder/camera/PreviewStarter;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/PreviewStarter;->access$000(Lcom/android/camera/camcorder/camera/PreviewStarter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->this$0:Lcom/android/camera/camcorder/camera/PreviewStarter;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/PreviewStarter;->access$100(Lcom/android/camera/camcorder/camera/PreviewStarter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    monitor-exit v1

    .line 109
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/camera/camcorder/camera/PreviewStarter;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Send preview command"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->this$0:Lcom/android/camera/camcorder/camera/PreviewStarter;

    .line 83
    invoke-static {v0}, Lcom/android/camera/camcorder/camera/PreviewStarter;->access$300(Lcom/android/camera/camcorder/camera/PreviewStarter;)Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->createPreviewRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$previewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->addTarget(Landroid/view/Surface;)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->this$0:Lcom/android/camera/camcorder/camera/PreviewStarter;

    .line 89
    invoke-static {v2}, Lcom/android/camera/camcorder/camera/PreviewStarter;->access$400(Lcom/android/camera/camcorder/camera/PreviewStarter;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v2, v3, v0}, Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;->createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I

    .line 93
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 94
    invoke-virtual {v0}, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->getFirstFrameCompletionFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;-><init>(Lcom/android/camera/camcorder/camera/PreviewStarter$1;)V

    .line 93
    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$futureSessionProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    goto :goto_2
.end method
