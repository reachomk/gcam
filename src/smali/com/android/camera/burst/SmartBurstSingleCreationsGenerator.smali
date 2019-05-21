.class public final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;,
        Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;,
        Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ArtifactStackToMapFunction;,
        Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ProcessPipelineFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private availableArtifacts:Lcom/google/android/libraries/smartburst/concurrency/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/burst/postprocessing/CreationType;",
            "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final availableArtifactsLock:Ljava/lang/Object;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final context:Landroid/content/Context;

.field private final finalBurstDirectory:Ljava/io/File;

.field private logCollectionWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "SBSingleCreationGen"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/session/CaptureSessionManager;Ljava/io/File;Landroid/content/Context;Lcom/android/camera/storage/Storage;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifactsLock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 84
    iput-object p2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 85
    iput-object p3, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->finalBurstDirectory:Ljava/io/File;

    .line 86
    iput-object p4, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->context:Landroid/content/Context;

    .line 87
    iput-object p5, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->storage:Lcom/android/camera/storage/Storage;

    .line 88
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;Landroid/content/Context;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;
    .locals 1

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->prepareArtifactGenerationPipeline(Landroid/content/Context;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->finalBurstDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->logCollectionWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/android/camera/storage/Storage;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->storage:Lcom/android/camera/storage/Storage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method

.method static synthetic access$700(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->smartBurstFeatureFilesExist(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final prepareArtifactGenerationPipeline(Landroid/content/Context;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;
    .locals 6

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;-><init>()V

    .line 123
    sget-object v2, Lcom/google/android/libraries/smartburst/integration/BurstMode;->SMART_BURST:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    sget-object v3, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->ALL_TYPES:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents;->configureFactoryForPostProcessing(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Landroid/content/Context;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V

    .line 131
    const-class v1, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 1263
    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$1;

    invoke-direct {v2, p4}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$1;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 142
    const-class v1, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2263
    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$2;

    invoke-direct {v2, p3}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$2;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 153
    const-class v1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 3263
    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v1

    .line 154
    new-instance v2, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$3;

    invoke-direct {v2, p2}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$3;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 155
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 164
    iget-object v1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->logCollectionWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->logCollectionWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-static {v0, v2}, Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectPostProcessLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    .line 168
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const-class v1, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    .line 4085
    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    check-cast v0, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static smartBurstFeatureFilesExist(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/io/File;

    const-string v1, "feature_table.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "metadatastore.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 294
    goto :goto_0
.end method


# virtual methods
.method public final generateCreationAsync(Lcom/android/camera/burst/postprocessing/CreationType;)V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifacts:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 195
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;-><init>(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;Lcom/android/camera/burst/postprocessing/CreationType;)V

    .line 194
    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 210
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAvailableCreationTypes()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/CreationType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifacts:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 178
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$4;

    invoke-direct {v3}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$4;-><init>()V

    .line 177
    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 176
    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateAvailableCreationsAsync()V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lcom/android/camera/burst/BurstExecutorFactory;->executorForSingleArtifactUpdate()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifactsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->isDebuggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    .line 98
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->getEvalLogDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "camera_single_"

    invoke-direct {v3, v4, v5}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->logCollectionWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    .line 105
    :cond_0
    sget-object v3, Lcom/google/android/libraries/smartburst/utils/Empty;->INSTANCE:Lcom/google/android/libraries/smartburst/utils/Empty;

    .line 1142
    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v3

    .line 106
    new-instance v4, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;-><init>(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V

    .line 107
    invoke-virtual {v3, v0, v4}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v3, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ProcessPipelineFunction;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ProcessPipelineFunction;-><init>(B)V

    .line 108
    invoke-virtual {v1, v0, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v3, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ArtifactStackToMapFunction;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ArtifactStackToMapFunction;-><init>(B)V

    .line 109
    invoke-virtual {v1, v0, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifacts:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 110
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->availableArtifacts:Lcom/google/android/libraries/smartburst/concurrency/Result;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 111
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
