.class public final Lcom/android/camera/one/v2/OneCameraAppConfigModule;
.super Ljava/lang/Object;
.source "OneCameraAppConfigModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "OneCamFtrCnfgCrtr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA3D1GN4OB3EHIN4QBJEHKM6SPR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3MAACCDNMQBR7DTNMER355THMURBDDTN2UOJ1EDIIUJRGEHKMURJ1DGTG____(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/google/common/base/Optional;
    .locals 2

    .prologue
    .line 29
    .line 1179
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1180
    if-nez v0, :cond_0

    .line 1181
    sget-object v0, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->TAG:Ljava/lang/String;

    const-string v1, "Camera not facing anywhere."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 1194
    :goto_0
    return-object v0

    .line 1185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1197
    sget-object v0, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->TAG:Ljava/lang/String;

    const-string v1, "Not sure where camera is facing to."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 1188
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getCaptureSupportLevelOverrideBack()I

    move-result v0

    .line 1189
    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->fromFlag(I)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 1193
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getCaptureSupportLevelOverrideFront()I

    move-result v0

    .line 1194
    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->fromFlag(I)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static provideDefaultFeatureConfig$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THMURJ6D5JIUHRJCLP7CQB3CLPKGPBCE1IN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4CLR6IOR55T1M2RB5E9GK8PBMD5HMALJ5E9KMCQB5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNK2S3991IMOS35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8PB2ELJIUT3IC5HMABQKE9GM6P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UJRECL1M2RB5E9GKCPB1EHQN4PA3DTN6CQB77C______(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/device/CameraDeviceVerifier;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/one/v2/OneCameraFeatureConfig;
    .locals 7

    .prologue
    .line 55
    const-string v0, "OneFeatureConfig#provide"

    invoke-interface {p3, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/device/CameraDeviceVerifier;->checkCamerasExist()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Cameras are currently available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No Cameras are currently available."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :cond_0
    const-string v0, "HdrPlus#getSupportLevel"

    invoke-interface {p3, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isGcamEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v2, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    .line 69
    :goto_1
    const-string v0, "CaptureModuleDetector#new"

    invoke-interface {p3, v0}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1091
    new-instance v1, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;-><init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;)V

    .line 74
    const-string v0, "OneFeatureConfig#new"

    invoke-interface {p3, v0}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxAllowedImageReaderCount()I

    move-result v3

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxHdrPlusBurstFrameCount()I

    move-result v4

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxAllowedHdrPlusImageReaderCount()I

    move-result v5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/OneCameraFeatureConfig;-><init>(Lcom/google/common/base/Function;IIIILcom/android/camera/util/ApiHelper;)V

    .line 83
    invoke-interface {p3}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 84
    invoke-interface {p3}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 86
    return-object v0

    .line 67
    :cond_1
    sget v2, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static provideOneCameraDebugHelper()Lcom/android/camera/one/v2/OneCameraDebugHelper;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;

    move-result-object v0

    return-object v0
.end method

.method public static provideOneCameraManager(Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;)Lcom/android/camera/one/OneCameraManager;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method
