.class public final Lcom/android/camera/burst/ConstantRotationFrameSaver;
.super Ljava/lang/Object;
.source "ConstantRotationFrameSaver.java"

# interfaces
.implements Lcom/android/camera/burst/FrameSaver;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/ConstantRotationFrameSaver$SaveImageTask;
    }
.end annotation


# instance fields
.field private final burstSessionDirectory:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile closeWhenDone:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final frameSavingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/burst/FrameSaver$FrameSavingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final imageOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field

.field private final openImages:Lcom/android/camera/burst/TicketCounter;

.field private final reprocessingParameters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/camera/burst/TicketCounter;

    invoke-direct {v0}, Lcom/android/camera/burst/TicketCounter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->openImages:Lcom/android/camera/burst/TicketCounter;

    .line 1056
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->closeWhenDone:Z

    .line 225
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iput-object p1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 231
    iput-object p2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->reprocessingParameters:Ljava/util/Collection;

    .line 232
    iput-object p3, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->burstSessionDirectory:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 233
    iput-object p4, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->imageOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 235
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    .line 236
    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->closeWhenDone:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    monitor-enter v1

    .line 321
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->closeWhenDone:Z

    .line 323
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 326
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final enqueue(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/FrameSaver$FrameSavingTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p1}, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->getImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->openImages:Lcom/android/camera/burst/TicketCounter;

    invoke-virtual {v0}, Lcom/android/camera/burst/TicketCounter;->acquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v0

    .line 272
    iget-object v8, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    monitor-enter v8

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    .line 275
    new-instance v1, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;-><init>(Lcom/android/camera/burst/ConstantRotationFrameSaver;Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V

    iget-object v2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v5, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->getImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v2

    .line 293
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    new-instance v3, Lcom/android/camera/burst/ConstantRotationFrameSaver$2;

    invoke-direct {v3, v2, v0}, Lcom/android/camera/burst/ConstantRotationFrameSaver$2;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    .line 299
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 301
    new-instance v0, Lcom/android/camera/burst/ConstantRotationFrameSaver$SaveImageTask;

    iget-object v2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    iget-object v3, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->reprocessingParameters:Ljava/util/Collection;

    iget-object v6, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->burstSessionDirectory:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v7, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->imageOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/burst/ConstantRotationFrameSaver$SaveImageTask;-><init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/concurrent/Executor;Ljava/util/Collection;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 310
    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 311
    monitor-exit v8

    return-object v5

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid frame saving task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final releaseTask(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->getImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid frame saving task."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final tryAcquireFreeTask()Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/burst/FrameSaver$FrameSavingTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->openImages:Lcom/android/camera/burst/TicketCounter;

    invoke-virtual {v0}, Lcom/android/camera/burst/TicketCounter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v2, v0, :cond_0

    .line 243
    new-instance v0, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;-><init>(B)V

    .line 244
    iget-object v2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver;->frameSavingTasks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    monitor-exit v1

    .line 247
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
