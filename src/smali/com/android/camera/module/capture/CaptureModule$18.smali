.class final Lcom/android/camera/module/capture/CaptureModule$18;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->startBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$18;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 829
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot start burst"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$18;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2500(Lcom/android/camera/module/capture/CaptureModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$18;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2600(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/storage/PeriodicStorageSpaceChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->stop()V

    .line 832
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 816
    check-cast p1, Ljava/lang/Boolean;

    .line 1819
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Burst was not started."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$18;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2500(Lcom/android/camera/module/capture/CaptureModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$18;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2600(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/storage/PeriodicStorageSpaceChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->stop()V

    .line 1823
    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
