.class public interface abstract Lcom/android/camera/one/OneCameraManager;
.super Ljava/lang/Object;
.source "OneCameraManager.java"


# virtual methods
.method public abstract findAllCameras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/device/CameraId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findFirstCamera()Lcom/google/android/apps/camera/device/CameraId;
.end method

.method public abstract findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;
.end method

.method public abstract getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
.end method

.method public abstract hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z
.end method

.method public abstract isHfrSupported()Z
.end method
