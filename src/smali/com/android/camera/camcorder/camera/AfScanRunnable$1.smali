.class final Lcom/android/camera/camcorder/camera/AfScanRunnable$1;
.super Ljava/lang/Object;
.source "AfScanRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/AfScanRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/AfScanRunnable;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/AfScanRunnable;->access$000(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/AfScanRunnable;->access$100(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    monitor-exit v1

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/AfScanRunnable;->access$500(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    .line 68
    invoke-static {v2}, Lcom/android/camera/camcorder/camera/AfScanRunnable;->access$200(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    .line 69
    invoke-static {v3}, Lcom/android/camera/camcorder/camera/AfScanRunnable;->access$300(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;->this$0:Lcom/android/camera/camcorder/camera/AfScanRunnable;

    .line 70
    invoke-static {v4}, Lcom/android/camera/camcorder/camera/AfScanRunnable;->access$400(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v4

    .line 67
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/camcorder/camera/RecordingRequestStarter;->sendRecordingRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 71
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
