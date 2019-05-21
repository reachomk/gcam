.class public final Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;
.super Lcom/android/camera/burst/postprocessing/PostProcessingTask;
.source "ArtifactGenerationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$SerializeFeaturesAndMetadata;,
        Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final artifactGenerationPipeline:Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

.field private final metadataExtractor:Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;

.field private final shouldGenerateArtifact:Z

.field private final storage:Lcom/android/camera/storage/Storage;

.field private final summaryStackGenerator:Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "ArtfctGenTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;",
            "Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;",
            "Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;I",
            "Lcom/android/camera/burst/BurstResultsListener;",
            "Lcom/android/camera/session/StackableSession;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Ljava/io/File;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "Lcom/android/camera/stats/SmartBurstMetaData;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            "Ljava/util/UUID;",
            "Z",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p18

    invoke-direct/range {v2 .. v16}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;Lcom/android/camera/storage/Storage;)V

    .line 160
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->artifactGenerationPipeline:Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    .line 161
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->metadataExtractor:Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;

    .line 162
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->summaryStackGenerator:Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;

    .line 163
    move/from16 v0, p17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->shouldGenerateArtifact:Z

    .line 164
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->storage:Lcom/android/camera/storage/Storage;

    .line 165
    move-object/from16 v0, p19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->shouldGenerateArtifact:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;)Lcom/android/camera/storage/Storage;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->storage:Lcom/android/camera/storage/Storage;

    return-object v0
.end method

