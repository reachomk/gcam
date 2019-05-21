.class abstract Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;
.super Ljava/lang/Object;
.source "ForwardingFrame.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/Frame;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;->delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    .line 44
    return-void
.end method

.method protected abstract delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;
.end method

.method public final getImageCount()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;->delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v0

    return v0
.end method

.method public final getImages()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;->delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImages()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;->delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;->delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForwardingFrame;->delegate()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    return-object v0
.end method
