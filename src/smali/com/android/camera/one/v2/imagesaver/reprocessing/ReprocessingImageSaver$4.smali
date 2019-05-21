.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitReprocessingRequest(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncCallable",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

.field final synthetic val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

.field private synthetic val$metadataWithTimeout:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$metadataWithTimeout:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 269
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    .line 271
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$metadataWithTimeout:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 273
    new-instance v6, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 275
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 276
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->reprocessingParameters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 279
    invoke-virtual {v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/core/RequestBuilder;

    goto :goto_1

    .line 276
    :cond_0
    const-wide/16 v0, -0x1

    move-wide v2, v0

    goto :goto_0

    .line 282
    :cond_1
    new-instance v1, Lcom/android/camera/one/v2/photo/common/MetadataFuture;

    invoke-direct {v1}, Lcom/android/camera/one/v2/photo/common/MetadataFuture;-><init>()V

    .line 283
    invoke-virtual {v6, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 284
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4$1;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;)V

    invoke-virtual {v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 290
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 294
    new-instance v7, Lcom/google/android/apps/camera/proxy/camera2/NonClosingImage;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-direct {v7, v0}, Lcom/google/android/apps/camera/proxy/camera2/NonClosingImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    .line 297
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$400(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;->reserveImage(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/CloseableFutures;->getOrClose(Lcom/google/android/apps/camera/async/CloseableFuture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;

    .line 298
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v8, v8, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 299
    invoke-interface {v8}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->createImage(JLcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v7

    .line 305
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v8}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$500(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 306
    :try_start_2
    invoke-interface {v7}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;->submitAndClose()V

    .line 307
    iget-object v9, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v9}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$600(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v6

    invoke-interface {v9, v6}, Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;->submitReprocessingRequest(Lcom/android/camera/one/v2/core/Request;)V

    .line 308
    iget-object v6, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v6}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$800(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    move-result-object v6

    .line 309
    invoke-static {v2, v3, v1, v5}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$700(JLcom/android/camera/one/v2/photo/common/MetadataFuture;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;

    move-result-object v1

    .line 308
    invoke-virtual {v6, v1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->update(Ljava/lang/Object;)V

    .line 310
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    if-eqz v7, :cond_2

    :try_start_3
    invoke-interface {v7}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->close()V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$900(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$1100(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-direct {v1, v2, v10}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 317
    :cond_4
    return-object v5

    .line 310
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 296
    :catch_0
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 311
    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_2
    if-eqz v7, :cond_5

    if-eqz v2, :cond_7

    :try_start_7
    invoke-interface {v7}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_5
    :goto_3
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 296
    :catch_1
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 311
    :catchall_2
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    :goto_4
    if-eqz v0, :cond_6

    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    :cond_6
    :goto_5
    throw v1

    :catch_2
    move-exception v3

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_4

    :cond_7
    invoke-interface {v7}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->close()V

    goto :goto_5

    :catchall_4
    move-exception v1

    move-object v2, v4

    goto :goto_2
.end method
