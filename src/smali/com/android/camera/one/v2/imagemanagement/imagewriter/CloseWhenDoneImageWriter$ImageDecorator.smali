.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "CloseWhenDoneImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDecorator"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;

    .line 28
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;)V

    .line 38
    :cond_0
    return-void
.end method
