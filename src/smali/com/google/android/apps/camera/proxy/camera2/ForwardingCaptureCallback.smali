.class public Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;
.super Ljava/lang/Object;
.source "ForwardingCaptureCallback.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;


# instance fields
.field private final captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    .line 16
    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V

    .line 51
    return-void
.end method

.method public onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 21
    return-void
.end method

.method public final onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V

    .line 26
    return-void
.end method

.method public final onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V

    .line 31
    return-void
.end method

.method public final onCaptureSequenceAborted(I)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 36
    return-void
.end method

.method public final onCaptureSequenceCompleted(IJ)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceCompleted(IJ)V

    .line 41
    return-void
.end method

.method public final onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCaptureCallback;->captureCallback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V

    .line 46
    return-void
.end method
