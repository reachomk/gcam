.class public final Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;
.super Ljava/lang/Object;
.source "OneCameraCharacteristicsImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraCharacteristics;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private cachedStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private final cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private final lock:Ljava/lang/Object;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "OneCamCharImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/device/CameraId;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/debug/trace/Trace;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cachedStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 60
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 62
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 63
    iput-object p3, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 64
    iput-object p4, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->lock:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private final getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cachedStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "StreamConfigurationMap#create"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 113
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cachedStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cachedStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    monitor-exit v1

    .line 122
    :goto_0
    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Ljava/lang/String;

    const-string v2, "Unable to obtain picture sizes."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableFocalLengths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 224
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 223
    invoke-static {v0}, Lcom/google/common/primitives/Floats;->asList([F)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableJpegThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 391
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 390
    invoke-static {v0}, Lcom/android/camera/util/Size;->convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;

    move-result-object v0

    .line 389
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method

.method public final getCameraId()Lcom/google/android/apps/camera/device/CameraId;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    return-object v0
.end method

.method public final getControlAeTargetFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 397
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 396
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExposureCompensationStep()F
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/high16 v0, -0x40800000    # -1.0f

    .line 265
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 264
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 265
    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0
.end method

.method public final getHfrVideoFpsRanges(Lcom/android/camera/util/Size;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 369
    if-nez v0, :cond_0

    .line 372
    sget-object v0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain HFR video fps ranges."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->asSize21()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v0

    .line 378
    if-nez v0, :cond_1

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHfrVideoResolutions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 341
    if-nez v0, :cond_1

    .line 344
    sget-object v0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain HFR video fps resolutions."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v2

    .line 349
    if-nez v2, :cond_2

    .line 350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 354
    invoke-static {v4}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->of(Landroid/util/Size;)Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v4

    .line 355
    if-eqz v4, :cond_3

    .line 356
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHighestFaceDetectMode()Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;
    .locals 5

    .prologue
    .line 279
    .line 1195
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1196
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1199
    new-instance v2, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 1202
    aget v3, v0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1203
    sget-object v3, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_0
    aget v3, v0, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1206
    sget-object v3, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_1
    aget v3, v0, v1

    if-nez v3, :cond_2

    .line 1209
    sget-object v3, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_3
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 286
    :goto_1
    return-object v0

    .line 283
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    goto :goto_1

    .line 286
    :cond_5
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    goto :goto_1
.end method

.method public final getMaxExposureCompensation()I
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, -0x1

    .line 255
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 254
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 255
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final getMaxZoom()F
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v0, -0x1

    .line 245
    :goto_0
    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 244
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 245
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getSensorOrientation()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSupportedHardwareLevel$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ4H9NAS3GDTP78PB491GN4P3NC5P6AJ35EPIMOEO_()I
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 174
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 176
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL not found"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 186
    sget-object v1, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown higher hardware level mapped to FULL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    :goto_0
    return v0

    .line 179
    :pswitch_0
    sget v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    goto :goto_0

    .line 181
    :pswitch_1
    sget v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LIMITED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    goto :goto_0

    .line 183
    :pswitch_2
    sget v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getSupportedPictureSizes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/Size;->convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/Size;->convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSupportedReprocessingSizes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/Size;->convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final isAutoExposureSupported()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 319
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAutoFocusSupported()Z
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 304
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 305
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 308
    goto :goto_0
.end method

.method public final isAutoHdrPlusSupported()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 420
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 421
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 422
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 423
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 419
    goto :goto_0
.end method

.method public final isExposureCompensationSupported()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isPixelC()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 235
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 234
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 235
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final isFlashSupported()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isHdrPlusSupported()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 429
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 430
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 431
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 432
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 433
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    .line 428
    goto :goto_0
.end method

.method public final isHdrSceneSupported()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 162
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 163
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 164
    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 168
    :goto_1
    return v0

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 168
    goto :goto_1
.end method

.method public final isHfrVideoRecordingSupported()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 326
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 327
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 328
    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 330
    const/4 v0, 0x1

    .line 334
    :goto_1
    return v0

    .line 327
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 334
    goto :goto_1
.end method

.method public final isVideoStabilizationSupported()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isVideoStabilizationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 414
    :goto_0
    return v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 407
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 409
    array-length v4, v0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget v5, v0, v3

    .line 410
    if-ne v5, v2, :cond_1

    move v0, v2

    .line 411
    goto :goto_0

    .line 409
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 414
    goto :goto_0
.end method
