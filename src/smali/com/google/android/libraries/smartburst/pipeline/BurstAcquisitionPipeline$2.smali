.class final Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;
.super Ljava/lang/Object;
.source "BurstAcquisitionPipeline.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mExceptionContext:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

.field private synthetic this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "Started processing"

    .line 135
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->mExceptionContext:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    .line 134
    return-void
.end method


# virtual methods
.method public final onGraphRunnerError(Ljava/lang/Exception;Z)V
    .locals 2

    .prologue
    .line 147
    const-string v0, "BAP"

    const-string v1, "Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$100(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->mExceptionContext:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    invoke-static {p1, v1}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->withContext(Ljava/lang/Throwable;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->setException(Lcom/google/android/libraries/smartburst/concurrency/ResultException;)Z

    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$200(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->stop()V

    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$200(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->tearDown()V

    .line 152
    return-void
.end method

.method public final onGraphRunnerStopped(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V
    .locals 2

    .prologue
    .line 139
    const-string v0, "BAP"

    const-string v1, "Stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$100(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$000(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->set(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$200(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->stop()V

    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;->this$0:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->access$200(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->tearDown()V

    .line 143
    return-void
.end method
