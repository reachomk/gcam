.class public final Lcom/google/android/apps/lightcycle/panorama/LightCycle;
.super Ljava/lang/Object;
.source "LightCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;
    }
.end annotation


# static fields
.field private static lightCycleProgressCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

.field private static lock:Ljava/lang/Object;

.field private static progressCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/lightcycle/panorama/ProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->progressCallbacks:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lightCycleProgressCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->progressCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method public static addImage([F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AddImage([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alignNextImage()V
    .locals 0

    .prologue
    .line 454
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AlignNextImage()V

    .line 455
    return-void
.end method

.method public static calibrateFieldOfViewDeg(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 495
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CalibrateFieldOfViewDeg(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static canUndo()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CanUndo()Z

    move-result v0

    return v0
.end method

.method public static createFrameTexture(I)V
    .locals 0

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateFrameTexture(I)V

    .line 111
    return-void
.end method

.method public static createNewStitchingSession()I
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateNewStitchingSession()I

    move-result v0

    return v0
.end method

.method public static deviceOrientationStatus()I
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->DeviceOrientationStatus()I

    move-result v0

    return v0
.end method

.method public static endGyroCalibration([FII)[F
    .locals 1

    .prologue
    .line 434
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static finishCapture(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 233
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->FinishCapture(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method public static getFrameGeometry(II)[F
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 215
    invoke-static {v0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetFrameGeometry(II)[F

    move-result-object v0

    return-object v0
.end method

.method public static getNumCapturedTargets()I
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result v0

    return v0
.end method

.method public static getNumTotalTargets()I
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result v0

    return v0
.end method

.method public static getTargetInRange()I
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargetInRange()I

    move-result v0

    return v0
.end method

.method public static getTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v0

    return-object v0
.end method

.method public static init$514KIHIQ55B0____(IIF)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lightCycleProgressCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->Init(IIFLcom/google/android/apps/lightcycle/panorama/LightCycle$LightCycleProgressCallback;)V

    .line 73
    return-void
.end method

.method public static initFrameTexture(III)V
    .locals 0

    .prologue
    .line 121
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 122
    return-void
.end method

.method public static initTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
    .locals 1

    .prologue
    .line 361
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v0

    return-object v0
.end method

.method public static movingTooFast()Z
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->MovingTooFast()Z

    move-result v0

    return v0
.end method

.method public static photoSkippedTooFast()Z
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v0

    return v0
.end method

.method public static processFrame([BIIZ)[F
    .locals 2

    .prologue
    .line 201
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ProcessFrame([BIIZ)[F

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static renderNextSession(I)Z
    .locals 1

    .prologue
    .line 246
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->RenderNextSession(I)Z

    move-result v0

    return v0
.end method

.method public static resetForFisheyeCapture(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 184
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForFisheyeCapture(Ljava/lang/String;F)V

    .line 186
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetForHorizontalCapture(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 145
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForHorizontalCapture(Ljava/lang/String;F)V

    .line 147
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetForPhotoSphereCapture(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 132
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForPhotoSphereCapture(Ljava/lang/String;F)V

    .line 134
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetForVerticalCapture(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForVerticalCapture(Ljava/lang/String;F)V

    .line 160
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetForWideCapture(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 171
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForWideCapture(Ljava/lang/String;F)V

    .line 173
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetTargets()V
    .locals 0

    .prologue
    .line 347
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetTargets()V

    .line 348
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 447
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetAppVersion(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public static setFilteredRotation([F)V
    .locals 0

    .prologue
    .line 322
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetFilteredRotation([F)V

    .line 323
    return-void
.end method

.method public static setOutputResolutionLarge()V
    .locals 0

    .prologue
    .line 290
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetOutputResolutionLarge()V

    .line 291
    return-void
.end method

.method public static setOutputResolutionMedium()V
    .locals 0

    .prologue
    .line 297
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetOutputResolutionLarge()V

    .line 298
    return-void
.end method

.method public static setOutputResolutionSmall()V
    .locals 0

    .prologue
    .line 304
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetOutputResolutionSmall()V

    .line 305
    return-void
.end method

.method public static setProgressCallback(ILcom/google/android/apps/lightcycle/panorama/ProgressCallback;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->progressCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static setSensorMovementTooFast(Z)V
    .locals 0

    .prologue
    .line 484
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetSensorMovementTooFast(Z)V

    .line 485
    return-void
.end method

.method public static setTargetHitAngleRadians(F)V
    .locals 0

    .prologue
    .line 381
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetTargetHitAngleRadians(F)V

    .line 382
    return-void
.end method

.method public static startGyroCalibration(F)V
    .locals 0

    .prologue
    .line 421
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StartGyroCalibration(F)V

    .line 422
    return-void
.end method

.method public static takeNewPhoto()Z
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TakeNewPhoto()Z

    move-result v0

    return v0
.end method

.method public static targetHit()Z
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TargetHit()Z

    move-result v0

    return v0
.end method

.method public static undoAddImage()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UndoAddImage()Z

    move-result v0

    return v0
.end method

.method public static updateFrameTexture(I)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateFrameTexture(I)V

    .line 86
    return-void
.end method
