.class final Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;
.super Ljava/lang/Object;
.source "Video2CamcorderDeviceOpenerImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->openCamcorderDevice(Lcom/android/camera/module/video2/Video2ModuleUI;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/camcorder/CamcorderDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

.field final synthetic val$camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

.field private synthetic val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field private synthetic val$orientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

.field private synthetic val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/module/video2/Video2OrientationCalculator;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    iput-object p2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iput-object p3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iput-object p4, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    iput-object p5, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$orientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$orientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->close()V

    .line 463
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 434
    .line 1437
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 1440
    invoke-virtual {v3}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isTorchAvailable()Z

    move-result v3

    .line 1437
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/video2/Video2Settings;->isTorchSupported(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Z)Z

    move-result v1

    .line 1441
    const/4 v0, 0x0

    .line 1442
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    invoke-virtual {v2}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isVideoResolutionSupported(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v0

    .line 1447
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    invoke-static {v2}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$400(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;-><init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;ZZ)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method
