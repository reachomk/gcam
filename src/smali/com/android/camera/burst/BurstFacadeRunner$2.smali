.class final Lcom/android/camera/burst/BurstFacadeRunner$2;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeRunner;->stop()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstFacadeRunner;

.field private synthetic val$mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeRunner$2;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeRunner$2;->val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    check-cast p1, Ljava/lang/Boolean;

    .line 1277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1282
    :cond_0
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v1

    .line 1283
    invoke-virtual {v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->markButtonReleaseTime()V

    .line 1286
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$2;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1287
    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$200(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstCaptureCommand;

    .line 1288
    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {v0}, Lcom/android/camera/burst/BurstCaptureCommand;->stopCapture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1296
    :goto_1
    new-instance v2, Lcom/android/camera/burst/BurstFacadeRunner$2$1;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/burst/BurstFacadeRunner$2$1;-><init>(Lcom/android/camera/burst/BurstFacadeRunner$2;Lcom/android/camera/stats/BurstCaptureReportAccumulator;)V

    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner$2;->val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0, v2, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 1292
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Trying to stop a burst when none is running."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1293
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1
.end method
