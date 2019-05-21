.class final Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;
.super Ljava/lang/Object;
.source "Video2CamcorderDeviceOpenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;

.field private synthetic val$finalIsFpsOptionSupported:Z

.field private synthetic val$isTorchSupported:Z


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;ZZ)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->this$1:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;

    iput-boolean p2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->val$isTorchSupported:Z

    iput-boolean p3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->val$finalIsFpsOptionSupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->this$1:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$300(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->val$isTorchSupported:Z

    iget-boolean v2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->val$finalIsFpsOptionSupported:Z

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2$1;->this$1:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;

    iget-object v3, v3, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;->val$camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 453
    invoke-virtual {v3}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    .line 450
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/statecharts/StateBase;->camcorderOpened(ZZLcom/android/camera/one/OneCameraCharacteristics;)V

    .line 454
    return-void
.end method
