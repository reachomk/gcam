.class public final Lcom/android/camera/processing/imagebackend/ImageBackend;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageConsumer;
.implements Lcom/android/camera/processing/imagebackend/ImageTaskManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;
    }
.end annotation


# static fields
.field private static final FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

.field private static final TAG:Ljava/lang/String;


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

.field private final imageSemaphoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingImageClosed:I

.field private outstandingImageOpened:I

.field private outstandingImageRefs:I

.field private final pendingImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final processingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

.field private proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

.field private final shadowTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;",
            ">;"
        }
    .end annotation
.end field

.field private threadPoolAverage:Ljava/util/concurrent/ExecutorService;

.field private threadPoolCritical:Ljava/util/concurrent/ExecutorService;

.field private threadPoolFast:Ljava/util/concurrent/ExecutorService;

.field private threadPoolSlow:Ljava/util/concurrent/ExecutorService;

.field private final tinyThumbnailTargetSize:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "ImageBackend"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/ProcessingTaskConsumer;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    .line 162
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageOpened:I

    .line 164
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageClosed:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 171
    const-string v0, "BckndCritEx"

    const/4 v1, -0x8

    .line 172
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/camera/async/Futures2;->newFixedThreadPool(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolCritical:Ljava/util/concurrent/ExecutorService;

    .line 174
    const-string v0, "BckndFastEx"

    const/16 v1, 0x8

    .line 175
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/camera/async/Futures2;->newFixedThreadPool(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolFast:Ljava/util/concurrent/ExecutorService;

    .line 176
    const-string v0, "BckndAvgEx"

    const/16 v1, 0xb

    .line 177
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/camera/async/Futures2;->newFixedThreadPool(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolAverage:Ljava/util/concurrent/ExecutorService;

    .line 179
    const-string v0, "BckndSlowEx"

    const/16 v1, 0x9

    .line 180
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/camera/async/Futures2;->newFixedThreadPool(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolSlow:Ljava/util/concurrent/ExecutorService;

    .line 181
    new-instance v0, Lcom/android/camera/processing/memory/ByteBufferDirectPool;

    invoke-direct {v0, v2}, Lcom/android/camera/processing/memory/ByteBufferDirectPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 182
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    invoke-direct {v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    .line 185
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->processingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

    .line 186
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p2, p2}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->tinyThumbnailTargetSize:Lcom/android/camera/util/Size;

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/processing/imagebackend/ImageBackend;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageClosed:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/camera/processing/imagebackend/ImageBackend;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageClosed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageClosed:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/processing/imagebackend/ImageBackend;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageOpened:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->clearTaskDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->decrementTaskDone(Lcom/android/camera/processing/imagebackend/ImageShadowTask;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/processing/imagebackend/ImageBackend;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->shiftCompletedButOpenImagesToPending(Ljava/util/Set;)V

    return-void
.end method

.method private appendTasks(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 353
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 354
    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v5, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eq v4, v5, :cond_0

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 359
    :cond_2
    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 3063
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 3064
    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eq v5, v3, :cond_4

    .line 3065
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ERROR:  Spawned tasks cannot reference new images!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3068
    :cond_4
    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eqz v0, :cond_3

    .line 3069
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 360
    :cond_5
    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 3961
    if-eqz v3, :cond_6

    if-nez v1, :cond_7

    .line 364
    :cond_6
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->incrementTaskDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Ljava/util/Set;)Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    move-result-object v0

    .line 367
    invoke-direct {p0, p2, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->scheduleTasks(Ljava/util/Set;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;)V

    .line 368
    return v2

    .line 3965
    :cond_7
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    monitor-enter v4

    .line 3966
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    .line 3967
    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    iget-object v6, v3, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 3968
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Image Reference has already been released or has never been held."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3976
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3972
    :cond_8
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->addCount(I)I

    .line 3973
    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    iget-object v3, v3, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3975
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    .line 3976
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private final clearTaskDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final decrementTaskDone(Lcom/android/camera/processing/imagebackend/ImageShadowTask;)Z
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    monitor-enter v1

    .line 871
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getProtocol()Lcom/android/camera/processing/BlockSignalProtocol;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/processing/BlockSignalProtocol;->addCount(I)I

    move-result v0

    .line 872
    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getProtocol()Lcom/android/camera/processing/BlockSignalProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/processing/BlockSignalProtocol;->signal()V

    .line 874
    const/4 v0, 0x1

    monitor-exit v1

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final incrementTaskDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Ljava/util/Set;)Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    monitor-enter v2

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    .line 850
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->getImageShadowTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v3, "Task NOT previously registered. ImageShadowTask booking-keeping is incorrect."

    .line 849
    invoke-static {v1, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 854
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->getImageShadowTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getProtocol()Lcom/android/camera/processing/BlockSignalProtocol;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/processing/BlockSignalProtocol;->addCount(I)I

    .line 857
    monitor-exit v2

    return-object v0

    .line 850
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initializeTaskDone(Ljava/util/Set;Lcom/android/camera/session/SessionBase;Ljava/util/Set;Lcom/google/common/base/Optional;)Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;",
            "Lcom/android/camera/session/SessionBase;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;"
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lcom/android/camera/processing/BlockSignalProtocol;

    invoke-direct {v0}, Lcom/android/camera/processing/BlockSignalProtocol;-><init>()V

    .line 807
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/BlockSignalProtocol;->setCount(I)V

    .line 808
    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .line 810
    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-direct {v1, v0, v2, p4}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;-><init>(Lcom/android/camera/processing/BlockSignalProtocol;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    .line 812
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    monitor-enter v2

    .line 813
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 814
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    .line 815
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v4, "Overlap of Shadow Task association.  You\'ve possibly submitted the same task twice?"

    invoke-static {v0, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 815
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 820
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    invoke-direct {v0, v1, p3}, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;-><init>(Lcom/android/camera/processing/imagebackend/ImageShadowTask;Ljava/util/Set;)V

    return-object v0
.end method

.method public static logWrapper(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private receiveImage(Lcom/android/camera/session/SessionBase;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/SessionBase;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;ZZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 518
    const-string v0, "Need a valid Capture Session to associated with the Processing Task"

    invoke-static {p1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    .line 4039
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4041
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 4042
    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v4, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 4043
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4044
    if-nez v0, :cond_1

    .line 4045
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4047
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 534
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 533
    invoke-direct {p0, p2, p1, v0, p5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->initializeTaskDone(Ljava/util/Set;Lcom/android/camera/session/SessionBase;Ljava/util/Set;Lcom/google/common/base/Optional;)Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    move-result-object v4

    .line 539
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 541
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 542
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 545
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 544
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/camera/processing/imagebackend/ImageBackend;->setSemaphoreReferenceCount(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;IZZ)Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    move-result-object v0

    .line 546
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->processingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

    invoke-virtual {v4}, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->getImageShadowTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/processing/ProcessingTaskConsumer;->enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 554
    invoke-direct {p0, p2, v4}, Lcom/android/camera/processing/imagebackend/ImageBackend;->scheduleTasks(Ljava/util/Set;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;)V

    .line 557
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    .line 558
    iget-boolean v3, v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->blockUntilRelease:Z

    if-eqz v3, :cond_4

    .line 559
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->block()V

    goto :goto_3

    :cond_5
    move v0, v2

    .line 563
    goto/16 :goto_0
.end method

.method private final scheduleTasks(Ljava/util/Set;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 890
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    monitor-enter v1

    .line 891
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 895
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4297
    iget v3, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->processingPriority$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    .line 897
    add-int/lit8 v3, v3, -0x1

    packed-switch v3, :pswitch_data_0

    .line 911
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolSlow:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 899
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolCritical:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 903
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolFast:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 906
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->threadPoolAverage:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 915
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 897
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final setSemaphoreReferenceCount(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;IZZ)Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    monitor-enter v1

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    .line 929
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Image is already being processed by another task."

    .line 928
    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 932
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    invoke-direct {v0, p3, p4}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;-><init>(ZZ)V

    .line 933
    invoke-virtual {v0, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->setCount(I)V

    .line 935
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    .line 937
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageOpened:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageOpened:I

    .line 938
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageOpened:I

    iget v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageClosed:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x31

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Received an opened image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5248
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Setting an image reference count of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   Total refs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6248
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    monitor-exit v1

    return-object v0

    .line 929
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final shiftCompletedButOpenImagesToPending(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    monitor-enter v2

    .line 989
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 990
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    .line 992
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final appendTasks(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 383
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->appendTasks(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final detachImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    monitor-enter v1

    .line 753
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 755
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 758
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    .line 759
    const/4 v0, 0x1

    monitor-exit v1

    .line 764
    :goto_0
    return v0

    .line 761
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 764
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final getPendingImages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 735
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    return-object v0
.end method

.method public final receiveImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/SessionBase;Lcom/google/common/base/Optional;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;",
            ">;",
            "Lcom/android/camera/session/SessionBase;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 604
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_MARKED_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;

    invoke-direct {v1, p1, p2, p0, p4}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;)V

    .line 611
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;

    sget-object v5, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 623
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/base/Optional;)V

    .line 615
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;

    sget v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->AVERAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    iget-object v6, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->tinyThumbnailTargetSize:Lcom/android/camera/util/Size;

    sget v7, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_CIRCULAR_INSET$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;I)V

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_1
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 687
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 688
    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageBackend$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$1;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    .line 695
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 700
    :goto_1
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->BLOCK_UNTIL_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 703
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 704
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p4

    move-object v2, v8

    .line 700
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/session/SessionBase;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 706
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4238
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 707
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    iget-object v2, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registerListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 709
    :cond_2
    const/4 v0, 0x1

    .line 711
    :goto_2
    return v0

    .line 627
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_4
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/processing/memory/LruResourcePool;)V

    .line 632
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 636
    new-instance v9, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;

    sget-object v5, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 644
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/base/Optional;)V

    .line 636
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 648
    :cond_5
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 650
    :cond_6
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;

    sget-object v5, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->byteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 660
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/base/Optional;)V

    .line 652
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 697
    :cond_7
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    goto/16 :goto_1

    .line 711
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final receiveImage$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNKIRB1CTIL8RQGE9NM6PBJECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASHRB9D4OORFDKNMERRFCTM6ABR3DTMMQRRE5TH62SR55T7N0T39DTN62R1R55D0____(Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZLcom/google/common/base/Optional;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v2, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 457
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->session:Lcom/android/camera/session/SessionBase;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/session/SessionBase;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z

    move-result v0

    return v0
.end method

.method public final releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V
    .locals 5

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    .line 294
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ERROR: Task implementation did NOT balance its release."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 301
    :cond_1
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->addCount(I)I

    .line 302
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    .line 303
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ref release.  Total refs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1248
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 308
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->pendingImages:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 315
    iget-boolean v2, v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->closeOnRelease:Z

    if-eqz v2, :cond_2

    .line 2008
    new-instance v2, Lcom/android/camera/processing/imagebackend/ImageBackend$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/processing/imagebackend/ImageBackend$2;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 2022
    if-nez p2, :cond_4

    .line 2024
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 317
    :goto_0
    const-string v2, "Ref release close."

    .line 2248
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2
    iget-boolean v2, v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->blockUntilRelease:Z

    if-eqz v2, :cond_3

    .line 322
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->signal()V

    .line 329
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    .line 2026
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 327
    :cond_5
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->shadowTaskMap:Ljava/util/Map;

    .line 472
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->imageSemaphoreMap:Ljava/util/Map;

    .line 475
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->outstandingImageRefs:I

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 481
    invoke-virtual {v3}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->getMapSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->proxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 484
    invoke-virtual {v4}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->getNumRegisteredListeners()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0xe5

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "ImageBackend Status BEGIN:\nShadow Image Map Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\nImage Semaphore Map Size = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nOutstandingImageRefs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nProxy Listener Map Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nProxy Listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nImageBackend Status END:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    return-object v0
.end method
