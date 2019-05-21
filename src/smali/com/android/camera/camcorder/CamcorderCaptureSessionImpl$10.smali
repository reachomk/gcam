.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->resetSession()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
        "TC;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    new-instance v2, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 525
    invoke-virtual {p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 526
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$2100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 527
    invoke-static {v5}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$2200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL6PBJEDKMURI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;-><init>(Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 523
    invoke-static {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$502(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 528
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-virtual {p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->isUsePersistentSurface()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 533
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 536
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/SnapshotTaker;

    invoke-interface {v0}, Lcom/android/camera/camcorder/camera/SnapshotTaker;->getImageReaderSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$2300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 539
    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Landroid/view/Surface;

    move-result-object v2

    .line 540
    invoke-virtual {p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v3

    .line 538
    invoke-interface {v1, v2, v3, v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;->createCameraCaptureSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 528
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    check-cast p1, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-direct {p0, p1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;->apply(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
