.class public final Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;
.super Ljava/lang/Object;
.source "MediaRecorderStopperImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/MediaRecorderStopper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private final preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

.field private final stopExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "CdrMediaRecStop"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/HandlerExecutor;Ljava/util/concurrent/Executor;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 34
    iput-object p2, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->stopExecutor:Ljava/util/concurrent/Executor;

    .line 35
    iput-object p3, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->stopExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final stopRecording(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    new-instance v2, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;-><init>(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-object v0
.end method
