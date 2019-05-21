.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/android/camera/camcorder/media/MediaRecorderStarter;Lcom/android/camera/camcorder/media/MediaRecorderStopper;Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/android/camera/camcorder/camera/RecordingRequestStarter;Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/one/v2/core/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignore restartPreview: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    monitor-exit v1

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/PreviewStarter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 174
    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 175
    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 176
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v4

    .line 173
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/camcorder/camera/PreviewStarter;->startPreview(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 178
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
