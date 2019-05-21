.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;
.source "PollableImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;
    }
.end annotation


# instance fields
.field private final numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final decorateNewImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 1

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 71
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->getMaxImages()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->decorateNewImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public final acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->getMaxImages()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->decorateNewImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    goto :goto_0
.end method
