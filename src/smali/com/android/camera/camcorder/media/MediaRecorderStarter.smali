.class public final Lcom/android/camera/camcorder/media/MediaRecorderStarter;
.super Ljava/lang/Object;
.source "MediaRecorderStarter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private isClosed:Z

.field private final lock:Ljava/lang/Object;

.field private final preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

.field private final recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "CdrMediaRecStarter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/camcorder/camera/RecordingRequestStarter;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->lock:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 40
    iput-object p2, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/media/MediaRecorderStarter;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/media/MediaRecorderStarter;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->isClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/media/MediaRecorderStarter;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->isClosed:Z

    .line 99
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/camera/RecordingRequestStarter;->close()V

    .line 100
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final startRecording$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMJ31DPI74RR9CGNNCQB5ESNL6TBICPGM6P9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NK6OBDCLP62KJ5E1IM2T39DPJK6OBGEHQN4PA3C5M6OOJ1CDLJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2URB5CHKM2BQGE9IN0OBICLI4QPB4D5GL4PB3DTP68PBI8DGMOR32C5HMMEP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTG____(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;",
            "Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->isClosed:Z

    if-eqz v2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "MediaRecorder is closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 92
    :goto_0
    return-object v0

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    .line 65
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/camcorder/camera/RecordingRequestStarter;->sendRecordingRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;

    invoke-direct {v2, p0, p4, v0}, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;-><init>(Lcom/android/camera/camcorder/media/MediaRecorderStarter;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
