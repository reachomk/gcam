.class public final Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;
.super Ljava/lang/Object;
.source "MediaRecorderStopperPersistentImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/MediaRecorderStopper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

.field private final previewRestarter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL0SJ5EPKMATQICLPN8OBIEHIN4EO_:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule;

.field private final stopExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "CdrMediaRecStop"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->stopExecutor:Ljava/util/concurrent/Executor;

    .line 33
    iput-object p2, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 34
    iput-object p3, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->previewRestarter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL0SJ5EPKMATQICLPN8OBIEHIN4EO_:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->previewRestarter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL0SJ5EPKMATQICLPN8OBIEHIN4EO_:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule;->restartPreview()V

    .line 43
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;->stopExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl$1;-><init>(Lcom/android/camera/camcorder/media/MediaRecorderStopperPersistentImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-object v0
.end method
