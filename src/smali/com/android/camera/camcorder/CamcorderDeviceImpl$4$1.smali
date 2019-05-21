.class final Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;
.super Ljava/lang/Object;
.source "CamcorderDeviceImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->val$futureDeviceResetResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 449
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 430
    check-cast p1, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 1433
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0, p1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$202(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 1435
    invoke-virtual {p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->isUsePersistentSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    new-instance v2, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 1438
    invoke-virtual {p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v4, v4, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    .line 1439
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$2300(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v5, v5, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    .line 1440
    invoke-static {v5}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$2400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8HINCQB3CL4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CP9N8OBKCL96ASRGDTN76PACD5PN8PBECLP3M___(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;-><init>(Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 1436
    invoke-static {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$502(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;->this$1:Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->val$futureDeviceResetResult:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1443
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
