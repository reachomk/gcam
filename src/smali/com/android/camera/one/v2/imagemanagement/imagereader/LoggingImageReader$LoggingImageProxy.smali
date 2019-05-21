.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "LoggingImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoggingImageProxy"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;

    .line 19
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader$LoggingImageProxy;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagereader/LoggingImageReader;)V

    .line 29
    :cond_0
    return-void
.end method
