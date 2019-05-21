.class public interface abstract Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;
.super Ljava/lang/Object;
.source "ResourceOpenedCamera.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract getCamera()Lcom/android/camera/one/OneCamera;
.end method

.method public abstract getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;
.end method

.method public abstract getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
.end method

.method public abstract getCameraId()Lcom/google/android/apps/camera/device/CameraId;
.end method

.method public abstract getCaptureSetting()Lcom/android/camera/one/OneCameraCaptureSetting;
.end method

.method public abstract getPictureSize()Lcom/android/camera/util/Size;
.end method

.method public abstract getZoom()Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startPreview()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method
