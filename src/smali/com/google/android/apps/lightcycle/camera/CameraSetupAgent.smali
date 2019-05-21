.class public final Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;
.super Ljava/lang/Object;
.source "CameraSetupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private focusModeAuto:Z

.field private final handler:Landroid/os/Handler;

.field private previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

.field private previewSize:Lcom/android/ex/camera2/portability/Size;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private usePreviewBuffers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "CameraSetupAgent"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 41
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->focusModeAuto:Z

    .line 56
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 57
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->handler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private final setupCamera$51662RJ4E9NMIP1FEPKMATPFATKMSP3FET6M2RJ1CTIN4EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLS78EQCCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9F8DGMQPBIC50MEPBEEGI46OBDCLP62K3ICLR6IPBN8HGN8OA3C5M6OOJ1CDLJMMIQ9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEP99HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T9MIUJ57C______(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;ZZI)Lcom/android/ex/camera2/portability/Size;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .line 123
    iput-boolean p4, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->usePreviewBuffers:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->TAG:Ljava/lang/String;

    const-string v1, "Camera is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    .line 132
    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    .line 136
    invoke-static {p2, v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFocusMode(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    .line 137
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v2, v3, :cond_1

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->focusModeAuto:Z

    .line 140
    :cond_1
    invoke-static {p2, v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFocusMode(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 141
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 142
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->selectSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 143
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 147
    invoke-static {v0, p6}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getPreviewAndPictureSizes$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GR1E1GM4QBCD5Q6IPBJ7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNM6OBDCLP62BQICLPMUR3LEHKMURHR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNM6OBDCLP62BQ3C5MMASJ1ADKNKPALEHKMOQBKF4I50SJ5EPKMATQ1DPI50QB3EHQN4PAJD5T6ASPR(Lcom/android/ex/camera2/portability/CameraCapabilities;I)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;

    move-result-object v2

    .line 149
    iget-object v3, v2, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->preview:Lcom/android/ex/camera2/portability/Size;

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewSize:Lcom/android/ex/camera2/portability/Size;

    .line 150
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 152
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->setFrameRate(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 153
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v3, v4, v4}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExifThumbnailSize(Lcom/android/ex/camera2/portability/Size;)V

    .line 154
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 156
    iget-object v2, v2, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->picture:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 158
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v2

    .line 159
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v2, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(IZ)V

    .line 162
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 164
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getHorizontalViewAngle()F

    move-result v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field of view reported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->usePreviewBuffers:Z

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewSize:Lcom/android/ex/camera2/portability/Size;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->allocateBuffers(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/Size;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewSize:Lcom/android/ex/camera2/portability/Size;

    goto/16 :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    goto :goto_1
.end method


# virtual methods
.method public final autoFocusIfRequired(Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->focusModeAuto:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;->onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_0
.end method

.method public final getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method public final getReportedHorizontalFovDegrees()F
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public final initCamera$51662RJ4E9NMIP1FEPKMATPFATKMSP3FET6M2RJ1CTIN4EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLS78EQCCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9F8DGMQPBIC50MEPBEEGI46OBDCLP62K3ICLR6IPBN8HGN8OA3C5M6OOJ1CDLJMMICCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FCDGMQPBIC4NL4PBJDTM7AT39DTN3MAACCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9FADKNKP9R(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;ZI)Lcom/android/ex/camera2/portability/Size;
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->setupCamera$51662RJ4E9NMIP1FEPKMATPFATKMSP3FET6M2RJ1CTIN4EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLS78EQCCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9F8DGMQPBIC50MEPBEEGI46OBDCLP62K3ICLR6IPBN8HGN8OA3C5M6OOJ1CDLJMMIQ9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEP99HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T9MIUJ57C______(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;ZZI)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    return-object v0
.end method

.method public final releaseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 214
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public final resetCamera(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;Z)Lcom/android/ex/camera2/portability/Size;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 101
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->setupCamera$51662RJ4E9NMIP1FEPKMATPFATKMSP3FET6M2RJ1CTIN4EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLS78EQCCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9F8DGMQPBIC50MEPBEEGI46OBDCLP62K3ICLR6IPBN8HGN8OA3C5M6OOJ1CDLJMMIQ9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEP99HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T9MIUJ57C______(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;ZZI)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    return-object v0
.end method

.method public final returnCallbackBuffer([B)V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->usePreviewBuffers:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->addCallbackBuffer([B)V

    .line 203
    :cond_0
    return-void
.end method
