.class public final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "SingleCloseImageProxy.java"


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 27
    :cond_0
    return-void
.end method
