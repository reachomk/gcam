.class final Lcom/android/camera/app/LegacyCameraController;
.super Ljava/lang/Object;
.source "LegacyCameraController.java"

# interfaces
.implements Lcom/android/camera/app/LegacyCameraProvider;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private final callbackHandler:Landroid/os/Handler;

.field private callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private final cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private final cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field private requestingCameraId:I

.field private usingNewApi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "CameraController"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/app/admin/DevicePolicyManager;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v2, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/LegacyCameraController;->usingNewApi:Z

    .line 78
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraController;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 79
    iput-object p2, p0, Lcom/android/camera/app/LegacyCameraController;->callbackHandler:Landroid/os/Handler;

    .line 80
    iput-object p3, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 81
    iput-object p7, p0, Lcom/android/camera/app/LegacyCameraController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 85
    iput-object p6, p0, Lcom/android/camera/app/LegacyCameraController;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 86
    iput-object p5, p0, Lcom/android/camera/app/LegacyCameraController;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 87
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 88
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    const-string v1, "GETTING_CAMERA_INFO"

    invoke-interface {v0, v2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/app/LegacyCameraController;IZ)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/LegacyCameraController;->doRequestCamera(IZ)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/app/LegacyCameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-object v0
.end method

.method private final checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 2

    .prologue
    .line 340
    sget-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v1, "checkAndOpenCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Lcom/android/camera/error/CameraDisabledException;

    invoke-direct {v0}, Lcom/android/camera/error/CameraDisabledException;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/android/camera/error/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :catch_0
    move-exception v0

    new-instance v0, Lcom/android/camera/app/LegacyCameraController$2;

    invoke-direct {v0, p4, p2}, Lcom/android/camera/app/LegacyCameraController$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    :goto_0
    return-void

    .line 346
    :cond_0
    :try_start_1
    invoke-virtual {p1, p3, p2, p4}, Lcom/android/ex/camera2/portability/CameraAgent;->openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    :try_end_1
    .catch Lcom/android/camera/error/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private final doRequestCamera(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 226
    iput p1, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    .line 227
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-static {p1}, Lcom/google/android/apps/camera/device/CameraId;->fromLegacyId(I)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move v1, v2

    .line 231
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 233
    :goto_1
    iget-object v4, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v4, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraController;->callbackHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, p1, v2, p0}, Lcom/android/camera/app/LegacyCameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 255
    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/app/LegacyCameraController;->usingNewApi:Z

    .line 256
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 257
    return-void

    :cond_0
    move v1, v3

    .line 230
    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_1

    .line 236
    :cond_2
    iget-object v4, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v4

    if-ne v4, p1, :cond_3

    iget-boolean v4, p0, Lcom/android/camera/app/LegacyCameraController;->usingNewApi:Z

    if-eq v4, v1, :cond_5

    .line 238
    :cond_3
    sget-object v4, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v5, "different camera already opened, closing then reopening"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-boolean v4, p0, Lcom/android/camera/app/LegacyCameraController;->usingNewApi:Z

    if-eqz v4, :cond_4

    .line 241
    iget-object v3, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v3, v2}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7DD2ILG_(Z)V

    .line 247
    :goto_3
    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraController;->callbackHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, p1, v2, p0}, Lcom/android/camera/app/LegacyCameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    goto :goto_2

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7DD2ILG_(Z)V

    goto :goto_3

    .line 250
    :cond_5
    sget-object v2, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v3, "reconnecting to use the existing camera"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/app/LegacyCameraController;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->reconnect(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 252
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    goto :goto_2
.end method


# virtual methods
.method public final closeCamera(Z)V
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v1, "Closing camera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 323
    iget-boolean v0, p0, Lcom/android/camera/app/LegacyCameraController;->usingNewApi:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7DD2ILG_(Z)V

    .line 331
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/LegacyCameraController;->usingNewApi:Z

    .line 333
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7DD2ILG_(Z)V

    goto :goto_0
.end method

.method public final getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCurrentCameraId()Lcom/google/android/apps/camera/device/CameraId;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v0}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->getActiveOrPreviousCamera()Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstBackCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public final getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, -0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstFrontCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public final getNumberOfCameras()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    goto :goto_0
.end method

.method public final onCameraDisabled(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public final onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    .line 147
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_0
.end method

.method public final onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method public final onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final releaseCamera(I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 266
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 267
    iget v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    if-ne v0, v4, :cond_0

    .line 269
    sget-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v1, "Trying to release the camera before requesting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    iput v4, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    .line 299
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    .line 276
    if-eq v0, p1, :cond_2

    .line 277
    iget v1, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    if-ne v1, p1, :cond_3

    .line 278
    sget-object v1, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Releasing camera which was requested but not yet opened (current:requested): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-static {p1}, Lcom/google/android/apps/camera/device/CameraId;->fromLegacyId(I)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 298
    iput v4, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    goto :goto_0

    .line 286
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v2, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x7b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Trying to release a camera neither openednor requested (current:requested:for-release): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final removeCallbackReceiver()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 314
    return-void
.end method

.method public final requestCamera(I)V
    .locals 3

    .prologue
    .line 182
    .line 1187
    sget-object v0, Lcom/android/camera/app/LegacyCameraController;->TAG:Ljava/lang/String;

    const-string v1, "requestCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    if-ne v0, p1, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->info:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    invoke-virtual {v0}, Lcom/android/camera/device/CameraDeviceManager;->disconnectAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1205
    new-instance v1, Lcom/android/camera/app/LegacyCameraController$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/camera/app/LegacyCameraController$1;-><init>(Lcom/android/camera/app/LegacyCameraController;IZ)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method public final setCallbackReceiver(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 309
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraController;->callbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 310
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController;->cameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final waitingForCamera()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/android/camera/app/LegacyCameraController;->requestingCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
