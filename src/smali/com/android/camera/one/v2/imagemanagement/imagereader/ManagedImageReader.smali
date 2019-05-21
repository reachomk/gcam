.class public Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;
.super Ljava/lang/Object;
.source "ManagedImageReader.java"


# instance fields
.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final imageSource:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)V
    .locals 1

    .prologue
    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2033
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->imageSource:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 2034
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {p1, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 2035
    return-void
.end method


# virtual methods
.method public createPreallocatedStream(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v1

    .line 1062
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1067
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$ImageStreamImpl2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$ImageStreamImpl2;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;B)V

    return-object v0

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    :goto_0
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V

    .line 1065
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1063
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;
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
    .line 1054
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxImageCount()I
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->imageSource:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->getTotalCapacity()I

    move-result v0

    return v0
.end method
