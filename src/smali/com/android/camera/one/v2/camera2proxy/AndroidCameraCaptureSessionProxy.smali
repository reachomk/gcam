.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;
.super Ljava/lang/Object;
.source "AndroidCameraCaptureSessionProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;
    }
.end annotation


# instance fields
.field private final session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 116
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
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :catch_1
    move-exception v0

    goto :goto_0
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
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 132
    :catch_1
    move-exception v0

    goto :goto_0
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
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 150
    return-void
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
    .line 207
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0, p1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->finishDeferredConfiguration(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public final getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 155
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;

    invoke-direct {v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;-><init>(Landroid/hardware/camera2/CameraDevice;Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;)V

    .line 154
    return-object v0
.end method

.method public final getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

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
    .line 201
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2, p1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->prepare(Landroid/hardware/camera2/CameraCaptureSession;ZILandroid/view/Surface;)V

    .line 202
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
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->session:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :catch_1
    move-exception v0

    goto :goto_0
.end method
