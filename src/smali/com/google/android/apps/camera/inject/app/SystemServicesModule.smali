.class public Lcom/google/android/apps/camera/inject/app/SystemServicesModule;
.super Ljava/lang/Object;
.source "SystemServicesModule.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/hardware/HardwareSpec;"
    }
.end annotation


# instance fields
.field private final isFrontCameraAvailable:Z

.field private final isHfrVideoAvailable:Z

.field private final isTorchAvailable:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-boolean p1, p0, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isFrontCameraAvailable:Z

    .line 1051
    iput-boolean p2, p0, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isTorchAvailable:Z

    .line 1052
    iput-boolean p3, p0, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isHfrVideoAvailable:Z

    .line 1053
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI9LGMSOB7CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCI8C5P68TR1E9IL6S35CCTG____(Lcom/android/camera/camcorder/CamcorderManager;)Lcom/google/android/apps/camera/inject/app/SystemServicesModule;
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1021
    invoke-interface {p0}, Lcom/android/camera/camcorder/CamcorderManager;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v7

    .line 1026
    invoke-static {}, Lcom/android/camera/one/OneCamera$Facing;->values()[Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v8

    array-length v9, v8

    move v6, v3

    move v4, v3

    move v5, v3

    move v0, v3

    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v1, v8, v6

    .line 1027
    invoke-interface {v7, v1}, Lcom/android/camera/one/OneCameraManager;->hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1031
    invoke-interface {v7, v1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v10

    .line 1033
    invoke-interface {p0, v10}, Lcom/android/camera/camcorder/CamcorderManager;->getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v10

    .line 1034
    invoke-virtual {v10}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1035
    sget-object v11, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v11, :cond_5

    move v1, v2

    .line 1039
    :goto_1
    invoke-virtual {v10}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 1040
    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isTorchAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v5, v2

    .line 1041
    :goto_2
    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isHfrVideoSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_3
    move v4, v1

    move v1, v5

    .line 1026
    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v1

    move v12, v0

    move v0, v4

    move v4, v12

    goto :goto_0

    :cond_2
    move v5, v3

    .line 1040
    goto :goto_2

    :cond_3
    move v0, v3

    .line 1041
    goto :goto_3

    .line 1045
    :cond_4
    new-instance v1, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;

    invoke-direct {v1, v0, v5, v4}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;-><init>(ZZZ)V

    return-object v1

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    move v1, v5

    move v12, v4

    move v4, v0

    move v0, v12

    goto :goto_4
.end method


# virtual methods
.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isTorchAvailable:Z

    return v0
.end method

.method public isFrontCameraSupported()Z
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isFrontCameraAvailable:Z

    return v0
.end method

.method public isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public isHfrSupported()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isHfrVideoAvailable:Z

    return v0
.end method
