.class public final Lcom/android/ex/camera2/portability/AndroidCamera2Settings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCamera2Settings.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mActiveArray:Landroid/graphics/Rect;

.field private final mCropRectangle:Landroid/graphics/Rect;

.field private final mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

.field private final mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2Set"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;ILandroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "camera must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p3, :cond_1

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activeArray must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 89
    new-instance v0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 90
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v3, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 93
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mSizesLocked:Z

    .line 95
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 96
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPreviewFpsRange(II)V

    .line 99
    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 101
    invoke-virtual {p0, p5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 102
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    .line 107
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    .line 1164
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1165
    if-eqz v0, :cond_3

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1182
    :cond_3
    const/4 v0, 0x0

    .line 110
    :goto_0
    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 111
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    if-eqz v0, :cond_6

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 124
    :cond_6
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_9

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    .line 127
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    .line 128
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    .line 131
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 132
    if-eqz v0, :cond_7

    .line 133
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 136
    :cond_7
    return-void

    .line 1168
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto/16 :goto_0

    .line 1170
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto/16 :goto_0

    .line 1172
    :pswitch_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1173
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto/16 :goto_0

    .line 1175
    :cond_8
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto/16 :goto_0

    .line 1179
    :pswitch_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 124
    goto :goto_1

    .line 1166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 140
    iget-object v0, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 141
    new-instance v0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 142
    iget-object v0, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 144
    return-void
.end method

.method private final legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 295
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 296
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 297
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 298
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/hardware/Camera$Area;

    .line 299
    iget-object v2, v7, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 303
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-double v4, v3

    const-wide v10, 0x409f400000000000L    # 2000.0

    div-double/2addr v4, v10

    .line 304
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-double v10, v3

    const-wide v12, 0x409f400000000000L    # 2000.0

    div-double/2addr v10, v12

    .line 305
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-double v12, v3

    const-wide v14, 0x409f400000000000L    # 2000.0

    div-double/2addr v12, v14

    .line 306
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    const-wide v14, 0x409f400000000000L    # 2000.0

    div-double v14, v2, v14

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v3, v6}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v3

    add-int/2addr v3, v2

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v4, v5, v6, v10}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v4

    add-int/2addr v4, v2

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v10, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v10, v11, v5, v6}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v5

    add-int/2addr v5, v2

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v10, v6

    mul-double/2addr v10, v14

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v10, v11, v6, v12}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v6

    add-int/2addr v6, v2

    .line 315
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sub-int/2addr v5, v3

    sub-int/2addr v6, v4

    iget v7, v7, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v2, v9, v8

    .line 297
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    :cond_0
    move-object v2, v9

    .line 319
    :cond_1
    return-object v2
.end method

.method private final queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 159
    :goto_0
    return-object p2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static toIntConstrained(DII)I
    .locals 4

    .prologue
    .line 323
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 324
    int-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 325
    double-to-int v0, v0

    return v0
.end method

.method private final updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 249
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 2204
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_2

    .line 2205
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v4, p1, p2}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 250
    return-void

    :cond_1
    move v0, v3

    .line 2205
    goto :goto_0

    .line 2206
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_4

    .line 2207
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    .line 2208
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_8

    .line 2209
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2210
    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    if-eqz v1, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v5, v1, :cond_7

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    .line 2213
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_9

    .line 2214
    iget-byte v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2216
    :cond_9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_a

    .line 2217
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2219
    :cond_a
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_e

    .line 2220
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2221
    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_c

    :cond_b
    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_0

    .line 2226
    :cond_e
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_f

    .line 2227
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 2228
    :cond_f
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_10

    .line 2229
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 2230
    :cond_10
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_15

    .line 2231
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_11

    move v0, v3

    .line 2234
    goto/16 :goto_0

    .line 2236
    :cond_11
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 2237
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_14

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne v1, v0, :cond_14

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :cond_14
    move v0, v3

    goto/16 :goto_0

    .line 2242
    :cond_15
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Settings implementation checked default of unhandled option key"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v2

    .line 2245
    goto/16 :goto_0
.end method


# virtual methods
.method public final copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V

    return-object v0
.end method

.method public final getRequestSettings()Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 253
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mMeteringAreas:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 255
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mFocusAreas:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 257
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v2, Landroid/util/Range;

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 260
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-byte v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2331
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eqz v0, :cond_0

    .line 2332
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2356
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert to API 2 flash mode: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    move-object v2, v1

    .line 2361
    :goto_0
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6, v2}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 2362
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 2367
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 2395
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert to API 2 focus mode: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 2400
    :goto_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 2405
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eqz v0, :cond_2

    .line 2406
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 2473
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert to API 2 scene mode: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 2478
    :goto_2
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 2483
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    if-eqz v0, :cond_3

    .line 2484
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 2518
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert to API 2 white balance: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 2523
    :goto_3
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 270
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v0, :cond_5

    move v0, v3

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 274
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v0, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 278
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2527
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2531
    :cond_4
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 281
    :goto_6
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-eqz v0, :cond_8

    .line 282
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 289
    :goto_7
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    return-object v0

    .line 2334
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 2335
    goto/16 :goto_0

    .line 2338
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2343
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2348
    :pswitch_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v1

    .line 2349
    goto/16 :goto_0

    .line 2352
    :pswitch_6
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 2353
    goto/16 :goto_0

    .line 2370
    :pswitch_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 2374
    :pswitch_8
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 2378
    :pswitch_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 2382
    :pswitch_a
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 2386
    :pswitch_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 2391
    :pswitch_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 2408
    :pswitch_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2412
    :pswitch_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2416
    :pswitch_f
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2420
    :pswitch_10
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2424
    :pswitch_11
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2428
    :pswitch_12
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2432
    :pswitch_13
    sget v0, Lcom/android/ex/camera2/portability/LegacyVendorTags;->CONTROL_SCENE_MODE_HDR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2436
    :pswitch_14
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2440
    :pswitch_15
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2445
    :pswitch_16
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2449
    :pswitch_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2453
    :pswitch_18
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2457
    :pswitch_19
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2461
    :pswitch_1a
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2465
    :pswitch_1b
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2469
    :pswitch_1c
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 2486
    :pswitch_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2490
    :pswitch_1e
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2494
    :pswitch_1f
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2498
    :pswitch_20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2502
    :pswitch_21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2506
    :pswitch_22
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2510
    :pswitch_23
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 2514
    :pswitch_24
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    move v0, v4

    .line 270
    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    .line 274
    goto/16 :goto_5

    .line 2533
    :cond_7
    new-instance v0, Landroid/location/Location;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2534
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 2535
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 2536
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 2537
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 2538
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 286
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2368
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 2406
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 2484
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public final setZoomRatio(F)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 190
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v3, v5, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 199
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 1558
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1559
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1562
    cmpg-float v0, v3, v1

    if-gez v0, :cond_0

    .line 1564
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v1, v0

    .line 1565
    mul-float v0, v1, v3

    .line 1572
    :goto_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1573
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v6, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1576
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1577
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1579
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1582
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1583
    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 201
    return-void

    .line 1568
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1569
    div-float v1, v0, v3

    goto :goto_0
.end method
