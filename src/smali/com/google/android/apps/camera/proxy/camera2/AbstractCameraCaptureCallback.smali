.class public Lcom/google/android/apps/camera/proxy/camera2/AbstractCameraCaptureCallback;
.super Ljava/lang/Object;
.source "AbstractCameraCaptureCallback.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public final onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final onCaptureSequenceAborted(I)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final onCaptureSequenceCompleted(IJ)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
