.class public interface abstract Lcom/android/camera/advice/AdviceManager;
.super Ljava/lang/Object;
.source "AdviceManager.java"


# virtual methods
.method public abstract getCurrentSamplingFrequency()I
.end method

.method public abstract hasActivePreviewAdvice()Z
.end method

.method public abstract onCameraChanged(Lcom/google/android/apps/camera/device/CameraId;)V
.end method

.method public abstract onFrameCapture(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
.end method

.method public abstract onFramePreview(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
.end method

.method public abstract setUiController(Lcom/google/android/apps/camera/advice/AdviceUiController;)V
.end method
