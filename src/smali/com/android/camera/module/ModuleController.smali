.class public interface abstract Lcom/android/camera/module/ModuleController;
.super Ljava/lang/Object;
.source "ModuleController.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
.end method

.method public abstract getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end method

.method public abstract getPeekAccessibilityString()Ljava/lang/String;
.end method

.method public abstract hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
.end method

.method public abstract init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V
.end method

.method public abstract isBurstSupported()Z
.end method

.method public abstract isSupportingSurfaceViewPreviewCallbacks()Z
.end method

.method public abstract isUsingBottomBar()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onLayoutOrientationChanged(Z)V
.end method

.method public abstract onPreviewVisibilityChanged(I)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
