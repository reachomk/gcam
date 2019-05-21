.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    monitor-exit v1

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/PreviewStarter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 485
    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 486
    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 487
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v4

    .line 484
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/camcorder/camera/PreviewStarter;->startPreview(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 489
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
