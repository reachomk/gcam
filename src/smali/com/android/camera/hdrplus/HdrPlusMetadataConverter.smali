.class public final Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;
.super Ljava/lang/Object;
.source "HdrPlusMetadataConverter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DUMMY_COLOR_TEMPERATURE:I

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOG:Z

.field private static sFaceDetectMode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "HdrPMdataConv"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->gcamSmartMeteringLogEveryFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->gcamSmartMeteringEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    .line 81
    invoke-static {}, Lcom/google/googlex/gcam/GcamModule;->getKColorTempUnknown()I

    move-result v0

    sput v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->DUMMY_COLOR_TEMPERATURE:I

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->sFaceDetectMode:Ljava/lang/Integer;

    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertMeteringRectanglesToGcamWeightedRects([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/google/googlex/gcam/WeightedRectVector;)V
    .locals 11

    .prologue
    .line 976
    const/4 v1, 0x0

    .line 980
    new-instance v0, Lcom/google/googlex/gcam/WeightedRect;

    invoke-direct {v0}, Lcom/google/googlex/gcam/WeightedRect;-><init>()V

    .line 981
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/WeightedRect;->setWeight(F)V

    .line 982
    new-instance v2, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v2}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/WeightedRect;->setRect(Lcom/google/googlex/gcam/NormalizedRect;)V

    .line 983
    invoke-virtual {p4, v0}, Lcom/google/googlex/gcam/WeightedRectVector;->add(Lcom/google/googlex/gcam/WeightedRect;)V

    .line 986
    if-eqz p0, :cond_3

    .line 988
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 990
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 993
    add-int/lit8 v5, v1, 0x1

    .line 996
    new-instance v6, Lcom/google/googlex/gcam/WeightedRect;

    invoke-direct {v6}, Lcom/google/googlex/gcam/WeightedRect;-><init>()V

    .line 998
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1008
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 1009
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 1014
    const v2, 0x3d7ae148    # 0.06125f

    .line 1015
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v9, v2, v3

    .line 1018
    sub-float v4, v1, v9

    .line 1019
    sub-float v3, v8, v9

    .line 1020
    add-float v2, v1, v9

    .line 1021
    add-float v1, v8, v9

    .line 1023
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p3, v8

    if-lez v8, :cond_0

    .line 1024
    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    .line 1025
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    .line 1026
    sub-float/2addr v4, v8

    mul-float/2addr v4, p3

    add-float/2addr v4, v8

    .line 1027
    sub-float/2addr v3, v8

    mul-float/2addr v3, p3

    add-float/2addr v3, v8

    .line 1028
    sub-float/2addr v2, v9

    mul-float/2addr v2, p3

    add-float/2addr v2, v9

    .line 1029
    sub-float/2addr v1, v9

    mul-float/2addr v1, p3

    add-float/2addr v1, v9

    .line 1030
    sget-object v8, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x28

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Scaling touch region by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v4, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(FFF)F

    move-result v4

    .line 1035
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v3, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v3, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(FFF)F

    move-result v3

    .line 1036
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v2, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v2, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(FFF)F

    move-result v2

    .line 1037
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v1, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(FFF)F

    move-result v1

    .line 1039
    invoke-virtual {v6}, Lcom/google/googlex/gcam/WeightedRect;->getRect()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v8

    .line 1040
    invoke-virtual {v8, v4}, Lcom/google/googlex/gcam/NormalizedRect;->setX0(F)V

    .line 1041
    invoke-virtual {v8, v3}, Lcom/google/googlex/gcam/NormalizedRect;->setY0(F)V

    .line 1042
    invoke-virtual {v8, v2}, Lcom/google/googlex/gcam/NormalizedRect;->setX1(F)V

    .line 1043
    invoke-virtual {v8, v1}, Lcom/google/googlex/gcam/NormalizedRect;->setY1(F)V

    .line 1046
    const/high16 v8, 0x42340000    # 45.0f

    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/WeightedRect;->setWeight(F)V

    .line 1049
    invoke-virtual {p4, v6}, Lcom/google/googlex/gcam/WeightedRectVector;->add(Lcom/google/googlex/gcam/WeightedRect;)V

    .line 1051
    sget-boolean v6, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v6, :cond_1

    .line 1052
    sget-object v6, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v8, "convertMeteringRectanglesToGcamWeightedRects: input rect: %s SENSOR_INFO_ACTIVE_ARRAY: %s  output normalized rectangle %d: (x0: %f, y0: %f, x1: %f, y1: %f, weight: %f)"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 1059
    invoke-virtual {v7}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    const/4 v7, 0x1

    .line 1060
    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    .line 1061
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x3

    .line 1062
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v9, v7

    const/4 v4, 0x4

    .line 1063
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v4

    const/4 v3, 0x5

    .line 1064
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v3

    const/4 v2, 0x6

    .line 1065
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x7

    const/high16 v2, 0x42340000    # 45.0f

    .line 1066
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    .line 1054
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-static {v6, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v5

    .line 988
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1070
    :cond_3
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_4

    .line 1071
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "convertMeteringRectanglesToGcamWeightedRects - set up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " metering rectangles total."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_4
    return-void
.end method

.method public static convertOneCameraFlashToGcamFlash(Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;)I
    .locals 1

    .prologue
    .line 1149
    sget-object v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne p0, v0, :cond_0

    .line 1150
    const/4 v0, 0x0

    .line 1154
    :goto_0
    return v0

    .line 1151
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne p0, v0, :cond_1

    .line 1152
    const/4 v0, 0x1

    goto :goto_0

    .line 1154
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x9

    .line 741
    new-array v1, v4, [Landroid/util/Rational;

    .line 742
    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    .line 744
    new-array v2, v4, [F

    .line 745
    :goto_0
    if-ge v0, v4, :cond_0

    .line 746
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

    aput v3, v2, v0

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_0
    return-object v2
.end method

.method public static convertToGcamFrameMetadata(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;Ljava/lang/String;ZF)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 6

    .prologue
    .line 414
    new-instance v3, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v3}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    .line 418
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 419
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setSensor_id(I)V

    .line 3586
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3587
    sget-boolean v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v2, :cond_0

    .line 3588
    sget-object v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "getExposureTimeMs - exposure ns: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    :cond_0
    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 423
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setActual_exposure_time_ms(F)V

    .line 4604
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4605
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4606
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4615
    if-le v0, v2, :cond_8

    .line 4616
    int-to-float v4, v2

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 4617
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4623
    :goto_1
    sget-boolean v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v2, :cond_1

    .line 4624
    sget-object v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "getAnalogAndDigitalGain - actual analog gain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " digital gain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 426
    const/4 v0, 0x0

    aget v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setActual_analog_gain(F)V

    .line 427
    const/4 v0, 0x1

    aget v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setApplied_digital_gain(F)V

    .line 429
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 430
    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 432
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setPost_raw_digital_gain(F)V

    .line 438
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 439
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 441
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setFlash(I)V

    .line 448
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setSharpness(F)V

    .line 451
    invoke-static {p0, p1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getAwbInfoCaptured(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v0

    .line 452
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setWb_capture(Lcom/google/googlex/gcam/AwbInfo;)V

    .line 453
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setWb_ideal(Lcom/google/googlex/gcam/AwbInfo;)V

    .line 456
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Rational;

    .line 457
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 458
    invoke-virtual {v4}, Landroid/util/Rational;->floatValue()F

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 459
    invoke-virtual {v4}, Landroid/util/Rational;->floatValue()F

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget-object v0, v0, v4

    .line 460
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 462
    invoke-virtual {v3, v1}, Lcom/google/googlex/gcam/FrameMetadata;->setNeutral_point([F)V

    .line 466
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 467
    if-nez v0, :cond_4

    .line 468
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 470
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setWas_black_level_locked(Z)V

    .line 473
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 474
    invoke-virtual {v3, v0, v1}, Lcom/google/googlex/gcam/FrameMetadata;->setTimestamp_ns(J)V

    .line 476
    sget-boolean v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v2, :cond_5

    .line 477
    sget-object v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x43

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Captured AWB for metadata result timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_5
    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameMetadata;->getFaces()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v0

    invoke-static {p0, p1, p5, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->updateFaceInfo(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;FLcom/google/googlex/gcam/FaceInfoVector;)V

    .line 484
    invoke-static {}, Lcom/google/googlex/gcam/GcamModule;->getKSensorTempUnknown()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setSensor_temp(I)V

    .line 487
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 488
    if-eqz v0, :cond_6

    .line 489
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected STATISTICS_SCENE_FLICKER type!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_6
    :goto_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    .line 507
    const/4 v1, 0x4

    new-array v4, v1, [Lcom/google/googlex/gcam/DngNoiseModel;

    .line 508
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v1, 0x4

    if-ge v2, v1, :cond_a

    .line 509
    new-instance v1, Lcom/google/googlex/gcam/DngNoiseModel;

    invoke-direct {v1}, Lcom/google/googlex/gcam/DngNoiseModel;-><init>()V

    aput-object v1, v4, v2

    .line 510
    aget-object v5, v4, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/googlex/gcam/DngNoiseModel;->setScale(F)V

    .line 511
    aget-object v5, v4, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/googlex/gcam/DngNoiseModel;->setOffset(F)V

    .line 508
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 419
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4619
    :cond_8
    int-to-float v0, v0

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 4620
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 443
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setFlash(I)V

    goto/16 :goto_2

    .line 491
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setScene_flicker(I)V

    goto :goto_3

    .line 494
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setScene_flicker(I)V

    goto :goto_3

    .line 497
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setScene_flicker(I)V

    goto :goto_3

    .line 513
    :cond_a
    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/FrameMetadata;->setDng_noise_model_bayer([Lcom/google/googlex/gcam/DngNoiseModel;)V

    .line 520
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 521
    if-eqz v0, :cond_10

    .line 522
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setBlack_levels_bayer([F)V

    .line 538
    :goto_5
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 539
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 540
    invoke-interface {p1, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 541
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 543
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    .line 545
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 547
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setFocus_distance_diopters(F)V

    .line 552
    :cond_c
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setControl_mode(I)V

    .line 553
    new-instance v1, Lcom/google/googlex/gcam/AeMetadata;

    invoke-direct {v1}, Lcom/google/googlex/gcam/AeMetadata;-><init>()V

    .line 554
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AeMetadata;->setMode(I)V

    .line 555
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AeMetadata;->setLock(Z)V

    .line 556
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AeMetadata;->setState(I)V

    .line 557
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 558
    if-eqz v0, :cond_d

    .line 559
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AeMetadata;->setPrecapture_trigger(I)V

    .line 561
    :cond_d
    invoke-virtual {v3, v1}, Lcom/google/googlex/gcam/FrameMetadata;->setAe(Lcom/google/googlex/gcam/AeMetadata;)V

    .line 562
    new-instance v1, Lcom/google/googlex/gcam/AwbMetadata;

    invoke-direct {v1}, Lcom/google/googlex/gcam/AwbMetadata;-><init>()V

    .line 563
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AwbMetadata;->setMode(I)V

    .line 564
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AwbMetadata;->setLock(Z)V

    .line 565
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AwbMetadata;->setState(I)V

    .line 566
    invoke-virtual {v3, v1}, Lcom/google/googlex/gcam/FrameMetadata;->setAwb(Lcom/google/googlex/gcam/AwbMetadata;)V

    .line 567
    new-instance v1, Lcom/google/googlex/gcam/AfMetadata;

    invoke-direct {v1}, Lcom/google/googlex/gcam/AfMetadata;-><init>()V

    .line 568
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AfMetadata;->setMode(I)V

    .line 569
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AfMetadata;->setState(I)V

    .line 570
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AfMetadata;->setTrigger(I)V

    .line 571
    invoke-virtual {v3, v1}, Lcom/google/googlex/gcam/FrameMetadata;->setAf(Lcom/google/googlex/gcam/AfMetadata;)V

    .line 572
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 573
    if-eqz v0, :cond_e

    .line 574
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/FrameMetadata;->setLens_state(I)V

    .line 578
    :cond_e
    if-eqz p4, :cond_f

    .line 579
    invoke-static {p3, p2, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpMetadata(Ljava/lang/String;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V

    .line 582
    :cond_f
    return-object v3

    .line 524
    :cond_10
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 525
    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 526
    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 527
    const/4 v1, 0x0

    :goto_6
    const/4 v4, 0x4

    if-ge v1, v4, :cond_11

    .line 528
    rem-int/lit8 v4, v1, 0x2

    .line 529
    div-int/lit8 v5, v1, 0x2

    .line 530
    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v1

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 532
    :cond_11
    invoke-virtual {v3, v2}, Lcom/google/googlex/gcam/FrameMetadata;->setBlack_levels_bayer([F)V

    goto/16 :goto_5

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToGcamStaticMetadata(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    new-instance v6, Lcom/google/googlex/gcam/StaticMetadata;

    invoke-direct {v6}, Lcom/google/googlex/gcam/StaticMetadata;-><init>()V

    .line 249
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setMake(Ljava/lang/String;)V

    .line 250
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setModel(Ljava/lang/String;)V

    .line 251
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setDevice(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/google/googlex/gcam/GcamModule;->GetVersion()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v5, "HDR+ "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setSoftware(Ljava/lang/String;)V

    .line 258
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 260
    :goto_1
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setSensor_id(I)V

    .line 262
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setHas_flash(Z)V

    .line 265
    invoke-interface {p0}, Lcom/android/camera/one/OneCameraCharacteristics;->getAvailableFocalLengths()Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 267
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No focal lengths defined!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 259
    goto :goto_1

    .line 269
    :cond_2
    new-instance v5, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v5}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 271
    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/FloatVector;->add(F)V

    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {v6, v5}, Lcom/google/googlex/gcam/StaticMetadata;->setAvailable_focal_lengths_mm(Lcom/google/googlex/gcam/FloatVector;)V

    .line 275
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 276
    array-length v5, v0

    if-gtz v5, :cond_4

    .line 277
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No aperture values defined!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 279
    :cond_4
    new-instance v7, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    .line 280
    array-length v8, v0

    move v5, v1

    :goto_3
    if-ge v5, v8, :cond_5

    aget v9, v0, v5

    .line 281
    invoke-virtual {v7, v9}, Lcom/google/googlex/gcam/FloatVector;->add(F)V

    .line 280
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 283
    :cond_5
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/StaticMetadata;->setAvailable_f_numbers(Lcom/google/googlex/gcam/FloatVector;)V

    .line 287
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 288
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 291
    new-array v7, v3, [F

    move v5, v1

    .line 292
    :goto_4
    if-ge v5, v3, :cond_6

    .line 293
    rem-int/lit8 v8, v5, 0x2

    .line 294
    div-int/lit8 v9, v5, 0x2

    .line 295
    invoke-virtual {v0, v8, v9}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 298
    :cond_6
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/StaticMetadata;->setBlack_levels_bayer([F)V

    .line 303
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setWhite_level(I)V

    .line 307
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 308
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 309
    if-eqz v0, :cond_8

    .line 310
    new-instance v7, Lcom/google/googlex/gcam/PixelRectVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/PixelRectVector;-><init>()V

    .line 311
    array-length v8, v0

    move v5, v1

    :goto_5
    if-ge v5, v8, :cond_7

    aget-object v9, v0, v5

    .line 312
    new-instance v10, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v10}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    .line 313
    iget v11, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v11}, Lcom/google/googlex/gcam/PixelRect;->setX0(I)V

    .line 314
    iget v11, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Lcom/google/googlex/gcam/PixelRect;->setX1(I)V

    .line 315
    iget v11, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11}, Lcom/google/googlex/gcam/PixelRect;->setY0(I)V

    .line 316
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/PixelRect;->setY1(I)V

    .line 317
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRectVector;->add(Lcom/google/googlex/gcam/PixelRect;)V

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 319
    :cond_7
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/StaticMetadata;->setOptically_black_regions(Lcom/google/googlex/gcam/PixelRectVector;)V

    .line 323
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 324
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3164
    packed-switch v0, :pswitch_data_0

    .line 3178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "staticInfo: unsupported BayerPattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v2

    .line 326
    :goto_6
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setBayer_pattern(I)V

    .line 329
    new-array v3, v4, [I

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 330
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 331
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    .line 333
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    invoke-virtual {v6, v3}, Lcom/google/googlex/gcam/StaticMetadata;->setIso_range([I)V

    .line 335
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setMax_analog_iso(I)V

    .line 341
    new-instance v2, Lcom/google/googlex/gcam/ColorCalibrationVector;

    invoke-direct {v2}, Lcom/google/googlex/gcam/ColorCalibrationVector;-><init>()V

    .line 343
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 344
    if-eqz v0, :cond_9

    .line 345
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 346
    invoke-interface {p0, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object v3

    .line 347
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 349
    invoke-interface {p0, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 348
    invoke-static {v1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object v1

    .line 351
    new-instance v4, Lcom/google/googlex/gcam/ColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/ColorCalibration;-><init>()V

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/googlex/gcam/ColorCalibration;->setIlluminant(I)V

    .line 353
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/ColorCalibration;->setXyz_to_model_rgb([F)V

    .line 354
    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/ColorCalibration;->setModel_rgb_to_device_rgb([F)V

    .line 355
    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/ColorCalibrationVector;->add(Lcom/google/googlex/gcam/ColorCalibration;)V

    .line 358
    :cond_9
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 359
    if-eqz v0, :cond_a

    .line 360
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 361
    invoke-interface {p0, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object v3

    .line 362
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 364
    invoke-interface {p0, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 363
    invoke-static {v1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object v1

    .line 366
    new-instance v4, Lcom/google/googlex/gcam/ColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/ColorCalibration;-><init>()V

    .line 367
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/googlex/gcam/ColorCalibration;->setIlluminant(I)V

    .line 368
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/ColorCalibration;->setXyz_to_model_rgb([F)V

    .line 369
    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/ColorCalibration;->setModel_rgb_to_device_rgb([F)V

    .line 370
    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/ColorCalibrationVector;->add(Lcom/google/googlex/gcam/ColorCalibration;)V

    .line 377
    :cond_a
    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/StaticMetadata;->setColor_calibration(Lcom/google/googlex/gcam/ColorCalibrationVector;)V

    .line 380
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 381
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 382
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/StaticMetadata;->setPixel_array_width(I)V

    .line 383
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setPixel_array_height(I)V

    .line 385
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 386
    new-instance v1, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v1}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    .line 387
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/PixelRect;->setX0(I)V

    .line 388
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/PixelRect;->setX1(I)V

    .line 389
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/PixelRect;->setY0(I)V

    .line 390
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/PixelRect;->setY1(I)V

    .line 391
    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/StaticMetadata;->setActive_area(Lcom/google/googlex/gcam/PixelRect;)V

    .line 393
    invoke-static {p0}, Lcom/android/camera/hdrplus/GcamUtils;->getGcamRawFormat(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getSize()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/StaticMetadata;->setFrame_raw_max_width(I)V

    .line 395
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getSize()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/StaticMetadata;->setFrame_raw_max_height(I)V

    .line 397
    const/16 v1, 0x23

    invoke-interface {p0, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v1

    .line 398
    invoke-static {v1}, Lcom/android/camera/util/Size;->largestByArea(Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/StaticMetadata;->setFrame_yuv_max_width(I)V

    .line 400
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/StaticMetadata;->setFrame_yuv_max_height(I)V

    .line 402
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getImageFormat()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;->setRaw_bits_per_pixel(I)V

    .line 404
    return-object v6

    .line 3169
    :pswitch_1
    const/4 v0, 0x3

    .line 3170
    goto/16 :goto_6

    :pswitch_2
    move v0, v3

    .line 3173
    goto/16 :goto_6

    :pswitch_3
    move v0, v4

    .line 3176
    goto/16 :goto_6

    .line 3164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertToSpatialGainMap(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 771
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 772
    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/LensShadingMap;

    .line 773
    if-nez v0, :cond_0

    .line 774
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v1, "android.statistics.lensShadingMap was null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    .line 800
    :goto_0
    return-object v0

    .line 778
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result v6

    .line 779
    invoke-virtual {v0}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v7

    .line 781
    new-instance v2, Lcom/google/googlex/gcam/SpatialGainMap;

    const/4 v1, 0x1

    invoke-direct {v2, v6, v7, v1}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>(IIZ)V

    .line 785
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 786
    invoke-interface {p1, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 787
    invoke-static {v1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getEvenOddSourceIndicesForCfa(I)[I

    move-result-object v8

    move v5, v3

    .line 790
    :goto_1
    const/4 v1, 0x4

    if-ge v5, v1, :cond_3

    .line 791
    aget v9, v8, v5

    move v4, v3

    .line 792
    :goto_2
    if-ge v4, v7, :cond_2

    move v1, v3

    .line 793
    :goto_3
    if-ge v1, v6, :cond_1

    .line 794
    invoke-virtual {v0, v9, v1, v4}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v10

    .line 795
    invoke-virtual {v2, v1, v4, v5, v10}, Lcom/google/googlex/gcam/SpatialGainMap;->WriteRggb(IIIF)V

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 792
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 790
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 800
    goto :goto_0
.end method

.method private static getAwbGainsDummy()[F
    .locals 2

    .prologue
    .line 716
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 717
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 718
    return-object v0
.end method

.method public static getAwbInfoCaptured(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/AwbInfo;
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 659
    new-instance v3, Lcom/google/googlex/gcam/AwbInfo;

    invoke-direct {v3}, Lcom/google/googlex/gcam/AwbInfo;-><init>()V

    .line 662
    sget v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->DUMMY_COLOR_TEMPERATURE:I

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/AwbInfo;->setColor_temp(I)V

    .line 4683
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4685
    invoke-interface {p0, v4}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 4686
    if-nez v0, :cond_1

    .line 4687
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 4688
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "getAwbGains - key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4691
    :cond_0
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getAwbGainsDummy()[F

    move-result-object v0

    .line 665
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/AwbInfo;->setGains([F)V

    .line 4731
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 4732
    if-nez v0, :cond_4

    .line 4733
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v1, "getAwbRgb2Rgb: CaptureResult.COLOR_CORRECTION_TRANSFORM is null."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 668
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/AwbInfo;->setRgb2rgb([F)V

    .line 670
    return-object v3

    .line 4693
    :cond_1
    new-array v2, v8, [F

    .line 4697
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4698
    invoke-interface {p1, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4699
    invoke-static {v1}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getEvenOddSourceIndicesForCfa(I)[I

    move-result-object v5

    .line 4701
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_3

    .line 4702
    aget v6, v5, v1

    .line 4703
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/RggbChannelVector;->getComponent(I)F

    move-result v6

    .line 4704
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    .line 4705
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "getAwbGainsFromKey - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was < 1.0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4706
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getAwbGainsDummy()[F

    move-result-object v0

    goto :goto_0

    .line 4709
    :cond_2
    aput v6, v2, v1

    .line 4701
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 4711
    goto :goto_0

    .line 4736
    :cond_4
    invoke-static {v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object v0

    goto :goto_1

    .line 4755
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getEvenOddSourceIndicesForCfa(I)[I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 828
    packed-switch p0, :pswitch_data_0

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "staticInfo: unsupported colorFilterArrangment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :pswitch_0
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 836
    :goto_0
    return-object v0

    .line 832
    :pswitch_1
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 834
    :pswitch_2
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 836
    :pswitch_3
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 830
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 832
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 834
    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    .line 836
    :array_3
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public static getExposureCompensationStops(ILandroid/util/Rational;)F
    .locals 3

    .prologue
    .line 645
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    mul-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 646
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getTotalExposureTime(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)F
    .locals 3

    .prologue
    .line 883
    if-nez p0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_0
    if-nez p1, :cond_1

    .line 886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "staticInfo should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5141
    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float v1, v0, v1

    .line 894
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 895
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 896
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 897
    mul-float/2addr v0, v1

    return v0
.end method

.method public static updateAeShotParams(Lcom/google/googlex/gcam/AeShotParams;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/MeteringRectangle;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCharacteristics;F)V
    .locals 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 925
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->gcamIgnoreAeRegions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 927
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v1, "updateAeShotParams - ignoring all AE regions"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    invoke-static {p3}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    .line 936
    invoke-virtual {v0, p1}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 937
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p4, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 6093
    new-instance v2, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v2}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    .line 6094
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 6095
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 6096
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v2, v5}, Lcom/google/googlex/gcam/NormalizedRect;->setX0(F)V

    .line 6097
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/google/googlex/gcam/NormalizedRect;->setY0(F)V

    .line 6098
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/NormalizedRect;->setX1(F)V

    .line 6099
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/NormalizedRect;->setY1(F)V

    .line 6101
    sget-boolean v3, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v3, :cond_2

    .line 6102
    sget-object v3, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "convertCropRectToGcamCropParams - cropRegion is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6103
    sget-object v3, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v4, "convertCropRectToGcamCropParams - normalized crop: x0 = %f, y0 = %f, x1 = %f, y1 = %f, aspect ratio = %f"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 6108
    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getX0()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 6109
    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getY0()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 6110
    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getX1()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 6111
    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getY1()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 6112
    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getX1()F

    move-result v7

    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getX0()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getY1()F

    move-result v8

    invoke-virtual {v2}, Lcom/google/googlex/gcam/NormalizedRect;->getY0()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 6105
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6103
    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/googlex/gcam/AeShotParams;->setCrop(Lcom/google/googlex/gcam/NormalizedRect;)V

    .line 941
    if-eqz p2, :cond_3

    .line 947
    invoke-virtual {p0}, Lcom/google/googlex/gcam/AeShotParams;->getWeighted_metering_areas()Lcom/google/googlex/gcam/WeightedRectVector;

    move-result-object v2

    .line 942
    invoke-static {p2, v1, v0, p5, v2}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertMeteringRectanglesToGcamWeightedRects([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/google/googlex/gcam/WeightedRectVector;)V

    goto/16 :goto_0

    .line 949
    :cond_3
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v1, "updateAeShotParams - no metering rectangles available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static updateFaceInfo(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;FLcom/google/googlex/gcam/FaceInfoVector;)V
    .locals 11

    .prologue
    .line 1195
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1196
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1197
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1199
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 1200
    if-nez v0, :cond_1

    .line 1271
    :cond_0
    return-void

    .line 1204
    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1205
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1210
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    int-to-float v3, v5

    div-float v4, v2, v3

    .line 1211
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    int-to-float v3, v6

    div-float v3, v2, v3

    .line 1216
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v2, v8

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    .line 1223
    if-le v5, v6, :cond_4

    .line 1224
    int-to-float v8, v5

    div-float/2addr v2, v8

    .line 1229
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v8

    if-lez v8, :cond_2

    .line 1230
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v4, v8

    mul-float/2addr v4, p2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v4, v8

    .line 1231
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v3, v8

    mul-float/2addr v3, p2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v3, v8

    .line 1232
    mul-float/2addr v2, p2

    .line 1233
    sget-object v8, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x2c

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Scaling face coordinates by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_2
    aget-object v8, v0, v1

    .line 1237
    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    const/high16 v9, 0x42c60000    # 99.0f

    div-float/2addr v8, v9

    .line 1243
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-ltz v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v9

    if-gtz v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v3, v9

    if-gtz v9, :cond_3

    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-ltz v9, :cond_3

    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_3

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-ltz v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 1251
    :cond_3
    sget-object v2, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v3, "Face data is bad: (%d, %d) - (%d, %d), score %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 1255
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 1256
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 1257
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 1258
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v8

    const/4 v7, 0x4

    aget-object v8, v0, v1

    .line 1259
    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 1253
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1251
    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1226
    :cond_4
    int-to-float v8, v6

    div-float/2addr v2, v8

    goto/16 :goto_1

    .line 1261
    :cond_5
    new-instance v7, Lcom/google/googlex/gcam/FaceInfo;

    invoke-direct {v7}, Lcom/google/googlex/gcam/FaceInfo;-><init>()V

    .line 1263
    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/FaceInfo;->setPos_x(F)V

    .line 1264
    invoke-virtual {v7, v3}, Lcom/google/googlex/gcam/FaceInfo;->setPos_y(F)V

    .line 1265
    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/FaceInfo;->setSize(F)V

    .line 1266
    invoke-virtual {v7, v8}, Lcom/google/googlex/gcam/FaceInfo;->setConfidence(F)V

    .line 1268
    invoke-virtual {p3, v7}, Lcom/google/googlex/gcam/FaceInfoVector;->add(Lcom/google/googlex/gcam/FaceInfo;)V

    goto :goto_2
.end method

.method public static updateFromFrameRequest(Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/google/googlex/gcam/FrameRequest;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;)V
    .locals 9

    .prologue
    .line 117
    iget v0, p3, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    iget v1, p3, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Requesting AWB ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), frame index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->getDesired_exposure_time_ms()F

    move-result v0

    .line 121
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->getDesired_analog_gain()F

    move-result v2

    .line 122
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->getDesired_digital_gain()F

    move-result v3

    .line 128
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 131
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 2121
    const v4, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 135
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 137
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "updateFromFrameRequest - Exposure (ns) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p2, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    mul-float v4, v3, v2

    int-to-float v5, v0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 143
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 144
    sget-boolean v5, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v5, :cond_1

    .line 145
    sget-object v5, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v6, "updateFromFrameRequest - Gain (iso) = %d (analog = %f, digital = %f, minIsoGain = %d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    .line 151
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v4

    const/4 v2, 0x2

    .line 152
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    .line 147
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v5, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->getTry_to_lock_black_level()Z

    move-result v0

    .line 158
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 160
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_2

    .line 161
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v2, "updateFromFrameRequest - using manual white balance values"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->getAwb()Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/google/googlex/gcam/AwbInfo;->Check()Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    const-string v3, "updateFromFrameRequest - expected FrameRequest to have valid AwbInfo"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 171
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 171
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 178
    invoke-virtual {v2}, Lcom/google/googlex/gcam/AwbInfo;->getGains()[F

    move-result-object v3

    .line 182
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 183
    invoke-interface {p2, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2868
    invoke-static {v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getEvenOddSourceIndicesForCfa(I)[I

    move-result-object v0

    .line 186
    new-instance v4, Landroid/hardware/camera2/params/RggbChannelVector;

    const/4 v5, 0x0

    aget v5, v0, v5

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v0, v7

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v0, v0, v8

    aget v0, v3, v0

    invoke-direct {v4, v5, v6, v7, v0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    .line 193
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 197
    const/16 v0, 0x9

    new-array v3, v0, [Landroid/util/Rational;

    .line 199
    invoke-virtual {v2}, Lcom/google/googlex/gcam/AwbInfo;->getRgb2rgb()[F

    move-result-object v2

    .line 200
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x9

    if-ge v0, v4, :cond_4

    .line 201
    aget v4, v2, v0

    .line 202
    new-instance v5, Landroid/util/Rational;

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    const/16 v6, 0x2710

    invoke-direct {v5, v4, v6}, Landroid/util/Rational;-><init>(II)V

    .line 203
    aput-object v5, v3, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/ColorSpaceTransform;-><init>([Landroid/util/Rational;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 208
    sget-boolean v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->VERBOSE_LOG:Z

    if-eqz v0, :cond_5

    .line 209
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 219
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->sFaceDetectMode:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 220
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getHighestFaceDetectMode()Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->toCamera2Mode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->sFaceDetectMode:Ljava/lang/Integer;

    .line 222
    :cond_6
    iget v0, p3, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    iget v0, p3, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 224
    :cond_7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->sFaceDetectMode:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 236
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 239
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 243
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 244
    return-void

    .line 230
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    goto :goto_1
.end method
