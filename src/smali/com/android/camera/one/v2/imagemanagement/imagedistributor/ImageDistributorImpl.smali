.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;
.super Ljava/lang/Object;
.source "ImageDistributorImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final dispatchTable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;",
            ">;"
        }
    .end annotation
.end field

.field private final globalImageIdQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;"
        }
    .end annotation
.end field

.field private final globalImageIds:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

.field private final imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/android/camera/debug/Logger;

.field private pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

.field private pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

.field private readyToProcessNextImage:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->closed:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->readyToProcessNextImage:Z

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->dispatchTable:Ljava/util/Set;

    .line 112
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIds:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIdQueue:Ljava/util/Queue;

    .line 114
    const-string v0, "ImageDistributor"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->log:Lcom/android/camera/debug/Logger;

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIds:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIdQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Z)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->readyToProcessNextImage:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->logMissingImage(Lcom/android/camera/one/v2/core/ImageId;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->distributeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private final distributeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->dispatchTable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;

    .line 350
    iget-object v4, v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;->requestedImages:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-virtual {v4, p2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->remove(Lcom/android/camera/one/v2/core/ImageId;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;->imageStream:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
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

    .line 356
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 358
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 373
    :goto_1
    return-object v0

    .line 360
    :cond_2
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, p1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V

    .line 365
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 366
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    .line 367
    new-instance v6, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v6, v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 369
    invoke-static {v6}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->forImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v6

    .line 368
    invoke-interface {v1, v6}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 370
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 373
    :cond_3
    invoke-static {v4}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1
.end method

.method private final distributeImage(Ljava/util/SortedSet;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->distributeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 318
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 319
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    .line 321
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/android/camera/one/v2/core/ImageId;)V

    .line 322
    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    move-object v1, v0

    .line 332
    goto :goto_1

    .line 334
    :cond_1
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$4;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)V

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method private final logMissingImage(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 7

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->log:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    .line 390
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getImageFormat()I

    move-result v1

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->imageFormatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    .line 391
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Missing ImageId from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ImageReader@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 393
    return-void
.end method


# virtual methods
.method public final addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameServerModule;->noop()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    monitor-exit v1

    .line 132
    :goto_0
    return-object v0

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-direct {v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;-><init>()V

    .line 126
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;B)V

    .line 128
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->dispatchTable:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final close()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->closed:Z

    .line 162
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 164
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->dispatchTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 172
    :cond_1
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final update()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->closed:Z

    if-eqz v0, :cond_1

    .line 225
    monitor-exit v3

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->readyToProcessNextImage:Z

    if-nez v0, :cond_2

    .line 229
    monitor-exit v3

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1377
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->dispatchTable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;

    .line 1380
    iget-object v7, v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;->imageStream:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v7}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1381
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1385
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1384
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->dispatchTable:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1385
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v0, :cond_7

    :cond_5
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-nez v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-nez v0, :cond_8

    .line 241
    monitor-exit v3

    goto :goto_0

    :cond_7
    move v0, v2

    .line 236
    goto :goto_2

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    if-nez v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v4

    .line 247
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIds:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->peek(Ljava/lang/Long;)Lcom/android/camera/one/v2/core/ImageId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 249
    :cond_9
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    if-nez v0, :cond_a

    .line 250
    monitor-exit v3

    goto :goto_0

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    .line 258
    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    invoke-virtual {v6}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 259
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    goto :goto_3

    .line 261
    :cond_b
    if-nez v0, :cond_c

    .line 262
    monitor-exit v3

    goto/16 :goto_0

    .line 267
    :cond_c
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    if-eqz v4, :cond_d

    .line 268
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIds:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->remove(Lcom/android/camera/one/v2/core/ImageId;)Z

    .line 271
    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 273
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 274
    iget-object v5, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->readyToProcessNextImage:Z

    .line 277
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    if-nez v4, :cond_f

    move v3, v1

    :goto_5
    if-nez v5, :cond_10

    move v0, v1

    :goto_6
    if-ne v3, v0, :cond_11

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 279
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->globalImageIds:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-virtual {v0, v5}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->removeIdsOlderThan(Lcom/android/camera/one/v2/core/ImageId;)Ljava/util/TreeSet;

    move-result-object v0

    .line 283
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 284
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->pendingImageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 285
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 287
    invoke-direct {p0, v0, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->distributeImage(Ljava/util/SortedSet;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 289
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 271
    goto :goto_4

    :cond_f
    move v3, v2

    .line 278
    goto :goto_5

    :cond_10
    move v0, v2

    goto :goto_6

    :cond_11
    move v0, v2

    goto :goto_7

    .line 285
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method
