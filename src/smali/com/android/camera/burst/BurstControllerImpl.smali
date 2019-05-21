.class final Lcom/android/camera/burst/BurstControllerImpl;
.super Ljava/lang/Object;
.source "BurstControllerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstController;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNIT_RECT:Landroid/graphics/RectF;


# instance fields
.field private final autogenerateArtifacts:Z

.field private final bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

.field private final burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final burstUuid:Ljava/util/UUID;

.field private final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final context:Landroid/content/Context;

.field private volatile doPostprocessing:Z

.field private final featureExtractionPipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/pipeline/Pipeline",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            ">;"
        }
    .end annotation
.end field

.field private final frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final hiResImages:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final imageProcessor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final imageRotationInDegrees:I

.field private final logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

.field private final lowResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

.field private final lowResStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

.field private final medResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

.field private final mffContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final resultsListener:Lcom/android/camera/burst/BurstResultsListener;

.field private final smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

.field private final smartBurstPreviewer:Lcom/android/camera/burst/SmartBurstPreviewer;

.field private volatile startTimeNs:J

.field private final storage:Lcom/android/camera/storage/Storage;

.field private final surfaceTextureStreamer:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final wasClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final wasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final wasStopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 98
    const-string v0, "BurstCntrImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/BurstControllerImpl;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/burst/BurstControllerImpl;->UNIT_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/SurfaceTexture;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/burst/BurstController$ImageStreamProperties;Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/stats/SmartBurstMetaData;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;",
            "Landroid/graphics/SurfaceTexture;",
            "Lcom/android/camera/burst/BurstLivePreviewController;",
            "Lcom/android/camera/burst/BurstController$ImageStreamProperties;",
            "Lcom/android/camera/burst/BurstResultsListener;",
            "Lcom/android/camera/session/StackableSession;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/stats/SmartBurstMetaData;",
            "Z",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    const/high16 v3, 0x3200000

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 192
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->imageProcessor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 197
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstUuid:Ljava/util/UUID;

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->doPostprocessing:Z

    .line 204
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->hiResImages:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    const-string v2, "BurstControllerImpl#constructor"

    move-object/from16 v0, p14

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 248
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->context:Landroid/content/Context;

    .line 249
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    .line 250
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 251
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->resultsListener:Lcom/android/camera/burst/BurstResultsListener;

    .line 252
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 253
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 254
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 255
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    .line 256
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->autogenerateArtifacts:Z

    .line 257
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    .line 258
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->storage:Lcom/android/camera/storage/Storage;

    .line 260
    iget-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/burst/BurstControllerImpl$1;

    invoke-direct {v3, p0}, Lcom/android/camera/burst/BurstControllerImpl$1;-><init>(Lcom/android/camera/burst/BurstControllerImpl;)V

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 1415
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    .line 1417
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getWidth()I

    move-result v3

    .line 1418
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getHeight()I

    move-result v4

    .line 1420
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getDeviceOrientation()I

    move-result v5

    .line 1421
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->isMirrored()Z

    move-result v6

    const/4 v7, 0x1

    .line 1419
    invoke-static {v5, v6, v7}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;->create(IZZ)Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;-><init>(Landroid/graphics/SurfaceTexture;IILcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;)V

    .line 276
    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->surfaceTextureStreamer:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    .line 279
    new-instance v2, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    .line 280
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->getEvalLogDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "camera_sb_"

    invoke-direct {v2, v3, v4}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    .line 283
    new-instance v3, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;

    iget-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v3, v2}, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 284
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->isDebuggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    new-instance v2, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator;

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator;-><init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V

    .line 286
    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v4, "bitmap_allocs.csv"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 289
    :goto_0
    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 291
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->mffContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 293
    new-instance v2, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;-><init>()V

    .line 294
    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->mffContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 1729
    iget-object v4, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    .line 297
    iget-object v6, p0, Lcom/android/camera/burst/BurstControllerImpl;->surfaceTextureStreamer:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    iget-object v7, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v8, p0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 2047
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/integration/BurstMode;->doesSmartSelection()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2049
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getApplicationContext()Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureAUC$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ3DTMN0RRECLN78HJ1CDQ6USJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V

    .line 2052
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    new-instance v9, Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory;

    invoke-direct {v9}, Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory;-><init>()V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    new-instance v9, Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory;

    invoke-direct {v9}, Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory;-><init>()V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2055
    new-instance v9, Lcom/google/android/libraries/smartburst/graphs/FasterFeaturesGraphFactory;

    invoke-direct {v9}, Lcom/google/android/libraries/smartburst/graphs/FasterFeaturesGraphFactory;-><init>()V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;

    .line 3184
    sget-object v9, Lcom/google/android/libraries/smartburst/utils/FeatureType;->TIMESTAMP:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v10, Lcom/google/android/libraries/smartburst/utils/FeatureType;->EXPOSURE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    .line 2215
    invoke-static {v9}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v9

    .line 4175
    sget-object v10, Lcom/google/android/libraries/smartburst/utils/FeatureType;->PERCEPTUAL_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    const/4 v11, 0x7

    new-array v11, v11, [Lcom/google/android/libraries/smartburst/utils/FeatureType;

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_GRID_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->BRIGHTNESS_MEAN:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->BRIGHTNESS_VARIANCE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_BLOCK_BRIGHTNESS_MEAN:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MIN_BLOCK_BRIGHTNESS_MEAN:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    const/4 v12, 0x5

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_BLOCK_BRIGHTNESS_VARIANCE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    const/4 v12, 0x6

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MIN_BLOCK_BRIGHTNESS_VARIANCE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    .line 2216
    invoke-virtual {v9, v10}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 4191
    sget-object v10, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v11, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_ESTIMATION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v12, Lcom/google/android/libraries/smartburst/utils/FeatureType;->INTERFRAME_HOMOGRAPHY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->CAMERA_MOTION:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-static {v10, v11, v12, v13}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    .line 2217
    invoke-virtual {v9, v10}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 4199
    sget-object v10, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_COUNT:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v11, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_SMILING_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v12, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_LEFT_EYE_OPEN_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v13, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_RIGHT_EYE_OPEN_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v14, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_SHARPNESS_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-static {v10, v11, v12, v13, v14}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    .line 2218
    invoke-virtual {v9, v10}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 4208
    sget-object v10, Lcom/google/android/libraries/smartburst/utils/FeatureType;->HUE_SAT_HISTOGRAM:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v11, Lcom/google/android/libraries/smartburst/utils/FeatureType;->VALUE_HISTOGRAM:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v12, Lcom/google/android/libraries/smartburst/utils/FeatureType;->VIDEO_PRESENTATION_TIME:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-static {v10, v11, v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    .line 2221
    invoke-virtual {v9, v10}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 2063
    const/16 v10, 0xa

    .line 2060
    invoke-static/range {v2 .. v10}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->configure(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/EnumSet;I)V

    .line 302
    :goto_1
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->isDebuggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-static {v2, v3}, Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectCaptureLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    .line 306
    :cond_0
    const-class v3, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    const-string v4, "low-res-acquisition-pipeline"

    .line 307
    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    iput-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    .line 4746
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4747
    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->storage:Lcom/android/camera/storage/Storage;

    iget-object v4, p0, Lcom/android/camera/burst/BurstControllerImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v4}, Lcom/android/camera/session/StackableSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/storage/Storage;->getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v3

    .line 4748
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v3

    .line 4750
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->getLowResSize()Lcom/android/camera/util/Size;

    move-result-object v4

    .line 4751
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v5

    .line 4753
    invoke-static {}, Lcom/android/camera/util/AspectRatio;->of16x9()Lcom/android/camera/util/AspectRatio;

    move-result-object v6

    const-wide v8, 0x3f9999999999999aL    # 0.025

    invoke-virtual {v3, v6, v8, v9}, Lcom/android/camera/util/AspectRatio;->isAlmostEqual(Lcom/android/camera/util/AspectRatio;D)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4754
    invoke-static {}, Lcom/android/camera/util/AspectRatio;->of4x3()Lcom/android/camera/util/AspectRatio;

    move-result-object v6

    const-wide v8, 0x3f9999999999999aL    # 0.025

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/camera/util/AspectRatio;->isAlmostEqual(Lcom/android/camera/util/AspectRatio;D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4755
    invoke-virtual {v3, v4}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v5

    .line 4756
    new-instance v3, Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 4758
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 4759
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    .line 4760
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 4761
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    invoke-direct {v3, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v4, v3

    .line 310
    :goto_2
    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->setCropRect(Landroid/graphics/RectF;)V

    .line 312
    const-class v3, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    const-string v5, "med-res-acquisition-pipeline"

    .line 313
    invoke-virtual {v2, v3, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    iput-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->medResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    .line 315
    iget-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->medResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->setCropRect(Landroid/graphics/RectF;)V

    .line 317
    const-class v3, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    .line 5085
    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 317
    check-cast v3, Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    iput-object v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->featureExtractionPipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    .line 319
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getImageRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/burst/BurstControllerImpl;->imageRotationInDegrees:I

    .line 5725
    const-class v3, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 6085
    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 5725
    check-cast v2, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 320
    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 321
    new-instance v2, Lcom/android/camera/burst/SmartBurstPreviewer;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/android/camera/burst/SmartBurstPreviewer;-><init>(Lcom/android/camera/burst/BurstController;Lcom/android/camera/burst/BurstLivePreviewController;)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstPreviewer:Lcom/android/camera/burst/SmartBurstPreviewer;

    .line 322
    invoke-interface/range {p14 .. p14}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 323
    return-void

    .line 2066
    :cond_1
    invoke-static {v2, v4}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureSimple(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V

    .line 2069
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;

    sget-object v9, Lcom/google/android/libraries/smartburst/utils/FeatureType;->TIMESTAMP:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 2071
    invoke-static {v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    const/16 v10, 0xa

    .line 2069
    invoke-static/range {v2 .. v10}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->configure(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/EnumSet;I)V

    goto/16 :goto_1

    .line 4764
    :cond_2
    sget-object v3, Lcom/android/camera/burst/BurstControllerImpl;->UNIT_RECT:Landroid/graphics/RectF;

    move-object v4, v3

    goto :goto_2

    .line 4767
    :cond_3
    sget-object v3, Lcom/android/camera/burst/BurstControllerImpl;->UNIT_RECT:Landroid/graphics/RectF;

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/stats/SmartBurstMetaData;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/camera/burst/BurstControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/SmartBurstPreviewer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstPreviewer:Lcom/android/camera/burst/SmartBurstPreviewer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/BurstResultsListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->resultsListener:Lcom/android/camera/burst/BurstResultsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/burst/BurstControllerImpl;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->doPostprocessing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/burst/BurstControllerImpl;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/burst/BurstControllerImpl;->filterAndPostProcess(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/google/android/libraries/smartburst/media/BitmapAllocator;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    return-object v0
.end method

.method static synthetic access$800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ46RREEHP6UR3CCLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/session/StackableSession;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method private final closeSmartburstController()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->hiResImages:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 706
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->close()V

    .line 713
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 717
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->saveOutputs()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final ensureStartedAndFirstStop()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stopping burst that was not started yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stopping burst twice."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    return-void
.end method

.method private final filterAndPostProcess(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Ljava/util/concurrent/ExecutorService;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "BurstControllerImpl#filterAndPostProcess"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/AutoCloseable;

    const/4 v2, 0x0

    aput-object p1, v3, v2

    const/4 v2, 0x1

    aput-object p2, v3, v2

    .line 8028
    new-instance v27, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;-><init>()V

    .line 8029
    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 8030
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->track(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8029
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_0
    const/16 v26, 0x0

    .line 583
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstControllerImpl;->hiResImages:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 584
    if-nez v2, :cond_1

    .line 585
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Null captured images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 581
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    :catchall_0
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    :goto_1
    if-eqz v3, :cond_c

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 634
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v3}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v2

    .line 587
    :cond_1
    :try_start_5
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->track(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    .line 593
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v5

    .line 594
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 596
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fillWithNearest(Ljava/util/Set;Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v4

    .line 597
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/media/Summary;->markedAsExtra()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/smartburst/media/Summary;->markAsExtra(Ljava/util/Set;)V

    .line 598
    invoke-virtual {v2, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->select(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v3

    .line 599
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/media/Summary;->markedAsExtra()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/smartburst/media/Summary;->markAsExtra(Ljava/util/Set;)V

    move-object v2, v3

    move-object v3, v4

    .line 615
    :goto_3
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->track(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v3

    .line 616
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->track(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v4

    .line 619
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/media/Summary;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->unionTimestamps(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;)Ljava/util/Set;

    move-result-object v2

    .line 622
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fillWithNearest(Ljava/util/Set;Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->track(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v5

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstControllerImpl;->resultsListener:Lcom/android/camera/burst/BurstResultsListener;

    invoke-virtual {v2}, Lcom/android/camera/burst/BurstResultsListener;->onReadyForNextBurst()V

    .line 628
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 629
    invoke-interface {v5}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 631
    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 11051
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result-object v28

    .line 10652
    const/16 v25, 0x0

    .line 12051
    :try_start_6
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-result-object v29

    .line 10652
    const/16 v24, 0x0

    .line 13051
    :try_start_7
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result-object v30

    .line 10652
    const/16 v23, 0x0

    .line 10656
    :try_start_8
    invoke-interface/range {v28 .. v28}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 13687
    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->anyTimestampIn(Lcom/google/android/libraries/smartburst/media/Summary;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 13689
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/camera/burst/BurstControllerImpl$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/burst/BurstControllerImpl$7;-><init>(Lcom/android/camera/burst/BurstControllerImpl;)V

    .line 13688
    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 13729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstControllerImpl;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    .line 10661
    invoke-interface/range {v28 .. v28}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 10662
    invoke-interface/range {v29 .. v29}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 10664
    invoke-interface/range {v30 .. v30}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/smartburst/media/Summary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/burst/BurstControllerImpl;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstControllerImpl;->burstUuid:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/BurstControllerImpl;->imageProcessor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v11, 0x0

    .line 10669
    invoke-virtual {v5, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/burst/BurstControllerImpl;->burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/burst/BurstControllerImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/burst/BurstControllerImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/burst/BurstControllerImpl;->resultsListener:Lcom/android/camera/burst/BurstResultsListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/burst/BurstControllerImpl;->imageRotationInDegrees:I

    move/from16 v16, v0

    .line 10675
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->isDebuggingEnabled()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstControllerImpl;->logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/burst/BurstControllerImpl;->autogenerateArtifacts:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstControllerImpl;->storage:Lcom/android/camera/storage/Storage;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v22, v0

    move-object/from16 v5, p3

    move-object/from16 v19, p4

    .line 10659
    invoke-static/range {v2 .. v22}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;->createPostProcessingTask$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ2ELP76T2DDTI6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FDLIM8QB15T9NARBDC5P7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FDLIM8QB15T9NARBDC5P7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FC9QMCPJ5E9PIUHJ5C5Q7ASJ5AHGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUKRLDLMM2SJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUGJ9EHMM2S21DHM6UOR1EHNN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJEHGN8SPFADMM2SJK89QN4SRK9LIN8OA4C5Q62EQCD9GNCO9FELQ6IR1FALAKIH1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UOJLE9PN8BQ2ELP76T29DLGMEPAGE9NM6PBJEDNN4EQCCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDP6M2RJ1CTIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR2ELP76T1F89QN4SRKA9IN6TBCEHPKOQBJEHIMSPBI7D4LKJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UR39C9P62SJ9CLPIUSRDC5P78OJLE9PN8BRKE9GMIRJ9DPJIUJ3FCT1MUR3CCLHN8QBFDPBN4QBKCLP3MJ3AC5R62BRLEHKMOBR3DTN66TBIE9IMST1F8LS6AORLEHNN4KR5E9R6IOR57DD4OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6T3FE9GMEP9FADQ6USJ1CTIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP35C9QMEBRKE9GM6P9FAHP62OR57CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM4TBIEDQ2US3FEDQ70SJFCDIN6SR9DPJIUK3FEDQ50SJFCDIN6SR9DPJL8OBJDCTG____(Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/media/Summary;Landroid/content/Context;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/UUID;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/burst/BurstResultsListener;IZLcom/google/android/libraries/smartburst/training/LogCollectionWriter;Ljava/util/concurrent/ExecutorService;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/burst/postprocessing/PostProcessingTask;

    move-result-object v2

    .line 10681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/BurstControllerImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/processing/ProcessingServiceManager;->enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 10682
    if-eqz v30, :cond_2

    :try_start_9
    invoke-interface/range {v30 .. v30}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_2
    if-eqz v29, :cond_3

    :try_start_a
    invoke-interface/range {v29 .. v29}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :cond_3
    if-eqz v28, :cond_4

    :try_start_b
    invoke-interface/range {v28 .. v28}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 633
    :cond_4
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v2}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 635
    return-void

    .line 602
    :cond_5
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/burst/BurstControllerImpl;->getLowResSize()Lcom/android/camera/util/Size;

    move-result-object v3

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/BurstControllerImpl;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 605
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    .line 8456
    const-string v7, "placeholder"

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v4, v7, v6, v3, v8}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v4

    .line 8458
    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const v6, -0xbbbbbc

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 606
    new-instance v3, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader;

    invoke-direct {v3, v4}, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader;-><init>(Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V

    .line 10065
    new-instance v4, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V

    .line 9079
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/SharedHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v3

    .line 608
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->trackHandle(Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    .line 609
    invoke-static {v5, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fillSummary(Ljava/util/Set;Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v4

    .line 610
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/media/Summary;->markedAsExtra()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/smartburst/media/Summary;->markAsExtra(Ljava/util/Set;)V

    .line 611
    invoke-virtual {v2, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->select(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v3

    .line 612
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/media/Summary;->markedAsExtra()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/smartburst/media/Summary;->markAsExtra(Ljava/util/Set;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3

    .line 10652
    :catch_1
    move-exception v2

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 10682
    :catchall_2
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    :goto_4
    if-eqz v30, :cond_6

    if-eqz v3, :cond_9

    :try_start_f
    invoke-interface/range {v30 .. v30}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_6
    :goto_5
    :try_start_10
    throw v2
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 10652
    :catch_2
    move-exception v2

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 10682
    :catchall_3
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    :goto_6
    if-eqz v29, :cond_7

    if-eqz v3, :cond_a

    :try_start_12
    invoke-interface/range {v29 .. v29}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :cond_7
    :goto_7
    :try_start_13
    throw v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 10652
    :catch_3
    move-exception v2

    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 10682
    :catchall_4
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    :goto_8
    if-eqz v28, :cond_8

    if-eqz v3, :cond_b

    :try_start_15
    invoke-interface/range {v28 .. v28}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_8
    :goto_9
    :try_start_16
    throw v2
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 633
    :catchall_5
    move-exception v2

    move-object/from16 v3, v26

    goto/16 :goto_1

    .line 10682
    :catch_4
    move-exception v4

    :try_start_17
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_6
    move-exception v2

    move-object/from16 v3, v24

    goto :goto_6

    :cond_9
    invoke-interface/range {v30 .. v30}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto :goto_5

    :catch_5
    move-exception v4

    :try_start_18
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_7
    move-exception v2

    move-object/from16 v3, v25

    goto :goto_8

    :cond_a
    invoke-interface/range {v29 .. v29}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_7

    :catch_6
    move-exception v4

    :try_start_19
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_b
    invoke-interface/range {v28 .. v28}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_9

    .line 633
    :catch_7
    move-exception v4

    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_2

    .line 10682
    :catchall_8
    move-exception v2

    move-object/from16 v3, v23

    goto :goto_4
.end method

.method private final getLowResSize()Lcom/android/camera/util/Size;
    .locals 5

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    .line 734
    invoke-virtual {v0}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getImageRotation()I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    .line 735
    invoke-virtual {v0}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    .line 736
    invoke-virtual {v1}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->getHeight()I

    move-result v1

    .line 14334
    rem-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    .line 14339
    :goto_0
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 733
    return-object v2

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method private final stop()V
    .locals 2

    .prologue
    .line 551
    sget-object v0, Lcom/android/camera/burst/BurstControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Stopping analysis."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstControllerImpl#stop"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->featureExtractionPipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/pipeline/Pipeline;->stop()V

    .line 554
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->stop()V

    .line 555
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->medResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->stop()V

    .line 556
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 557
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Burst was never stopped before closing."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 406
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/burst/BurstControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstControllerImpl#close"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->closeSmartburstController()V

    .line 409
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->mffContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->release()V

    .line 410
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    monitor-exit p0

    return-void
.end method

.method public final processBurstResults(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;>;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstControllerImpl#processBurstResults"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    .line 348
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstControllerImpl$3;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/burst/BurstControllerImpl$3;-><init>(Lcom/android/camera/burst/BurstControllerImpl;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V

    .line 349
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/burst/BurstControllerImpl$2;-><init>(Lcom/android/camera/burst/BurstControllerImpl;)V

    .line 372
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->thenCatch(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 398
    return-void
.end method

.method public final declared-synchronized startAnalysis()Lcom/google/android/libraries/smartburst/selection/FrameDropper;
    .locals 3

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->wasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Burst was already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstControllerImpl#startAnalysis"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->surfaceTextureStreamer:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->start()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstPreviewer:Lcom/android/camera/burst/SmartBurstPreviewer;

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/SmartBurstPreviewer;->start(Lcom/google/android/libraries/smartburst/integration/BurstMode;)V

    .line 444
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->startTimeNs:J

    .line 446
    invoke-static {}, Lcom/android/camera/burst/BurstExecutorFactory;->postProcessingExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl;->lowResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    .line 449
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->medResAcquisitionPipeline:Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenBoth(Lcom/google/android/libraries/smartburst/concurrency/Result;Lcom/google/android/libraries/smartburst/concurrency/Result;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstControllerImpl$4;

    invoke-direct {v2}, Lcom/android/camera/burst/BurstControllerImpl$4;-><init>()V

    .line 450
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    .line 460
    iget-object v2, p0, Lcom/android/camera/burst/BurstControllerImpl;->featureExtractionPipeline:Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/pipeline/Pipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenBoth(Lcom/google/android/libraries/smartburst/concurrency/Result;Lcom/google/android/libraries/smartburst/concurrency/Result;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstControllerImpl$6;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/burst/BurstControllerImpl$6;-><init>(Lcom/android/camera/burst/BurstControllerImpl;Ljava/util/concurrent/ExecutorService;)V

    .line 461
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/android/camera/burst/BurstControllerImpl$5;-><init>(Lcom/android/camera/burst/BurstControllerImpl;)V

    .line 480
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->thenCatch(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 496
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->resultsListener:Lcom/android/camera/burst/BurstResultsListener;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 498
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 6430
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized stopAndCancel()V
    .locals 2

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/burst/BurstControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopAndCancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstControllerImpl#stopAndCancel"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->ensureStartedAndFirstStop()V

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->doPostprocessing:Z

    .line 546
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->stop()V

    .line 547
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopAndPopulateResults(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstControllerImpl#stopAndPopulateResults"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->ensureStartedAndFirstStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7051
    :try_start_1
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 512
    const/4 v1, 0x0

    .line 513
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->hiResImages:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 514
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->close()V

    .line 516
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->closeSmartburstController()V

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Trying to capture images when existing burst session is running."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 512
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 525
    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 510
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 520
    :cond_1
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->imageProcessor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v0

    .line 7566
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/burst/BurstControllerImpl;->startTimeNs:J

    sub-long/2addr v4, v6

    .line 7567
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-float v3, v4

    .line 7568
    iget-object v4, p0, Lcom/android/camera/burst/BurstControllerImpl;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    invoke-virtual {v4, v3, v0}, Lcom/android/camera/stats/SmartBurstMetaData;->setBasicProperties(FI)V

    .line 522
    invoke-direct {p0}, Lcom/android/camera/burst/BurstControllerImpl;->stop()V

    .line 523
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 524
    if-eqz v2, :cond_2

    :try_start_8
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 525
    :cond_2
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 526
    monitor-exit p0

    return-void

    .line 524
    :catch_1
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0
.end method
