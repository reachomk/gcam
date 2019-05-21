.class abstract Lcom/android/camera/burst/postprocessing/PostProcessingTask;
.super Ljava/lang/Object;
.source "PostProcessingTask.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTask;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field protected final burstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

.field protected final burstSessionDirectory:Ljava/io/File;

.field protected final burstUuid:Ljava/util/UUID;

.field protected final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field protected final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private frameSavingProgressMonitor:Lcom/android/camera/burst/FrameSavingProgressMonitor;

.field protected final hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageAspectRatio:Lcom/android/camera/util/AspectRatio;

.field private imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

.field private imageRotationInDegrees:I

.field protected final loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected final medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected final postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected final smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "PostProcessingTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;Lcom/android/camera/storage/Storage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/android/camera/storage/Storage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 111
    iput-object p4, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 112
    iput-object p5, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 113
    iput-object p6, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 114
    iput-object p7, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 115
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 116
    iput-object p3, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->burstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    .line 117
    iput p2, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->imageRotationInDegrees:I

    .line 118
    iput-object p8, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->burstSessionDirectory:Ljava/io/File;

    .line 119
    iput-object p9, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 120
    iput-object p10, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    .line 121
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    .line 122
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->burstUuid:Ljava/util/UUID;

    .line 123
    new-instance v1, Lcom/android/camera/burst/FrameSavingProgressMonitor;

    new-instance v2, Ljava/io/File;

    .line 126
    invoke-static {}, Lcom/android/camera/storage/StorageModule;->provideDcimCameraFolder()Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 127
    invoke-interface {v4}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/camera/burst/FrameSavingProgressMonitor;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->frameSavingProgressMonitor:Lcom/android/camera/burst/FrameSavingProgressMonitor;

    .line 128
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v1}, Lcom/android/camera/session/StackableSession;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p14

    invoke-interface {v0, v1}, Lcom/android/camera/storage/Storage;->getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v1

    .line 131
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->imageAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 132
    return-void
.end method

.method private final rasterizeSummary(Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x2

    .line 197
    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v1

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 202
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/camera/burst/postprocessing/PostProcessingTask$1;

    invoke-direct {v5, p0, v6, v1}, Lcom/android/camera/burst/postprocessing/PostProcessingTask$1;-><init>(Lcom/android/camera/burst/postprocessing/PostProcessingTask;Ljava/io/File;I)V

    .line 208
    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 205
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    .line 225
    return-void
.end method


# virtual methods
.method protected abstract doPostProcessing(Landroid/content/Context;)V
.end method

.method public getSession()Lcom/android/camera/session/SessionBase;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method public process(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->doPostProcessing(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->finish()V

    .line 144
    sget-object v0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->TAG:Ljava/lang/String;

    const-string v1, "OnBurstSaved"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->burstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 1051
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->frameSavingProgressMonitor:Lcom/android/camera/burst/FrameSavingProgressMonitor;

    invoke-virtual {v0}, Lcom/android/camera/burst/FrameSavingProgressMonitor;->markCompleted()V

    .line 153
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->burstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 2051
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->frameSavingProgressMonitor:Lcom/android/camera/burst/FrameSavingProgressMonitor;

    invoke-virtual {v0}, Lcom/android/camera/burst/FrameSavingProgressMonitor;->markCompleted()V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 151
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 3051
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    .line 152
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->frameSavingProgressMonitor:Lcom/android/camera/burst/FrameSavingProgressMonitor;

    invoke-virtual {v1}, Lcom/android/camera/burst/FrameSavingProgressMonitor;->markCompleted()V

    throw v0
.end method

.method protected final rasterizeFramesHighRes(Ljava/util/Map;Ljava/util/List;Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/StackFrame;",
            ">;",
            "Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->frameSavingProgressMonitor:Lcom/android/camera/burst/FrameSavingProgressMonitor;

    invoke-virtual {v2}, Lcom/android/camera/burst/FrameSavingProgressMonitor;->markStarted()V

    .line 283
    sget-object v2, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->TAG:Ljava/lang/String;

    const-string v3, "rasterizeFramesHighRes"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 289
    const/4 v3, 0x0

    .line 290
    const/4 v2, 0x0

    move v9, v2

    move v5, v3

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_2

    .line 291
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/camera/burst/postprocessing/StackFrame;

    .line 292
    iget-wide v6, v4, Lcom/android/camera/burst/postprocessing/StackFrame;->timestamp:J

    .line 293
    iget-boolean v12, v4, Lcom/android/camera/burst/postprocessing/StackFrame;->isExtra:Z

    .line 294
    iget-object v3, v4, Lcom/android/camera/burst/postprocessing/StackFrame;->captureSession:Lcom/android/camera/session/StackedCaptureSession;

    .line 295
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    .line 298
    if-eqz v5, :cond_0

    .line 300
    sget v2, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->FRAME$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    .line 305
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 306
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->getSessionStartTimestamp()J

    move-result-wide v14

    sget v13, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->COVER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    if-ne v2, v13, :cond_1

    const/4 v2, 0x1

    .line 304
    :goto_2
    invoke-static {v5, v14, v15, v2, v12}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getStackImageTitle$514KKIIQB8KKOQJ1EPGIUR31DPJIUKRKE9KMSPPR(IJZZ)Ljava/lang/String;

    move-result-object v5

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->getFrameCreationTimestamp(J)J

    move-result-wide v6

    .line 314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;

    iget-object v4, v4, Lcom/android/camera/burst/postprocessing/StackFrame;->sessionDirFrameFile:Ljava/io/File;

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;-><init>(Lcom/android/camera/session/StackedCaptureSession;Ljava/io/File;Ljava/lang/String;JLcom/google/android/libraries/smartburst/media/BitmapLoader;)V

    .line 316
    invoke-static {v12, v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 321
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const/4 v3, 0x1

    .line 290
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v5, v3

    goto :goto_0

    .line 301
    :cond_0
    sget v2, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->COVER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    goto :goto_1

    .line 306
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 314
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 324
    :cond_2
    invoke-static {v10}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    .line 325
    return-void
.end method

.method protected final rasterizeLowResSummary(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 235
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getLowResFrameFilename(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->rasterizeSummary(Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Ljava/util/Map;)V

    .line 238
    return-void
.end method

.method protected final rasterizeMedResSummary(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 249
    invoke-static {p1}, Lcom/android/camera/burst/postprocessing/BurstFileNames;->getMedResFramesDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create med res directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getMedResFrameFilename(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create .nomedia file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->rasterizeSummary(Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Ljava/util/Map;)V

    .line 265
    return-void
.end method

.method protected final saveCapturedImages(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/StackFrame;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->TAG:Ljava/lang/String;

    const-string v1, "saveCapturedImages"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->burstUuid:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    new-instance v5, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;-><init>(B)V

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/burst/postprocessing/ImageProcessor;-><init>(Ljava/util/List;Ljava/util/UUID;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/concurrent/Executor;Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;)V

    .line 191
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->hiResImages:Lcom/google/android/libraries/smartburst/media/Summary;

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->imageAspectRatio:Lcom/android/camera/util/AspectRatio;

    iget v3, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask;->imageRotationInDegrees:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/burst/postprocessing/ImageProcessor;->saveImages(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/android/camera/util/AspectRatio;I)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method
