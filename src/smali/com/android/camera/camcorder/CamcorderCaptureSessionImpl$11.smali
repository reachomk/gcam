.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->resetSession()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<TC;TC;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 551
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1554
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/PreviewStarter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 1556
    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 1557
    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v2

    .line 1554
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/camcorder/camera/PreviewStarter;->startPreview(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 551
    return-object v0
.end method
