.class final Lcom/android/camera/app/CameraActivityControllerImpl$6;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$6;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 867
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$6;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->forceStopBurst()V

    .line 857
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x1

    .line 858
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->setChangeCamMethod(I)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$6;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideVibrator()Landroid/os/Vibrator;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1500()[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$6;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ButtonManager;->switchCameraFacing()V

    .line 864
    return-void
.end method
