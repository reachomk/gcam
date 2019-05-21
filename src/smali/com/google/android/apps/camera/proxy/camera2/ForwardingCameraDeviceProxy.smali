.class public Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;
.super Ljava/lang/Object;
.source "ForwardingCameraDeviceProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;


# instance fields
.field private delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 22
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->close()V

    .line 91
    return-void
.end method

.method public final createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    return-object v0
.end method

.method public final createCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 34
    return-void
.end method

.method public final createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 75
    return-void
.end method

.method public final createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 65
    return-void
.end method

.method public final createReprocessCaptureRequest(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createReprocessCaptureRequest(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    return-object v0
.end method

.method public final createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method public final createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;->delegate:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 86
    return-void
.end method
