.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;
.super Ljava/lang/Object;
.source "ManagedImageReaderImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/BufferQueue;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/BufferQueue",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;B)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V

    return-void
.end method

.method private getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    const/4 v2, 0x0

    .line 118
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 119
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MissingImage;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MissingImage;-><init>(J)V

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    :cond_0
    move-object v0, v1

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 122
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    :cond_2
    move-object v0, v1

    .line 122
    goto :goto_0

    .line 121
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V

    .line 113
    return-void
.end method

.method public final bridge synthetic getNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;->getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final synthetic tryGetNext()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    .line 1129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->tryGetNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1130
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1136
    :goto_0
    return-object v0

    .line 1134
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1135
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    move-object v0, v2

    .line 1136
    goto :goto_0

    .line 1139
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 1140
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    move-object v0, v1

    .line 102
    goto :goto_0

    .line 1139
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
