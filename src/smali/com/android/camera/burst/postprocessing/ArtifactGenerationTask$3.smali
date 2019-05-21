.class final Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$3;
.super Ljava/lang/Object;
.source "ArtifactGenerationTask.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
        "<",
        "Ljava/lang/Object;",
        "TTOutput;>;"
    }
.end annotation


# instance fields
.field private synthetic val$pipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/pipeline/Pipeline;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$3;->val$pipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TTOutput;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$3;->val$pipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/pipeline/Pipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method
