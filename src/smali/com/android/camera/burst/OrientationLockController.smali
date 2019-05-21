.class public interface abstract Lcom/android/camera/burst/OrientationLockController;
.super Ljava/lang/Object;
.source "OrientationLockController.java"


# virtual methods
.method public abstract addDeviceOrientationListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
.end method

.method public abstract deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;
.end method

.method public abstract isDefaultOrientationPortrait()Z
.end method

.method public abstract lockOrientation()V
.end method

.method public abstract naturalDeviceOrientation()Lcom/android/camera/util/layout/NaturalOrientation;
.end method

.method public abstract naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;
.end method

.method public abstract removeDeviceOrientationListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
.end method

.method public abstract uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;
.end method

.method public abstract unlockOrientation()V
.end method
