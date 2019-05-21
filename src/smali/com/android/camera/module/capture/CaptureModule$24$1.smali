.class final Lcom/android/camera/module/capture/CaptureModule$24$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule$24;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$cameraChangeSession:Lcom/android/camera/stats/CameraChangeSession;

.field private synthetic val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic val$isFacingBack:Z

.field private synthetic val$wasFacingBack:Z


# direct methods
.method constructor <init>(Lcom/android/camera/stats/CameraChangeSession;ZZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$cameraChangeSession:Lcom/android/camera/stats/CameraChangeSession;

    iput-boolean p2, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$wasFacingBack:Z

    iput-boolean p3, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$isFacingBack:Z

    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 1473
    check-cast p1, Ljava/lang/Boolean;

    .line 2478
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2479
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$cameraChangeSession:Lcom/android/camera/stats/CameraChangeSession;

    invoke-virtual {v1}, Lcom/android/camera/stats/CameraChangeSession;->recordCameraChangeEnd()V

    .line 2481
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$wasFacingBack:Z

    if-eqz v2, :cond_2

    move v2, v0

    .line 2485
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$isFacingBack:Z

    if-eqz v4, :cond_0

    move v3, v0

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$cameraChangeSession:Lcom/android/camera/stats/CameraChangeSession;

    .line 2489
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraChangeSession;->getCameraChangeStartNs()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$cameraChangeSession:Lcom/android/camera/stats/CameraChangeSession;

    .line 2490
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraChangeSession;->getCameraChangeEndNs()J

    move-result-wide v6

    .line 2482
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/stats/UsageStatistics;->changeCameraEvent(IIJJ)V

    .line 2492
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2493
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24$1;->val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1473
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 2485
    goto :goto_0
.end method
