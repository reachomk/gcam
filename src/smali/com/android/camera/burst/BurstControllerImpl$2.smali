.class final Lcom/android/camera/burst/BurstControllerImpl$2;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "BurstControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstControllerImpl;->processBurstResults(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/concurrency/ResultException;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstControllerImpl;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 374
    check-cast p1, Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    .line 1377
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processBurstResults : stopping previewer with error"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "BurstControllerImpl#processBurstResults_stopPreviewWithError"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1380
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$300(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/SmartBurstPreviewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/SmartBurstPreviewer;->stop()V

    .line 1381
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$300(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/SmartBurstPreviewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/SmartBurstPreviewer;->showError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1386
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processBurstResults : handling exception"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "BurstControllerImpl#processBurstResults_handleException"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1389
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstControllerImpl;->stopAndCancel()V

    .line 1390
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$400(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1392
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1393
    return-void

    .line 1383
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 1392
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$2;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method
