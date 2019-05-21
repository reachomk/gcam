.class public interface abstract Lcom/android/camera/one/OneCameraCharacteristics;
.super Ljava/lang/Object;
.source "OneCameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;,
        Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    }
.end annotation


# virtual methods
.method public abstract get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getAvailableFocalLengths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableJpegThumbnailSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;
.end method

.method public abstract getCameraId()Lcom/google/android/apps/camera/device/CameraId;
.end method

.method public abstract getControlAeTargetFpsRange()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getExposureCompensationStep()F
.end method

.method public abstract getHfrVideoFpsRanges(Lcom/android/camera/util/Size;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHfrVideoResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighestFaceDetectMode()Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;
.end method

.method public abstract getMaxExposureCompensation()I
.end method

.method public abstract getMaxZoom()F
.end method

.method public abstract getMinExposureCompensation()I
.end method

.method public abstract getSensorInfoActiveArraySize()Landroid/graphics/Rect;
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract getSupportedHardwareLevel$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ4H9NAS3GDTP78PB491GN4P3NC5P6AJ35EPIMOEO_()I
.end method

.method public abstract getSupportedPictureSizes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedReprocessingSizes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAutoExposureSupported()Z
.end method

.method public abstract isAutoFocusSupported()Z
.end method

.method public abstract isAutoHdrPlusSupported()Z
.end method

.method public abstract isExposureCompensationSupported()Z
.end method

.method public abstract isFlashSupported()Z
.end method

.method public abstract isHdrPlusSupported()Z
.end method

.method public abstract isHdrSceneSupported()Z
.end method

.method public abstract isHfrVideoRecordingSupported()Z
.end method

.method public abstract isVideoStabilizationSupported()Z
.end method
