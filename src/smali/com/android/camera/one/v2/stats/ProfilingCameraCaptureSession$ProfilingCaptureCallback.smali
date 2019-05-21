.class final Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;
.super Ljava/lang/Object;
.source "ProfilingCameraCaptureSession.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfilingCaptureCallback"
.end annotation


# instance fields
.field private final cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

.field private final captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;


# direct methods
.method synthetic constructor <init>(Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p2, p3}, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    .line 33
    iput-object p2, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    .line 34
    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V

    .line 70
    return-void
.end method

.method public final onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->cameraCaptureSessionInstrumentationSession:Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;->recordCaptureSessionCaptureResultReceived()V

    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 50
    return-void
.end method

.method public final onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V

    .line 55
    return-void
.end method

.method public final onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V

    .line 44
    return-void
.end method

.method public final onCaptureSequenceAborted(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 65
    return-void
.end method

.method public final onCaptureSequenceCompleted(IJ)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceCompleted(IJ)V

    .line 60
    return-void
.end method

.method public final onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V
    .locals 6

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ProfilingCameraCaptureSession$ProfilingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V

    .line 39
    return-void
.end method
