.class final Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;
.super Lcom/google/android/apps/camera/proxy/camera2/AbstractCameraCaptureCallback;
.source "SnapshotTakerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;->this$1:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;

    invoke-direct {p0}, Lcom/google/android/apps/camera/proxy/camera2/AbstractCameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;->this$1:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$futureTotalCaptureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public final onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;->getReason()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCaptureFailed: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;->this$1:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$futureTotalCaptureResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onCaptureFailed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 255
    return-void
.end method

.method public final onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;->this$1:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$futureImageExposed:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method
