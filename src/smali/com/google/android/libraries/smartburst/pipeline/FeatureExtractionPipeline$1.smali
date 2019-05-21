.class final Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;
.super Ljava/lang/Object;
.source "FeatureExtractionPipeline.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/ThreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mExceptionContext:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

.field private synthetic this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "Started processing"

    .line 59
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->mExceptionContext:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    .line 58
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "FeatureExtractionPipeline"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->access$000(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->access$200(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->mExceptionContext:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    invoke-static {p1, v1}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->withContext(Ljava/lang/Throwable;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->setException(Lcom/google/android/libraries/smartburst/concurrency/ResultException;)Z

    .line 78
    return-void
.end method

.method public final onStarted()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "FeatureExtractionPipeline"

    const-string v1, "Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public final onStopped()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "FeatureExtractionPipeline"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->access$000(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->access$200(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;->this$0:Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->access$100(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->set(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
