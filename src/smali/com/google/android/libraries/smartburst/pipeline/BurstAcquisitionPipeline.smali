.class public Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;
.super Ljava/lang/Object;
.source "BurstAcquisitionPipeline.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;


# instance fields
.field private final mBuilderResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/concurrency/SettableResult",
            "<",
            "Lcom/google/android/libraries/smartburst/media/SummaryBuilder",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

.field private final mSummaryBuilder:Lcom/google/android/libraries/smartburst/media/SummaryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/SummaryBuilder",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mSummaryResult:Lcom/google/android/libraries/smartburst/concurrency/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

.field private final mWasRun:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;Lcom/google/android/libraries/smartburst/media/SummaryBuilder;Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/filterfw/MffContext;",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;",
            "Lcom/google/android/libraries/smartburst/buffers/FrameConsumer",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/SummaryBuilder",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mWasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->create()Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mBuilderResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mSummaryBuilder:Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    .line 78
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 81
    invoke-interface {p5, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;->create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    const-string v1, "videoProvider"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getVariable(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;->setValue(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    const-string v1, "frameConsumer"

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;

    .line 87
    invoke-virtual {v0, p3}, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->setFrameConsumer(Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->setThreadName(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mBuilderResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline$1;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mSummaryResult:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/media/SummaryBuilder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mSummaryBuilder:Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/concurrency/SettableResult;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mBuilderResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    return-object v0
.end method


# virtual methods
.method public process()Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mWasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline$2;-><init>(Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->setListener(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->run()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mSummaryResult:Lcom/google/android/libraries/smartburst/concurrency/Result;

    return-object v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final setCropRect(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getVariable(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->fromRect(Landroid/graphics/RectF;)Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;->setValue(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mWasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mBuilderResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mSummaryBuilder:Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;

    .line 170
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->forceClose()V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "BurstAcquisitionPipeline"

    return-object v0
.end method
