.class public interface abstract Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;
.super Ljava/lang/Object;
.source "CameraDeviceProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract createCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
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
.end method

.method public abstract createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

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
.end method

.method public abstract createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

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
.end method

.method public abstract createReprocessCaptureRequest(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

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
.end method

.method public abstract createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

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
.end method
