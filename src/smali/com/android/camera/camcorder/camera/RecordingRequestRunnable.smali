.class public final Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;
.super Ljava/lang/Object;
.source "RecordingRequestRunnable.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

.field private isClosed:Z

.field private final lock:Ljava/lang/Object;

.field private final preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

.field private final recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/RecordingRequestStarter",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/camcorder/camera/RecordingRequestStarter;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/camera/RecordingRequestStarter",
            "<TC;>;",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            "TC;",
            "Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->lock:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->isClosed:Z

    .line 28
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    .line 29
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 30
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 31
    iput-object p4, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 32
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->isClosed:Z

    .line 38
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->isClosed:Z

    if-eqz v0, :cond_0

    .line 45
    monitor-exit v1

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 49
    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v4, p0, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/camera/camcorder/camera/RecordingRequestStarter;->sendRecordingRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 54
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
