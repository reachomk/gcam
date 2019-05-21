.class final Lcom/android/camera/burst/BurstControllerImpl$5;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "BurstControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstControllerImpl;->startAnalysis()Lcom/google/android/libraries/smartburst/selection/FrameDropper;
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
    .line 482
    iput-object p1, p0, Lcom/android/camera/burst/BurstControllerImpl$5;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

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
    .line 482
    check-cast p1, Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    .line 1485
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startAnalysis : error"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$5;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "BurstControllerImpl#startAnalysis_errorHandling"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$5;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$400(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$5;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1491
    return-void

    .line 1490
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$5;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method
