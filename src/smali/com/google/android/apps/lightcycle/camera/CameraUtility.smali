.class public final Lcom/google/android/apps/lightcycle/camera/CameraUtility;
.super Ljava/lang/Object;
.source "CameraUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "CameraUtility"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static allocateBuffers(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/Size;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 4

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v0

    .line 47
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    .line 48
    if-gtz v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown image format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    int-to-float v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    .line 54
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 56
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 57
    new-array v2, v1, [B

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->addCallbackBuffer([B)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 61
    return-void
.end method

.method public static getFieldOfViewDegrees(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)F
    .locals 5

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getMaxPreviewAndPictureSizes(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->picture:Lcom/android/ex/camera2/portability/Size;

    .line 185
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->picture:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 184
    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 186
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->preview:Lcom/android/ex/camera2/portability/Size;

    .line 187
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->preview:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 186
    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getHorizontalViewAngle()F

    move-result v0

    .line 191
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getCameraFieldOfViewDegrees(F)F

    move-result v0

    goto :goto_0
.end method

.method public static getFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 145
    :goto_0
    return-object v0

    .line 140
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v1, "no supported flash mode found, need OFF, AUTO or NO_FLASH!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no supported flash mode found!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFocusMode(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera:requires_focus_on_pitch_change"

    .line 91
    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 95
    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isAutoFocusPitchChange()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99
    :cond_1
    if-nez v0, :cond_3

    .line 100
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v1, "Using Focus mode infinity"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 113
    :goto_0
    return-object v0

    .line 104
    :cond_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isAutoFocusPitchChange()Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v1, "Using Focus mode fixed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 112
    :cond_3
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v1, "Using Focus mode auto"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0
.end method

.method public static getPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/Size;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 159
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 160
    if-eqz p0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getMaxPreviewAndPictureSizes(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;

    move-result-object v1

    .line 164
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v2, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->preview:Lcom/android/ex/camera2/portability/Size;

    .line 165
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->preview:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 167
    :cond_0
    return-object v0
.end method

.method public static selectSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0
.end method

.method public static setFrameRate(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 3

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v1, "No supported frame rates returned!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
