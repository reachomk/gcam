.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$300(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2Sound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Sound;->muteRingtone()V

    .line 294
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 295
    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/camcorder/CamcorderCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-interface {v0, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSession;->startRecording(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;)V

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 338
    invoke-static {v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$900(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v2

    .line 296
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 339
    return-void
.end method
