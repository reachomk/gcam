.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken$51DK4J33DTMIUOBECHP6UQB45TINGBR3C5MMASJ168NN0RRIEHGM4QBCD5Q7IBQ3C5MMASJ185JMARJK4H1M2RB5E9GL0SJFF1SJMAAM([B)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1602(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 702
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 703
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    move-result-object v3

    .line 702
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->resetCamera(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;Z)Lcom/android/ex/camera2/portability/Size;

    .line 704
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->updateHorizontalViewAngle()V

    .line 706
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 707
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 710
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;)V

    .line 709
    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 720
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->get3x3Matrix([F)[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[F)V

    .line 722
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V

    .line 724
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getNumCapturedTargets()I

    move-result v0

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getNumTotalTargets()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPhotoFinished()V

    .line 726
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 727
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getNumTotalTargets()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 729
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 736
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2600$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2600$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 739
    :cond_1
    return-void

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2500$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2500$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
