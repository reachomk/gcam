.class public Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;
.super Ljava/lang/Object;
.source "LuckyShotMetrics.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/hardware/HardwareSpec;"
    }
.end annotation


# instance fields
.field private final isFlashSupported:Z

.field private final isFrontCameraSupported:Z

.field private final isHdrPlusSupported:Z

.field private final isHdrSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    invoke-interface {p1}, Lcom/android/camera/app/LegacyCameraProvider;->getFirstFrontCameraId()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isFrontCameraSupported:Z

    .line 1034
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isHdrSupported:Z

    .line 1037
    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 1039
    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->getHdrPlusSupportLevel$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHF9TN6AGR1DLIN4OA6CLGN8TBICL1MURJ6D5JI8I34E986OTBJADQN0S3FE9Q4OPBMCLM3M___(Lcom/android/camera/one/OneCamera$Facing;)I

    move-result v0

    sget v3, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    if-eq v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isHdrPlusSupported:Z

    .line 1043
    invoke-static {p2}, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isFlashSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isFlashSupported:Z

    .line 1044
    return-void

    :cond_0
    move v0, v2

    .line 1031
    goto :goto_0

    .line 1037
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1039
    goto :goto_2
.end method

.method private static isFlashSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z
    .locals 1

    .prologue
    .line 1076
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 1077
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1076
    goto :goto_0
.end method


# virtual methods
.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isFlashSupported:Z

    return v0
.end method

.method public isFrontCameraSupported()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isFrontCameraSupported:Z

    return v0
.end method

.method public isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isHdrPlusSupported:Z

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;->isHdrSupported:Z

    return v0
.end method
