.class public final Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;
.super Ljava/lang/Object;
.source "CaptureModuleHardwareSpec.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# instance fields
.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "CMHardwareSpec"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/module/OneModuleConfig;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    .line 29
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraManager;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 30
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/OneModuleConfig;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

    .line 31
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 32
    return-void
.end method


# virtual methods
.method public final isFlashSupported()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public final isFrontCameraSupported()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method

.method public final isHdrPlusSupported()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

    iget-object v1, v1, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->getHdrPlusSupportLevel$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHF9TN6AGR1DLIN4OA6CLGN8TBICL1MURJ6D5JI8I34E986OTBJADQN0S3FE9Q4OPBMCLM3M___(Lcom/android/camera/one/OneCamera$Facing;)I

    move-result v0

    sget v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isHdrSupported()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isHdrSceneSupported()Z

    move-result v0

    return v0
.end method
