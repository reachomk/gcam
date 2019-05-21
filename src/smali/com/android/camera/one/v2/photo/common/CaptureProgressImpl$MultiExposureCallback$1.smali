.class final Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;
.super Ljava/lang/Object;
.source "CaptureProgressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;->this$1:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;->this$1:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->access$000(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;->this$1:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->access$300(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)Lcom/android/camera/one/OneCamera$PictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;->this$1:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;

    invoke-static {v1}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->access$100(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;->this$1:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;

    invoke-static {v2}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->access$200(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onTakePictureProgress(F)V

    .line 49
    :cond_0
    return-void
.end method
