.class final Lcom/android/camera/burst/BurstControllerImpl$6;
.super Lcom/google/android/libraries/smartburst/utils/VoidBiFunction;
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
        "Lcom/google/android/libraries/smartburst/utils/VoidBiFunction",
        "<",
        "Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;",
        "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstControllerImpl;

.field private synthetic val$executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstControllerImpl;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    iput-object p2, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->val$executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidBiFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 463
    check-cast p1, Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;

    check-cast p2, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1467
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startAnalysis : start postprocessing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$500(Lcom/android/camera/burst/BurstControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Burst stopped and canceled."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "BurstControllerImpl#startAnalysis_startPostProcessing"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    iget-object v1, p1, Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    iget-object v2, p1, Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->val$executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/camera/burst/BurstControllerImpl;->access$600(Lcom/android/camera/burst/BurstControllerImpl;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1477
    return-void

    .line 1476
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$6;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method
