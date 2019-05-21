.class public final Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;
.super Ljava/lang/Object;
.source "SoftwareJpegImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final capacity$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final taskQueue:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->executor:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->capacity$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 64
    new-instance v0, Lcom/android/camera/processing/memory/ByteBufferDirectPool;

    invoke-direct {v0, v2}, Lcom/android/camera/processing/memory/ByteBufferDirectPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 65
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->taskQueue:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->getJpegCompressionQuality()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)[B
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->allocateAndCompressJpeg(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)[B

    move-result-object v0

    return-object v0
.end method

.method private final allocateAndCompressJpeg(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)[B
    .locals 9

    .prologue
    .line 168
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 169
    iget-object v1, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 180
    mul-int/lit8 v0, v0, 0x3

    mul-int v3, v0, v1

    .line 181
    div-int/lit8 v4, v3, 0x2

    .line 183
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/processing/memory/LruResourcePool;->acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    move-result-object v5

    const/4 v1, 0x0

    .line 184
    :try_start_0
    invoke-virtual {v5}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 187
    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to allocate buffer for JPEG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_0
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v5}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    .line 193
    :cond_0
    :try_start_3
    iget-object v2, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v6, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 198
    invoke-virtual {v7}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v7

    .line 193
    invoke-static {v2, v0, p2, v6, v7}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I

    move-result v2

    .line 202
    if-le v2, v4, :cond_4

    .line 203
    invoke-virtual {v5}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 204
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/processing/memory/LruResourcePool;->acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    .line 205
    invoke-virtual {v5}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 208
    if-nez v0, :cond_1

    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x35

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to allocate buffer for JPEG: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 213
    :cond_1
    iget-object v2, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v3, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 218
    invoke-virtual {v4}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v4

    .line 213
    invoke-static {v2, v0, p2, v3, v4}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I

    move-result v2

    move v8, v2

    move-object v2, v0

    move v0, v8

    .line 221
    :goto_2
    if-gtz v0, :cond_2

    .line 222
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error compressing jpeg: num bytes written was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 227
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 229
    new-array v0, v0, [B

    .line 230
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    invoke-virtual {v5}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 232
    return-object v0

    .line 233
    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    goto/16 :goto_1

    :cond_4
    move v8, v2

    move-object v2, v0

    move v0, v8

    goto :goto_2
.end method

.method private static getJpegCompressionQuality()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->taskQueue:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;->close()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->capacity$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method public final maxThroughput()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->capacity$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .prologue
    .line 36
    check-cast p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 1071
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 1072
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 1073
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "Only YUV_420_888 images are supported"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->taskQueue:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;-><init>(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;->submit(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method
