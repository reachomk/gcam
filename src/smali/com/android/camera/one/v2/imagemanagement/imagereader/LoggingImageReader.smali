.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;
.source "LoggingImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;
    }
.end annotation


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;

.field private final numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 41
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getImageFormat()I

    move-result v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->imageFormatToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getWidth()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "IR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "w"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->log:Lcom/android/camera/debug/Logger;

    .line 44
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Created ImageReader: "

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->decrementOpenImageCount()V

    return-void
.end method

.method private final decorateNewImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 1

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 76
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    goto :goto_0
.end method

.method private final decrementOpenImageCount()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 91
    return-void
.end method


# virtual methods
.method public final acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->getMaxImages()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Open Image Count (%d) exceeds maximum (%d)!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->getMaxImages()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 64
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->decorateNewImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public final acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->getMaxImages()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Open Image Count (%d) exceeds maximum (%d)!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->numOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->getMaxImages()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 53
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->decorateNewImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Closing: "

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->close()V

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
