.class public interface abstract Lcom/android/camera/app/LegacyCameraProvider;
.super Ljava/lang/Object;
.source "LegacyCameraProvider.java"


# virtual methods
.method public abstract getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.end method

.method public abstract getFirstBackCameraId()I
.end method

.method public abstract getFirstFrontCameraId()I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract releaseCamera(I)V
.end method

.method public abstract requestCamera(I)V
.end method

.method public abstract waitingForCamera()Z
.end method
