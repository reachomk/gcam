.class Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;
.super Ljava/lang/Object;
.source "LightCycleNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "lightcycle"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method static native AddImage([F)Ljava/lang/String;
.end method

.method static native AlignNextImage()V
.end method

.method static native CalibrateFieldOfViewDeg(Ljava/lang/String;)F
.end method

.method static native CanUndo()Z
.end method

.method static native CreateFrameTexture(I)V
.end method

.method static native CreateNewStitchingSession()I
.end method

.method static native DeviceOrientationStatus()I
.end method

.method static native EndGyroCalibration([FII)[F
.end method

.method static native FinishCapture(ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method static native GetFrameGeometry(II)[F
.end method

.method static native GetNumCapturedTargets()I
.end method

.method static native GetNumTotalTargets()I
.end method

.method static native GetTargetInRange()I
.end method

.method static native GetTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
.end method

.method static native Init(IIFLcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;)V
.end method

.method static native InitFrameTexture(III)V
.end method

.method static native InitTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
.end method

.method static native MovingTooFast()Z
.end method

.method static native PhotoSkippedTooFast()Z
.end method

.method static native ProcessFrame([BIIZ)[F
.end method

.method static native RenderNextSession(I)Z
.end method

.method static native ResetForFisheyeCapture(Ljava/lang/String;F)V
.end method

.method static native ResetForHorizontalCapture(Ljava/lang/String;F)V
.end method

.method static native ResetForPhotoSphereCapture(Ljava/lang/String;F)V
.end method

.method static native ResetForVerticalCapture(Ljava/lang/String;F)V
.end method

.method static native ResetForWideCapture(Ljava/lang/String;F)V
.end method

.method static native ResetTargets()V
.end method

.method static native SetAppVersion(Ljava/lang/String;)V
.end method

.method static native SetFilteredRotation([F)V
.end method

.method static native SetOutputResolutionLarge()V
.end method

.method static native SetOutputResolutionSmall()V
.end method

.method static native SetSensorMovementTooFast(Z)V
.end method

.method static native SetTargetHitAngleRadians(F)V
.end method

.method static native StartGyroCalibration(F)V
.end method

.method static native TakeNewPhoto()Z
.end method

.method static native TargetHit()Z
.end method

.method static native UndoAddImage()Z
.end method

.method static native UpdateFrameTexture(I)V
.end method
