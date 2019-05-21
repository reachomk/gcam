.class final Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;
.super Ljava/lang/Object;
.source "CamcorderDeviceImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderDeviceImpl;->createCaptureSession(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Void;",
        "TC;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

.field private synthetic val$previewSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->val$previewSurface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply$5166KOBMC4NMOOBECSNLCRR9CGTIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONNAT39DGNM6RRECDQN4SJ5DPQ2UJ39EDQ6ARJ1C9M6AHJLEHQN4P9R()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 263
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "complete device reset task."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$200(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$200(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v2

    .line 269
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$300(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$300(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/SnapshotTaker;

    .line 273
    invoke-interface {v0}, Lcom/android/camera/camcorder/camera/SnapshotTaker;->getImageReaderSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$400(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->val$previewSurface:Landroid/view/Surface;

    invoke-interface {v1, v3, v2, v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;->createCameraCaptureSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    .line 260
    invoke-direct {p0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;->apply$5166KOBMC4NMOOBECSNLCRR9CGTIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONNAT39DGNM6RRECDQN4SJ5DPQ2UJ39EDQ6ARJ1C9M6AHJLEHQN4P9R()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
