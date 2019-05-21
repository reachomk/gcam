.class public Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;
.super Ljava/lang/Object;
.source "FeatureExtractionPipeline.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/pipeline/Pipeline;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/pipeline/Pipeline",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

.field private final mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

.field private mGraphReleased:Z

.field private final mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/concurrency/SettableResult",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mGraphReleased:Z

    .line 36
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 37
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    .line 40
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->create()Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->releaseGraph()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)Lcom/google/android/libraries/smartburst/buffers/FeatureTable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)Lcom/google/android/libraries/smartburst/concurrency/SettableResult;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    return-object v0
.end method

.method private final declared-synchronized releaseGraph()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mGraphReleased:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;->release()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mGraphReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public process()Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;->getFeatureCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    new-instance v1, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline$1;-><init>(Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;)V

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;->start(Lcom/google/android/libraries/smartburst/utils/ThreadListener;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mGraphReleased:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;->getFeatureCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;->mFeatureExtractor:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "FeatureExtractionPipeline"

    return-object v0
.end method
