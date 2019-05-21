.class public final Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;
.super Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;
.source "Video2HfrBottomBarUISpecProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Vid2HfrBtmBarSpecPrvdr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;-><init>(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;)V

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final provideBottomBarUISpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-super {p0}, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;->provideBottomBarUISpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    .line 39
    iput-boolean v0, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 41
    iget-object v3, p0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->video2HardwareSpec$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI91GN4P3NC5P6AKRGCLHJM___:Lcom/google/android/apps/camera/inject/app/SystemServicesModule;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isHfrSupported()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showToyboxHfrMode:Z

    .line 42
    iget-object v3, p0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    invoke-virtual {v3}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isHfrVideoSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    sget-object v3, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->TAG:Ljava/lang/String;

    const-string v4, "isToyboxHfrVideoSupported"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->camcorderCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iput-object v3, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->defaultHfrVideoMode:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 46
    iget-object v3, p0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    sget-object v4, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 48
    invoke-virtual {v3, v4}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->getSupportedVideoResolutions(Lcom/android/camera/camcorder/CamcorderCaptureRate;)Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isHfr240FpsSupported:Z

    .line 50
    new-instance v0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider$1;-><init>(Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;)V

    iput-object v0, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->hfrModeCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    .line 72
    :goto_1
    return-object v2

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0

    .line 68
    :cond_1
    iput-boolean v1, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isHfr240FpsSupported:Z

    .line 69
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iput-object v0, v2, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->defaultHfrVideoMode:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    goto :goto_1
.end method
