.class final Lcom/android/camera/burst/RingBuffer$RingBufferImage;
.super Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/RingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingBufferImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TImage:",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;"
    }
.end annotation


# instance fields
.field private final image:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTImage;"
        }
    .end annotation
.end field

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTImage;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    iput-object p1, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->image:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 107
    iput-object p2, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->image:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->openImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image count negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public final getWrappedImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTImage;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$RingBufferImage;->image:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    return-object v0
.end method
