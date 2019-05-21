.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;
.super Ljava/lang/Object;
.source "AndroidCameraDeviceProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;


# instance fields
.field private final cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final captureSessionStateCallbackFactory:Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->captureSessionStateCallbackFactory:Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;

    .line 32
    return-void
.end method

.method private static toOutputConfiguration(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;

    .line 177
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;->getAndroidOutputConfiguration()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 186
    return-void
.end method

.method public final createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final createCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 2
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
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 48
    invoke-static {p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;->createCaptureSessionStateCallback(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;)Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;

    move-result-object v1

    .line 46
    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 56
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 3
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
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 134
    invoke-static {p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->toOutputConfiguration(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 135
    invoke-static {p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;->createCaptureSessionStateCallback(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;)Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 143
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 137
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 2
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
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1032
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidConstrainedHighSpeedCaptureSessionStateCallback;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;)V

    .line 111
    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 122
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final createReprocessCaptureRequest(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 75
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getTotalCaptureResult()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 2
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
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 92
    invoke-static {p3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;->createCaptureSessionStateCallback(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;)Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;

    move-result-object v1

    .line 89
    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 100
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 3
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
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 157
    invoke-static {p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->toOutputConfiguration(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-static {p3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;->createCaptureSessionStateCallback(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;)Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;

    move-result-object v2

    .line 155
    invoke-virtual {v0, p1, v1, v2, p4}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 166
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 160
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method
