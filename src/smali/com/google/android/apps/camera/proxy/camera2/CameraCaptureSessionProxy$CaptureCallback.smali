.class public interface abstract Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;
.super Ljava/lang/Object;
.source "CameraCaptureSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V
.end method

.method public abstract onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
.end method

.method public abstract onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
.end method

.method public abstract onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
.end method

.method public abstract onCaptureSequenceAborted(I)V
.end method

.method public abstract onCaptureSequenceCompleted(IJ)V
.end method

.method public abstract onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V
.end method
