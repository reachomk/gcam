.class public final Lcom/android/camera/one/v2/imagesaver/util/TrackedImage;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "TrackedImage.java"


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/util/TrackedImage;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/util/TrackedImage;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 38
    return-void
.end method
