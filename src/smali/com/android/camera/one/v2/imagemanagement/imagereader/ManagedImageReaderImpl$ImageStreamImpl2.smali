.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$ImageStreamImpl2;
.super Lcom/google/android/apps/camera/async/ForwardingBufferQueue;
.source "ManagedImageReaderImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ForwardingBufferQueue",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">;",
        "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;"
    }
.end annotation


# instance fields
.field private final frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$FrameUnwrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;B)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/ForwardingBufferQueue;-><init>(Lcom/google/android/apps/camera/async/BufferQueue;)V

    .line 88
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$ImageStreamImpl2;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$ImageStreamImpl2;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/apps/camera/async/ForwardingBufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    return-object v0
.end method

.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReaderImpl$ImageStreamImpl2;->frameStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    return-object v0
.end method
