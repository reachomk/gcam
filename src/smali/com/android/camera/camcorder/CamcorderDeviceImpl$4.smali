.class final Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;
.super Ljava/lang/Object;
.source "CamcorderDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderDeviceImpl;->onCaptureSessionClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

.field final synthetic val$futureDeviceResetResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->val$futureDeviceResetResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$700(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$700(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not in ready state. Abort device reset task. mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    monitor-exit v1

    .line 451
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "start device reset task."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    .line 427
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$1100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/media/MediaRecorderPreparer;->prepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 428
    new-instance v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4$1;-><init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 451
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
