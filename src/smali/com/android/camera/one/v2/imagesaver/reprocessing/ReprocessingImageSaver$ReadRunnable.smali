.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadRunnable"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;B)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 374
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$1400(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 378
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$800(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    const/4 v2, 0x0

    .line 382
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x100

    aput v5, v3, v4

    invoke-static {v0, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getLargestImageAndClose(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;[I)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 383
    :try_start_2
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :goto_0
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v4

    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1500(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1500(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)J

    move-result-wide v4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "No reprocessed frame received for timestamp "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", assuming frame was dropped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    new-instance v3, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    .line 391
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1500(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "No reprocessed frame received for timestamp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v3}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 393
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$1200(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 394
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$800(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;

    move-object v1, v0

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1600(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/android/camera/one/v2/photo/common/MetadataFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 400
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->forImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->TOTAL_CAPTURE_RESULT:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->add(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v0

    .line 402
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 412
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$1200(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$900(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    :cond_2
    :goto_2
    return-void

    .line 404
    :catch_0
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 405
    :goto_3
    if-eqz v1, :cond_3

    .line 406
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 408
    :cond_3
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 418
    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 420
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Buffer was closed before jpeg was received"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 404
    :catch_3
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_3
.end method
