.class final Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;
.super Ljava/lang/Object;
.source "MediaRecorderStopperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->stopRecording(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;

.field private synthetic val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

.field final synthetic val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iput-object p3, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->access$200(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;-><init>(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :goto_1
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed when call CameraCaptureSession#abortCaptures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_1
.end method
