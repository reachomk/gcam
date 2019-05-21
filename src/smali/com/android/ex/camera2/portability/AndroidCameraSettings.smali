.class public final Lcom/android/ex/camera2/portability/AndroidCameraSettings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCameraSettings.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    .line 32
    if-nez p2, :cond_0

    .line 33
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Settings ctor requires a non-null Camera.Parameters."

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 1166
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 42
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 44
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v0

    .line 1210
    if-lez v0, :cond_1

    .line 1211
    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 1212
    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 1213
    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 45
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 46
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 47
    aget v1, v0, v3

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFpsRange(II)V

    .line 49
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFormat(I)V

    .line 52
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    .line 57
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    .line 1343
    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 58
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 1387
    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 59
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    .line 1397
    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 60
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    .line 1460
    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 63
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1470
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    .line 2466
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    .line 66
    :cond_2
    const-string v0, "true"

    const-string v1, "recording-hint"

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2474
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    .line 69
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 70
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 72
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v0

    .line 3290
    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    goto/16 :goto_0

    .line 55
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    goto :goto_1
.end method


# virtual methods
.method public final copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V

    return-object v0
.end method
