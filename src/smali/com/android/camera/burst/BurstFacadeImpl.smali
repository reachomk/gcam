.class public final Lcom/android/camera/burst/BurstFacadeImpl;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;
    }
.end annotation


# static fields
.field private static final DEFAULT_16_9_PREVIEW_SIZE:Lcom/android/camera/util/Size;

.field private static final DEFAULT_4_3_PREVIEW_SIZE:Lcom/android/camera/util/Size;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeBurstCounter:Lcom/android/camera/burst/TicketCounter;

.field private final appContext:Landroid/content/Context;

.field private final autoGenerateArtifacts:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final burstModeSetting:Lcom/android/camera/one/BurstModeSetting;

.field private volatile burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

.field private currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final instrumentation:Lcom/android/camera/stats/Instrumentation;

.field private final isIdle:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final previewSize:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final storage:Lcom/android/camera/storage/Storage;

.field private final surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/SurfaceTextureContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x280

    .line 51
    const-string v0, "BurstFacadeImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x1e0

    invoke-direct {v0, v2, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_4_3_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    .line 54
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x168

    invoke-direct {v0, v2, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_16_9_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/storage/FilesProxy;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/stats/Instrumentation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/stats/Instrumentation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance v0, Lcom/android/camera/burst/TicketCounter;

    invoke-direct {v0}, Lcom/android/camera/burst/TicketCounter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->activeBurstCounter:Lcom/android/camera/burst/TicketCounter;

    .line 81
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->activeBurstCounter:Lcom/android/camera/burst/TicketCounter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->equal(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->isIdle:Lcom/google/android/apps/camera/async/Observable;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_4_3_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->previewSize:Ljava/util/concurrent/atomic/AtomicReference;

    .line 105
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->appContext:Landroid/content/Context;

    .line 106
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/ProcessingServiceManager;

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 107
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FilesProxy;

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 108
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->storage:Lcom/android/camera/storage/Storage;

    .line 109
    iput-object p8, p0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 110
    iput-object p9, p0, Lcom/android/camera/burst/BurstFacadeImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 112
    iput-object p4, p0, Lcom/android/camera/burst/BurstFacadeImpl;->autoGenerateArtifacts:Lcom/google/android/apps/camera/async/Observable;

    .line 113
    new-instance v0, Lcom/android/camera/one/BurstModeSetting;

    invoke-virtual {p6}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isHybridBurstSupported()Z

    move-result v1

    invoke-direct {v0, v1, p5}, Lcom/android/camera/one/BurstModeSetting;-><init>(ZLcom/google/android/apps/camera/async/Observable;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->burstModeSetting:Lcom/android/camera/one/BurstModeSetting;

    .line 114
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/burst/BurstFacadeRunner;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/BurstFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/SurfaceTextureContainer;

    invoke-virtual {v0}, Lcom/android/camera/burst/SurfaceTextureContainer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized initialize(Landroid/graphics/SurfaceTexture;Ljava/util/List;Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstFacadeRunner#initialize"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getDesiredOutputSize()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v0

    .line 1291
    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_4_3_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_16_9_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    .line 1292
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v2

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 1293
    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_4_3_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    .line 2243
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid sizes for SmartBurst preview stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1296
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl;->DEFAULT_16_9_PREVIEW_SIZE:Lcom/android/camera/util/Size;

    goto :goto_0

    .line 2247
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 231
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->previewSize:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 237
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/camera/burst/SurfaceTextureContainer;

    invoke-direct {v1, p1}, Lcom/android/camera/burst/SurfaceTextureContainer;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 2251
    :cond_3
    :try_start_2
    new-instance v3, Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;

    invoke-direct {v3, v2}, Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;-><init>(Lcom/android/camera/util/Size;)V

    .line 2254
    invoke-static {p2, v3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 2256
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2257
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 2258
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 2259
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 2260
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2266
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2273
    invoke-static {v4, v3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 2274
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->area()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    long-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_2

    move-object v0, v1

    .line 2280
    goto :goto_1
.end method

.method public final isIdle()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->isIdle:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final release()V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 320
    sget-object v0, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {p0, v0}, Lcom/android/camera/burst/BurstFacadeImpl;->stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstFacadeImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/burst/BurstFacadeImpl$2;-><init>(Lcom/android/camera/burst/BurstFacadeImpl;)V

    .line 321
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->thenAlways(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 333
    return-void
.end method

.method public final setBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR55B0____(Lcom/android/camera/hdrplus/HdrPlusModule;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    .line 339
    return-void
.end method

.method public final startBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A92JDTQN4OR57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMS92JEHGM6QR1C9M6AGR1E1Q7ASJ5ADIN6SR9DTN46SJ5C5Q6USHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTKIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T2CD5R6AK3ICLR6IPBN8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/burst/BurstFacade$Source;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            "Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "I",
            "Lcom/android/camera/burst/BurstLivePreviewController;",
            "Lcom/android/camera/hdrplus/HdrPlusSessionModule;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 130
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->markLongPressDetection()V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Ljava/lang/String;

    const-string v2, "Burst not started, null surface."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->startFailedInvalidState()V

    .line 135
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    if-eqz v1, :cond_1

    .line 139
    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Ljava/lang/String;

    const-string v2, "Burst not started: A burst runner already exists"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->startFailedInvalidState()V

    .line 141
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/BurstFacadeImpl;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    .line 146
    if-nez v4, :cond_2

    .line 147
    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Ljava/lang/String;

    const-string v2, "Burst not started due to missing injected fields."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->startFailedInvalidState()V

    .line 149
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, v4, Lcom/android/camera/hdrplus/HdrPlusModule;->burstCaptureCommandFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH1M2S3KELP6AGRFDLMM2RJ48PGM6T3FE9SJM___:Lcom/android/camera/data/FilmstripDataModule;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripDataModule;->canStartBurst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Ljava/lang/String;

    const-string v2, "Burst not started because the factory told us not to start one."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->startFailedNotEnoughBuffers()V

    .line 155
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "BurstFacadeRunner#startBurst"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 158
    new-instance v1, Lcom/android/camera/burst/BurstFacadeRunner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstFacadeImpl;->appContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/BurstFacadeImpl;->previewSize:Ljava/util/concurrent/atomic/AtomicReference;

    .line 161
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/burst/BurstFacadeImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/burst/BurstFacadeImpl;->burstModeSetting:Lcom/android/camera/one/BurstModeSetting;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/burst/BurstFacadeImpl;->autoGenerateArtifacts:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/burst/BurstFacadeImpl;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/BurstFacadeImpl;->activeBurstCounter:Lcom/android/camera/burst/TicketCounter;

    .line 174
    invoke-virtual {v5}, Lcom/android/camera/burst/TicketCounter;->acquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl;->storage:Lcom/android/camera/storage/Storage;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    move-object/from16 v20, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v20}, Lcom/android/camera/burst/BurstFacadeRunner;-><init>(Landroid/content/Context;Lcom/android/camera/util/Size;Lcom/android/camera/hdrplus/HdrPlusModule;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/one/BurstModeSetting;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;Lcom/google/android/apps/camera/async/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/android/camera/storage/Storage;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/stats/Instrumentation;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 181
    invoke-virtual {v1}, Lcom/android/camera/burst/BurstFacadeRunner;->readyForNextBurstFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstFacadeImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/burst/BurstFacadeImpl$1;-><init>(Lcom/android/camera/burst/BurstFacadeImpl;)V

    new-instance v3, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    .line 182
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-virtual {v1}, Lcom/android/camera/burst/BurstFacadeRunner;->run()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v2}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_0
.end method

.method public final stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 200
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->currentBurstRunner:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 202
    if-nez v0, :cond_0

    .line 203
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "BurstFacadeRunner#stopBurst"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_0
.end method
