.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "PollableImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenImageTracker"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;

    .line 27
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader$OpenImageTracker;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagereader/PollableImageReader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 37
    :cond_0
    return-void
.end method
