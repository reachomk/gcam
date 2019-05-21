.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "AndroidConstrainedHighSpeedCaptureSessionStateCallback.java"


# instance fields
.field private final stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;->stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;

    .line 21
    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 48
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;->stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;->onActive$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V

    .line 51
    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 55
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;->stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;->onClosed$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V

    .line 58
    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 33
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;->stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;->onConfigureFailed$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V

    .line 37
    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 25
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;->stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;->onConfigured$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V

    .line 29
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;->stateCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;->onReady(Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;)V

    .line 44
    return-void
.end method

.method public final onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-direct {v0, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 63
    return-void
.end method
