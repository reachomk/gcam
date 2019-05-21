.class final Lcom/android/camera/burst/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/RingBuffer$RingBufferImage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

.field private frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final frameDropperFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
            ">;"
        }
    .end annotation
.end field

.field private final frameSaver:Lcom/android/camera/burst/FrameSaver;

.field private final images:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/android/camera/burst/RingBuffer$RingBufferImage",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private isLocked:Z

.field private maxCapacity:I

.field private final openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final savedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "RingBuffer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/FrameSaver;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
            ">;",
            "Lcom/android/camera/burst/FrameSaver;",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer;->savedImages:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 65
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput p1, p0, Lcom/android/camera/burst/RingBuffer;->maxCapacity:I

    .line 70
    iput-object p2, p0, Lcom/android/camera/burst/RingBuffer;->frameDropperFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 71
    iput-object p3, p0, Lcom/android/camera/burst/RingBuffer;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    .line 72
    iput-object p4, p0, Lcom/android/camera/burst/RingBuffer;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z

    .line 75
    sget-object v0, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Created with capacity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private final declared-synchronized addImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v2

    new-instance v1, Lcom/android/camera/burst/RingBuffer$RingBufferImage;

    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1, v4}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;-><init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized enqueueImageForSaving(Lcom/android/camera/burst/RingBuffer$RingBufferImage;Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/RingBuffer$RingBufferImage",
            "<TT;>;",
            "Lcom/android/camera/burst/FrameSaver$FrameSavingTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->getTimestamp()J

    move-result-wide v2

    .line 363
    invoke-virtual {p1}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->getWidth()I

    move-result v5

    .line 364
    invoke-virtual {p1}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->getHeight()I

    move-result v6

    .line 365
    invoke-virtual {p2, p1}, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->setImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->savedImages:Ljava/util/List;

    new-instance v1, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;

    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    invoke-interface {v4, p2}, Lcom/android/camera/burst/FrameSaver;->enqueue(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;-><init>(JLcom/google/common/util/concurrent/ListenableFuture;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized fetchFrameDropper()Lcom/google/android/libraries/smartburst/selection/FrameDropper;
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropperFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized removeAndCloseImage(J)V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/burst/RingBuffer;->removeImage(J)Lcom/android/camera/burst/RingBuffer$RingBufferImage;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized removeImage(J)Lcom/android/camera/burst/RingBuffer$RingBufferImage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/camera/burst/RingBuffer$RingBufferImage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;

    .line 297
    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-object v0

    .line 300
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not remove image with timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": image does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    const-string v2, "Available timestamps are: "

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 303
    sget-object v2, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized tryEnqueueImagesForSaving()V
    .locals 4

    .prologue
    .line 331
    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    invoke-interface {v0}, Lcom/android/camera/burst/FrameSaver;->tryAcquireFreeTask()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;

    .line 337
    invoke-direct {p0}, Lcom/android/camera/burst/RingBuffer;->fetchFrameDropper()Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reserveBestFrameForProcessing()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/camera/burst/RingBuffer;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    invoke-interface {v1, v0}, Lcom/android/camera/burst/FrameSaver;->releaseTask(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :cond_1
    monitor-exit p0

    return-void

    .line 343
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 344
    invoke-direct {p0, v2, v3}, Lcom/android/camera/burst/RingBuffer;->removeImage(J)Lcom/android/camera/burst/RingBuffer$RingBufferImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 347
    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/android/camera/burst/RingBuffer;->enqueueImageForSaving(Lcom/android/camera/burst/RingBuffer$RingBufferImage;Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 354
    :try_start_3
    invoke-virtual {v1}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 279
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;

    invoke-virtual {v0}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->close()V

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 283
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->savedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    invoke-interface {v0}, Lcom/android/camera/burst/FrameSaver;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAndRemoveAllImages()Lcom/google/android/libraries/smartburst/media/Summary;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/burst/RingBuffer;->tryEnqueueImagesForSaving()V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v0

    .line 224
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 225
    invoke-direct {p0, v0, v1}, Lcom/android/camera/burst/RingBuffer;->removeAndCloseImage(J)V

    .line 226
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v4, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/burst/RingBuffer;->tryEnqueueImagesForSaving()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v4

    .line 235
    new-instance v5, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v5}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;-><init>()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z

    move v1, v3

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 242
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;

    .line 245
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 246
    new-instance v8, Lcom/android/camera/burst/HiResImage;

    invoke-virtual {v0}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->getWrappedImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/camera/burst/HiResImage;-><init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->add(JLcom/google/android/libraries/smartburst/media/Image;Z)V

    .line 240
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->close()V

    goto :goto_2

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->savedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;

    .line 252
    iget-object v1, p0, Lcom/android/camera/burst/RingBuffer;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    sget-object v7, Lcom/google/android/libraries/smartburst/integration/BurstMode;->HYBRID_BURST:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    if-ne v1, v7, :cond_5

    .line 253
    iget-wide v8, v0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 254
    :goto_4
    iget-wide v8, v0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;->timestamp:J

    new-instance v7, Lcom/android/camera/burst/HiResImage;

    invoke-direct {v7, v0}, Lcom/android/camera/burst/HiResImage;-><init>(Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;)V

    invoke-virtual {v5, v8, v9, v7, v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->add(JLcom/google/android/libraries/smartburst/media/Image;Z)V

    goto :goto_3

    :cond_4
    move v1, v3

    .line 253
    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_4

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 257
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->savedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized increaseCapacity(I)V
    .locals 3

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/burst/RingBuffer;->maxCapacity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/burst/RingBuffer;->maxCapacity:I

    .line 271
    sget-object v0, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "increased capacity by 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized insertImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->images:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z

    if-eqz v2, :cond_1

    .line 141
    sget-object v0, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    const-string v1, "Ring buffer is locked, cannot add image"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/android/camera/burst/RingBuffer;->maxCapacity:I

    if-lt v2, v3, :cond_2

    .line 146
    sget-object v0, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    const-string v1, "Ring buffer is full, cannot add image"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/burst/RingBuffer;->addImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V

    .line 152
    invoke-direct {p0}, Lcom/android/camera/burst/RingBuffer;->fetchFrameDropper()Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V

    .line 153
    invoke-direct {p0}, Lcom/android/camera/burst/RingBuffer;->tryEnqueueImagesForSaving()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized lockIfFull()Z
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z

    .line 163
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/camera/burst/RingBuffer;->maxCapacity:I

    if-ge v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized tryFreeSlotForImage()V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/burst/RingBuffer;->isLocked:Z

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    const-string v1, "Trying to free up a slot when the ring buffer is already done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/camera/burst/RingBuffer;->maxCapacity:I

    if-lt v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v0

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/android/camera/burst/RingBuffer;->removeAndCloseImage(J)V

    .line 183
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->frameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    :try_start_2
    sget-object v1, Lcom/android/camera/burst/RingBuffer;->TAG:Ljava/lang/String;

    const-string v2, "Error when freeing a slot"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
