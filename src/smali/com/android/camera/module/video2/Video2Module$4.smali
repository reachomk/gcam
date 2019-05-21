.class final Lcom/android/camera/module/video2/Video2Module$4;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2Module;->openCamcorderDevice(Lcom/android/camera/module/video2/Video2ModuleUI;)V
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
        "Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$1600(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2Module$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2Module$State;->BACKGROUND:Lcom/android/camera/module/video2/Video2Module$State;

    if-ne v0, v2, :cond_0

    .line 548
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ignoring openCamcorderDevice failure because state is BACKGROUND"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    monitor-exit v1

    .line 558
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openCamcorderDevice onFailure: "

    invoke-static {v0, v2, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2Module;->access$1702(Lcom/android/camera/module/video2/Video2Module;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 553
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$800(Lcom/android/camera/module/video2/Video2Module;)V

    .line 554
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$900(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 524
    check-cast p1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    .line 1528
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openCamcorderDevice onSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$1600(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2Module$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2Module$State;->OPENING_CAMCORDER:Lcom/android/camera/module/video2/Video2Module$State;

    if-eq v0, v2, :cond_0

    .line 1532
    invoke-virtual {p1}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->close()V

    .line 1533
    monitor-exit v1

    .line 1541
    :goto_0
    return-void

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    sget-object v2, Lcom/android/camera/module/video2/Video2Module$State;->CAMCORDER_OPENED:Lcom/android/camera/module/video2/Video2Module$State;

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2Module;->access$1602(Lcom/android/camera/module/video2/Video2Module;Lcom/android/camera/module/video2/Video2Module$State;)Lcom/android/camera/module/video2/Video2Module$State;

    .line 1538
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/video2/Video2Module;->access$402(Lcom/android/camera/module/video2/Video2Module;Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    .line 1539
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->createCamcorderCaptureSession()V

    .line 1540
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$4;->this$0:Lcom/android/camera/module/video2/Video2Module;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2Module;->access$1702(Lcom/android/camera/module/video2/Video2Module;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1541
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
