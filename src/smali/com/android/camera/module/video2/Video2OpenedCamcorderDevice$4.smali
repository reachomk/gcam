.class final Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$4;
.super Ljava/lang/Object;
.source "Video2OpenedCamcorderDevice.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->createCamcorderCaptureSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Landroid/view/Surface;",
        "Lcom/android/camera/camcorder/CamcorderCaptureSession;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$4;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 285
    check-cast p1, Landroid/view/Surface;

    .line 1289
    invoke-static {}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Viewfinder#swapAndStartSurfaceViewViewfinder onSuccess."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-static {}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Call CamcorderDevice#createCaptureSession."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$4;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$400(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/camcorder/CamcorderDevice;->createCaptureSession(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 285
    return-object v0
.end method
