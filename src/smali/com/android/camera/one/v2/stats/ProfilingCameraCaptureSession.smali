.class public final Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;
.super Ljava/lang/Object;
.source "ProfilingCameraCaptureSession.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;
    }
.end annotation


# instance fields
.field private final cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

.field private final cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 81
    iput-object p2, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    .line 82
    return-void
.end method


# virtual methods
.method public final abortCaptures()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->abortCaptures()V

    .line 87
    return-void
.end method

.method public final capture(Landroid/hardware/camera2/CaptureRequest;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    new-instance v1, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;

    iget-object v2, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    invoke-direct {v1, p0, p2, v2}, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;-><init>(Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public final captureBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
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
    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    new-instance v1, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;

    iget-object v2, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    invoke-direct {v1, p0, p2, v2}, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;-><init>(Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->captureBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->close()V

    .line 110
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
    .line 161
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->finishDeferredConfiguration(Ljava/util/List;)V

    .line 162
    return-void
.end method

.method public final getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final prepare(Landroid/view/Surface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->prepare(Landroid/view/Surface;I)V

    .line 156
    return-void
.end method

.method public final setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
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
    .line 121
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;->recordCaptureSessionRequestSent()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    new-instance v1, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;

    iget-object v2, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    invoke-direct {v1, p0, p2, v2}, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;-><init>(Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method
