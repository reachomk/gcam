.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;
.super Ljava/lang/Object;
.source "AndroidCameraConstrainedHighSpeedCaptureSessionProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;
    }
.end annotation


# instance fields
.field private final session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 90
    return-void
.end method


# virtual methods
.method public final abortCaptures()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final capture(Landroid/hardware/camera2/CaptureRequest;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final captureBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->close()V

    .line 192
    return-void
.end method

.method public final createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final finishDeferredConfiguration(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-static {v0, p1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->finishDeferredConfiguration(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public final getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 105
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;

    invoke-direct {v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;-><init>(Landroid/hardware/camera2/CameraDevice;Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;)V

    .line 104
    return-object v0
.end method

.method public final getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final prepare(Landroid/view/Surface;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2, p1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->prepare(Landroid/hardware/camera2/CameraCaptureSession;ZILandroid/view/Surface;)V

    .line 181
    return-void
.end method

.method public final setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraConstrainedHighSpeedCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
