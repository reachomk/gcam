.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "CloseWhenDoneImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDecorator"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;

    .line 32
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)V

    .line 42
    :cond_0
    return-void
.end method