.method private final rasterizeFramePreviews(Landroid/content/Context;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/StackFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->summaryStackGenerator:Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;

    .line 460
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;->process$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUKRLDLMM2SJP7D666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNM2SJKD5J62ORKECNK2SJKD5J62ORKADQ62ORB7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6RB1E9Q64TBIEDQ2UORFDPHNASJICLN66U9FA9IN6TBCEGTG____(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/artifacts/PreviewableImageStack;

    .line 462
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/artifacts/PreviewableImageStack;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/artifacts/PreviewableImageStack;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;

    .line 466
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->getTimestampNs()J

    move-result-wide v4

    .line 467
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->getFrameScore()F

    move-result v6

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v3}, Lcom/android/camera/session/StackableSession;->createStackedSession()Lcom/android/camera/session/StackedCaptureSession;

    move-result-object v7

    .line 471
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v3

    .line 473
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 474
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->loadIntoDrawableResource(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Landroid/content/Context;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v9

    .line 472
    invoke-virtual {v3, v8, v9}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v8

    .line 476
    new-instance v3, Lcom/android/camera/burst/postprocessing/StackFrame;

    .line 482
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->isPrimary()Z

    move-result v9

    .line 483
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->isExtra()Z

    move-result v10

    .line 484
    invoke-virtual {v7}, Lcom/android/camera/session/StackedCaptureSession;->getGpsLocation()Lcom/google/common/base/Optional;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->burstSessionDirectory:Ljava/io/File;

    .line 485
    invoke-static {v4, v5}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getFrameFilename(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/burst/postprocessing/StackFrame;-><init>(JFLcom/android/camera/session/StackedCaptureSession;Lcom/google/android/libraries/smartburst/concurrency/Result;ZZLcom/google/common/base/Optional;Ljava/io/File;)V

    .line 476
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/camera/burst/postprocessing/UpdateThumbnail;

    sget v4, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->FRAME$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    invoke-direct {v3, v7, v4}, Lcom/android/camera/burst/postprocessing/UpdateThumbnail;-><init>(Lcom/android/camera/session/StackedCaptureSession;I)V

    .line 488
    invoke-virtual {v8, v2, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 492
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :cond_0
    new-instance v2, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$2;

    invoke-direct {v2}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$2;-><init>()V

    invoke-static {v13, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    const/4 v2, 0x0

    .line 508
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/postprocessing/StackFrame;

    iget-object v2, v2, Lcom/android/camera/burst/postprocessing/StackFrame;->thumbnail:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 510
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-direct {v4, v5}, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;-><init>(Lcom/android/camera/session/StackableSession;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 511
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 514
    invoke-static {v14}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    .line 515
    return-object v13
.end method


# virtual methods
.method protected final doPostProcessing(Landroid/content/Context;)V
    .locals 11

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "ArtifactGenerationTask#doPostProcessing"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/AutoCloseable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    aput-object v2, v0, v1

    .line 188
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 194
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->metadataExtractor:Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    iget-object v3, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 195
    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;->extractFeaturesAndMetadata(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v3

    .line 198
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$1;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$1;-><init>(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;)V

    .line 199
    invoke-virtual {v3, v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 211
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->artifactGenerationPipeline:Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    .line 1543
    new-instance v4, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$3;

    invoke-direct {v4, v1}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$3;-><init>(Lcom/google/android/libraries/smartburst/pipeline/Pipeline;)V

    .line 210
    invoke-virtual {v3, v0, v4}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;

    .line 215
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 216
    iget-object v4, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    invoke-virtual {v4, v0}, Lcom/android/camera/stats/SmartBurstMetaData;->setArtifactStack(Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;)V

    .line 218
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No artifacts generated (%d images captured)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 220
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 224
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;->getBestArtifact()Lcom/google/android/libraries/smartburst/artifacts/Artifact;

    move-result-object v4

    .line 225
    new-instance v5, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;-><init>(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;Landroid/content/Context;Lcom/google/android/libraries/smartburst/artifacts/Artifact;)V

    .line 229
    new-instance v6, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;

    iget-object v7, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 231
    invoke-virtual {v7}, Lcom/google/android/libraries/smartburst/media/Summary;->getSortedTimestamps()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v8}, Lcom/android/camera/session/StackableSession;->getStartTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;-><init>(Ljava/util/List;J)V

    .line 232
    iget-object v7, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 233
    invoke-virtual {v6}, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->getArtifactCreationTimestamp()J

    move-result-wide v8

    .line 232
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;->rasterizeArtifactPreview(Lcom/google/android/libraries/smartburst/media/Summary;J)V

    .line 236
    iget-object v7, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-direct {p0, p1, v7, v0}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->rasterizeFramePreviews(Landroid/content/Context;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;)Ljava/util/List;

    move-result-object v7

    .line 238
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->burstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstPreviewAvailable()V

    .line 240
    invoke-static {}, Lcom/android/camera/storage/StorageModule;->provideDcimCameraFolder()Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    .line 241
    new-instance v8, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    iget-object v9, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v9}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create burst output directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2520
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$SerializeFeaturesAndMetadata;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$SerializeFeaturesAndMetadata;-><init>(Ljava/io/File;B)V

    .line 2521
    invoke-virtual {v3, v0, v9}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 2522
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 250
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    iget-object v3, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v3, v9}, Lcom/android/camera/stats/SmartBurstMetaData;->setSummaryCounts(II)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 254
    invoke-virtual {p0, v7, v0}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->saveCapturedImages(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 257
    invoke-virtual {p0, v0, v7, v6}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->rasterizeFramesHighRes(Ljava/util/Map;Ljava/util/List;Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;)V

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    .line 259
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 261
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->closeInput()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v6

    .line 258
    invoke-static {v3, v0, v6}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 265
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isVfrVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 267
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 268
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v5, v0, v8}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;->rasterizeArtifactHighRes(Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;)V

    .line 281
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->rasterizeMedResSummary(Ljava/io/File;)V

    .line 284
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->isDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->burstSessionDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->rasterizeLowResSummary(Ljava/io/File;)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->closeInput()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 293
    return-void

    .line 274
    :cond_4
    :try_start_2
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v0

    .line 273
    invoke-static {v8, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->loadFromDirectory(Ljava/io/File;Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;)Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v0

    .line 276
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v5, v0, v8}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;->rasterizeArtifactHighRes(Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final bridge synthetic getSession()Lcom/android/camera/session/SessionBase;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->getSession()Lcom/android/camera/session/SessionBase;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic process(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->process(Landroid/content/Context;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->artifactGenerationPipeline:Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;->resume()V

    .line 176
    return-void
.end method

.method public final setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final suspend()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->artifactGenerationPipeline:Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;->suspend()V

    .line 171
    return-void
.end method
