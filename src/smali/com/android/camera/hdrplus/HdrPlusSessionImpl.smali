.class final Lcom/android/camera/hdrplus/HdrPlusSessionImpl;
.super Ljava/lang/Object;
.source "HdrPlusSessionImpl.java"

# interfaces
.implements Lcom/android/camera/hdrplus/HdrPlusSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final desiredAspectRatio:Lcom/android/camera/util/AspectRatio;

.field private final desiredPhotoSize:Lcom/android/camera/util/Size;

.field private final exposureCompensationSteps:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final gcam:Lcom/google/googlex/gcam/Gcam;

.field private final gcamDngImageWriter:Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

.field private final hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

.field private final locationProvider:Lcom/android/camera/location/LocationProvider;

.field private metadataSavePath:Ljava/lang/String;

.field private final metadataSaveRoot:Ljava/io/File;

.field private final payloadPhotoSize:Lcom/android/camera/util/Size;

.field private final postviewParams:Lcom/google/googlex/gcam/PostviewParams;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "HdrPlusSession"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/google/googlex/gcam/Gcam;Lcom/android/camera/processing/ProcessingServiceManager;Ljava/io/File;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/settings/WhiteBalanceSetting;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/hdrplus/HdrPlusState;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            "Lcom/google/googlex/gcam/Gcam;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Ljava/io/File;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    .line 101
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 102
    iput-object p5, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    .line 103
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->exposureCompensationSteps:Lcom/google/android/apps/camera/async/Observable;

    .line 104
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 105
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->locationProvider:Lcom/android/camera/location/LocationProvider;

    .line 106
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcamDngImageWriter:Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    .line 107
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 108
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 109
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1}, Lcom/android/camera/hdrplus/GcamUtils;->getGcamRawFormat(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getSize()Lcom/android/camera/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->payloadPhotoSize:Lcom/android/camera/util/Size;

    .line 112
    invoke-virtual {p4}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getDesiredOutputSize()Lcom/android/camera/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    .line 113
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    invoke-static {v1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 115
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->payloadPhotoSize:Lcom/android/camera/util/Size;

    .line 1658
    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 1659
    invoke-virtual {v2}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/hdrplus/GcamUtils;->calculatePostViewSize(Lcom/android/camera/util/Size;F)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 1660
    const/4 v3, 0x0

    .line 1661
    const/4 v4, 0x0

    .line 1662
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_0

    .line 1663
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    .line 1681
    :goto_0
    new-instance v1, Lcom/google/googlex/gcam/PostviewParams;

    const/4 v2, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/googlex/gcam/PostviewParams;-><init>(IIIZZZ)V

    .line 115
    iput-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->postviewParams:Lcom/google/googlex/gcam/PostviewParams;

    .line 117
    iput-object p7, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSaveRoot:Ljava/io/File;

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSavePath:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 120
    return-void

    .line 1665
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/hdrplus/HdrPlusSessionImpl;)Lcom/android/camera/hdrplus/HdrPlusState;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final checkCameraLifetimeOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "Camera already closed"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    return-void
.end method

.method private final convertToHdrPlusViewfinderFrame(ZLcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;FLcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusInFlightImages;)Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 732
    new-instance v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;

    invoke-direct {v6}, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;-><init>()V

    .line 735
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/hdrplus/HdrPlusImageConverter;->isCompatibleRawFormat(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 737
    invoke-static {p2}, Lcom/android/camera/hdrplus/HdrPlusImageConverter;->wrapRawWriteView(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v0

    .line 738
    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p8, p2}, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->put(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)J

    move-result-wide v4

    iput-wide v4, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->rawId:J

    .line 741
    :cond_0
    iput-object v0, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->raw:Lcom/google/googlex/gcam/RawWriteView;

    .line 744
    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p7

    move-object v3, v2

    move v5, p4

    .line 745
    invoke-static/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToGcamFrameMetadata(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;Ljava/lang/String;ZF)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v0

    .line 752
    iput-object v0, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->metadata:Lcom/google/googlex/gcam/FrameMetadata;

    .line 756
    invoke-static {p3, p7}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToSpatialGainMap(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v0

    .line 757
    if-nez v0, :cond_1

    .line 758
    new-instance v0, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-direct {v0}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    iput-object v0, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->sgm:Lcom/google/googlex/gcam/SpatialGainMap;

    .line 763
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 765
    invoke-interface {p3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 766
    invoke-interface {p7, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 764
    invoke-static {v1, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getExposureCompensationStops(ILandroid/util/Rational;)F

    move-result v0

    .line 770
    invoke-static {p5, v0, v2}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->createAeShotParams(Lcom/android/camera/util/Size;FLcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    iput-object v0, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->aeShotParams:Lcom/google/googlex/gcam/AeShotParams;

    .line 771
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 772
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid scaler crop region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :goto_1
    return-object v2

    .line 760
    :cond_1
    iput-object v0, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->sgm:Lcom/google/googlex/gcam/SpatialGainMap;

    goto :goto_0

    .line 777
    :cond_2
    iget-object v0, v6, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->aeShotParams:Lcom/google/googlex/gcam/AeShotParams;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 780
    invoke-interface {p3, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v3, p6

    move-object v4, p7

    move v5, p4

    .line 777
    invoke-static/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->updateAeShotParams(Lcom/google/googlex/gcam/AeShotParams;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/MeteringRectangle;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCharacteristics;F)V

    move-object v2, v6

    goto :goto_1
.end method

.method private static createAeShotParams(Lcom/android/camera/util/Size;FLcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/AeShotParams;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/google/googlex/gcam/AeResults;->getAe_shot_params()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/AeShotParams;

    invoke-direct {v0}, Lcom/google/googlex/gcam/AeShotParams;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AeShotParams;->setPayload_frame_orig_width(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AeShotParams;->setPayload_frame_orig_height(I)V

    .line 195
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->setExposure_compensation(F)V

    .line 198
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->setProcess_bayer_for_metering(Z)V

    .line 199
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->setProcess_bayer_for_payload(Z)V

    goto :goto_0
.end method

.method private final getMetadataScaleFactor()F
    .locals 3

    .prologue
    .line 614
    const/high16 v0, 0x3f800000    # 1.0f

    .line 615
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredAspectRatio:Lcom/android/camera/util/AspectRatio;

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v1

    const v2, 0x3fcccccd    # 1.6f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 616
    const v0, 0x3faaaaaa

    .line 618
    :cond_0
    return v0
.end method

.method private final declared-synchronized registerShot$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQ99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UP3ECSNKEOR1DL26SPQ9DLGMEPANE9KN8PBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFADGMCPA3DHNN6PB1C9M6AEO_(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;ILcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 5

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;-><init>(ILcom/android/camera/session/StackableSession;)V

    .line 634
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v1, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 635
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v2, v2, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/camera/hdrplus/InFlightShotParameters;

    invoke-direct {v4, p2, p3, v0, p4}, Lcom/android/camera/hdrplus/InFlightShotParameters;-><init>(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;ILcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;)V

    .line 635
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/processing/ProcessingServiceManager;->enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 643
    new-instance v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;-><init>(Lcom/android/camera/hdrplus/HdrPlusSessionImpl;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 638
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized startShotCaptureInternal$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7DD4IAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR8CHP70R3LECNKGP3IA1M7ASQJD1NN8EO_(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;ZI)Lcom/android/camera/hdrplus/HdrPlusShot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->checkCameraLifetimeOpen()V

    .line 311
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "startShotCapture()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->exposureCompensationSteps:Lcom/google/android/apps/camera/async/Observable;

    .line 316
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 317
    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 315
    invoke-static {v1, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getExposureCompensationStops(ILandroid/util/Rational;)F

    move-result v2

    .line 319
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->orientation:I

    .line 320
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 2129
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 2130
    const/4 v0, 0x0

    move v6, v0

    .line 322
    :goto_0
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->writeDng:Z

    .line 324
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-virtual {v1}, Lcom/android/camera/hdrplus/HdrPlusState;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->getMax_full_metering_sweep_frames()I

    move-result v1

    .line 326
    iget-object v3, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->payloadPhotoSize:Lcom/android/camera/util/Size;

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_6

    .line 2161
    :goto_1
    new-instance v7, Lcom/google/googlex/gcam/ShotParams;

    invoke-direct {v7}, Lcom/google/googlex/gcam/ShotParams;-><init>()V

    .line 2162
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/ShotParams;->setFull_metering_sweep_frame_count(I)V

    .line 2163
    invoke-static {v6}, Lcom/android/camera/hdrplus/GcamUtils;->getImageRotation(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/ShotParams;->setImage_rotation(I)V

    .line 2166
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/ShotParams;->setManually_rotate_final_image(Z)V

    .line 2170
    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setSave_merged_dng(Z)V

    .line 2171
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setCompress_merged_dng(Z)V

    .line 2173
    invoke-static {v3, v2, p4}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->createAeShotParams(Lcom/android/camera/util/Size;FLcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setAe(Lcom/google/googlex/gcam/AeShotParams;)V

    .line 2175
    invoke-static {p3}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertOneCameraFlashToGcamFlash(Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setFlash_mode(I)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    invoke-virtual {v0}, Lcom/android/camera/settings/WhiteBalanceSetting;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    if-ne v0, v1, :cond_7

    .line 337
    const/4 v0, 0x0

    .line 336
    :goto_2
    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setWb_mode(I)V

    .line 340
    if-eqz p6, :cond_8

    const-string v0, "z"

    :goto_3
    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setSoftware_suffix(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v7, p6}, Lcom/google/googlex/gcam/ShotParams;->setZsl(Z)V

    .line 343
    if-eqz p6, :cond_a

    .line 345
    const/4 v0, -0x1

    if-lt p7, v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    const-string v1, "Incorrect base frame hint."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 346
    invoke-virtual {v7, p7}, Lcom/google/googlex/gcam/ShotParams;->setZsl_base_frame_index_hint(I)V

    .line 356
    :goto_5
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 357
    invoke-static {p5, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getTotalExposureTime(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)F

    move-result v0

    .line 358
    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setPrevious_viewfinder_tet(F)V

    .line 359
    invoke-virtual {v7}, Lcom/google/googlex/gcam/ShotParams;->getAe()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->setTarget_width(I)V

    .line 361
    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->setTarget_height(I)V

    .line 362
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/ShotParams;->setAe(Lcom/google/googlex/gcam/AeShotParams;)V

    .line 363
    sget-object v1, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "takePicture - Using captured WB from viewfinder, TET = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-nez p4, :cond_0

    .line 366
    invoke-virtual {v7}, Lcom/google/googlex/gcam/ShotParams;->getAe()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 367
    invoke-interface {p5, v1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 368
    invoke-interface {p5, v2}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v3, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    iget-object v4, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 371
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->getMetadataScaleFactor()F

    move-result v5

    .line 365
    invoke-static/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->updateAeShotParams(Lcom/google/googlex/gcam/AeShotParams;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/MeteringRectangle;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCharacteristics;F)V

    .line 374
    :cond_0
    const/4 v5, 0x0

    .line 375
    sget-boolean v0, Lcom/android/camera/hdrplus/GcamUtils;->DEBUG_ANY:Z

    if-eqz v0, :cond_1

    .line 376
    new-instance v5, Lcom/google/googlex/gcam/ImageSaverParams;

    invoke-direct {v5}, Lcom/google/googlex/gcam/ImageSaverParams;-><init>()V

    .line 382
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSaveRoot:Ljava/io/File;

    const-string v1, "gcam"

    .line 383
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/session/StackableSession;->getStartTimeMillis()J

    move-result-wide v2

    .line 382
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/hdrplus/GcamUtils;->makeDebugDir(Ljava/io/File;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSavePath:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSavePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/ImageSaverParams;->setDest_folder(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/ImageSaverParams;->setSave_as_jpg_override(Z)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    .line 393
    invoke-virtual {v1}, Lcom/android/camera/hdrplus/HdrPlusState;->getNextBurstId()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->postviewParams:Lcom/google/googlex/gcam/PostviewParams;

    move v1, p1

    move-object v3, v7

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/google/googlex/gcam/Gcam;->StartShotCapture(IILcom/google/googlex/gcam/ShotParams;Lcom/google/googlex/gcam/PostviewParams;Lcom/google/googlex/gcam/ImageSaverParams;)Lcom/google/googlex/gcam/IShot;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_b

    .line 395
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusState;->getAndIncrementNextBurstId()I

    move-result v2

    .line 398
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcamDngImageWriter:Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    .line 399
    invoke-direct {p0, v2, p2, v6, v0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->registerShot$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQ99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UP3ECSNKEOR1DL26SPQ9DLGMEPANE9KN8PBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFADGMCPA3DHNN6PB1C9M6AEO_(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;ILcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    .line 400
    new-instance v0, Lcom/android/camera/hdrplus/HdrPlusShot;

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/android/camera/hdrplus/HdrPlusShot;-><init>(ILcom/android/camera/hdrplus/HdrPlusSessionImpl;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/googlex/gcam/IShot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_6
    monitor-exit p0

    return-object v0

    .line 2133
    :cond_2
    :try_start_1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2134
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v4}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2136
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    .line 2137
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_0

    .line 2139
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 2140
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v3, v0}, Lcom/android/camera/util/ImageRotationCalculator;->getImageRotation(IIZ)I

    move-result v0

    move v6, v0

    goto/16 :goto_0

    .line 2139
    :cond_5
    const/4 v0, 0x0

    goto :goto_7

    .line 332
    :cond_6
    sget-object p3, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    goto/16 :goto_1

    .line 337
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 340
    :cond_8
    const-string v0, "n"

    goto/16 :goto_3

    .line 345
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 350
    :cond_a
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 351
    invoke-static {p5, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->getAwbInfoCaptured(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v0

    .line 352
    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setForce_wb(Lcom/google/googlex/gcam/AwbInfo;)V

    .line 353
    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/ShotParams;->setPrevious_viewfinder_wb(Lcom/google/googlex/gcam/AwbInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 402
    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private final wrapToGcamRawWriteView(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/googlex/gcam/RawWriteView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    sget-wide v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->kInvalidImageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v1}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    .line 592
    :cond_0
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/hdrplus/HdrPlusImageConverter;->isCompatibleRawFormat(I)Z

    move-result v0

    .line 593
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Incompatible Raw image format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 594
    invoke-static {p1}, Lcom/android/camera/hdrplus/HdrPlusImageConverter;->wrapRawWriteView(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v1, Lcom/android/camera/hdrplus/HdrPlusState;->onFrameRelease:Lcom/android/camera/hdrplus/HdrPlusInFlightImages;

    invoke-virtual {v1, p1}, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->put(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)J

    move-result-wide v2

    .line 596
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final abortShotCapture(Lcom/android/camera/hdrplus/HdrPlusShot;)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/Gcam;->AbortShotCapture(Lcom/google/googlex/gcam/IShot;)Z

    .line 575
    return-void
.end method

.method final abortShotProcessing(I)V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/Gcam;->AbortShotProcessing(I)Z

    .line 579
    return-void
.end method

.method public final addMeteringFrame(Lcom/android/camera/hdrplus/HdrPlusShot;ILcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->checkCameraLifetimeOpen()V

    .line 431
    new-instance v2, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    .line 432
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusState;->getNextBurstId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1, p2}, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;-><init>(III)V

    .line 434
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSavePath:Ljava/lang/String;

    sget-boolean v4, Lcom/android/camera/hdrplus/GcamUtils;->DEBUG_SAVE_HAL3_METADATA:Z

    .line 441
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->getMetadataScaleFactor()F

    move-result v5

    move-object v0, p3

    .line 435
    invoke-static/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToGcamFrameMetadata(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;Ljava/lang/String;ZF)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    .line 443
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 444
    invoke-static {p3, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToSpatialGainMap(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v5

    .line 446
    invoke-direct {p0, p4}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->wrapToGcamRawWriteView(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Landroid/util/Pair;

    move-result-object v4

    .line 448
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/gcam/RawWriteView;

    .line 448
    invoke-virtual/range {v0 .. v5}, Lcom/google/googlex/gcam/IShot;->AddMeteringFrame(Lcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/SpatialGainMap;)Z

    .line 453
    return-void
.end method

.method public final addPayloadFrame(Lcom/android/camera/hdrplus/HdrPlusShot;ILcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 6

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Shot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid. Closing raw input image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-interface {p4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    new-instance v2, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    .line 496
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusState;->getNextBurstId()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {v2, v0, v1, p2}, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;-><init>(III)V

    .line 498
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->metadataSavePath:Ljava/lang/String;

    sget-boolean v4, Lcom/android/camera/hdrplus/GcamUtils;->DEBUG_SAVE_HAL3_METADATA:Z

    .line 505
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->getMetadataScaleFactor()F

    move-result v5

    move-object v0, p3

    .line 499
    invoke-static/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToGcamFrameMetadata(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;Ljava/lang/String;ZF)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    .line 508
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 509
    invoke-static {p3, v0}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToSpatialGainMap(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v5

    .line 510
    if-nez v5, :cond_2

    .line 511
    new-instance v5, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-direct {v5}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    .line 514
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->wrapToGcamRawWriteView(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Landroid/util/Pair;

    move-result-object v4

    .line 516
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 518
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/gcam/RawWriteView;

    .line 516
    invoke-virtual/range {v0 .. v5}, Lcom/google/googlex/gcam/IShot;->AddPayloadFrame(Lcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/SpatialGainMap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x67

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "addPayloadFrame for shot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. Aborting the shot and closing raw input image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V

    .line 526
    invoke-interface {p4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    goto :goto_0
.end method

.method public final addViewfinderFrame(IZLcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 10

    .prologue
    .line 246
    const/4 v1, 0x1

    .line 251
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->getMetadataScaleFactor()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->payloadPhotoSize:Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v8, v0, Lcom/android/camera/hdrplus/HdrPlusState;->onFrameRelease:Lcom/android/camera/hdrplus/HdrPlusInFlightImages;

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    .line 247
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->convertToHdrPlusViewfinderFrame(ZLcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;FLcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusInFlightImages;)Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    iget-object v4, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->metadata:Lcom/google/googlex/gcam/FrameMetadata;

    iget-object v5, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->aeShotParams:Lcom/google/googlex/gcam/AeShotParams;

    iget-wide v6, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->rawId:J

    iget-object v8, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->raw:Lcom/google/googlex/gcam/RawWriteView;

    iget-object v9, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->sgm:Lcom/google/googlex/gcam/SpatialGainMap;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/google/googlex/gcam/Gcam;->AddViewfinderFrame(IZLcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/SpatialGainMap;)V

    .line 266
    :cond_0
    return-void
.end method

.method public final beginMeteringFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/gcam/IShot;->GetMeteringBurstSpec()Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/google/googlex/gcam/BurstSpec;->getFrame_requests()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameRequestVector;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 410
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Gcam::GetMeteringBurstSpec failed."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "libgcam::GetMeteringBurstSpec() failed."

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/IShot;->BeginMeteringFrames(Lcom/google/googlex/gcam/BurstSpec;)V

    .line 414
    return-object v0
.end method

.method public final beginPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/BurstSpec;)V
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlex/gcam/IShot;->BeginPayloadFrames(Lcom/google/googlex/gcam/BurstSpec;)V

    .line 471
    return-void
.end method

.method public final buildPayloadBurstSpec(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlex/gcam/IShot;->BuildPayloadBurstSpec(Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v0

    return-object v0
.end method

.method public final computeAeResults$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTLKJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQKDTQ62R23C5O78TBICL96ASRLDHQ50SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQ9DLGMEPAGE9NNGU9R55666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7C______(Lcom/android/camera/hdrplus/HdrPlusShot;ZLcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/googlex/gcam/AeResults;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->checkCameraLifetimeOpen()V

    .line 217
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->getMetadataScaleFactor()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->payloadPhotoSize:Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->desiredPhotoSize:Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v8, v0, Lcom/android/camera/hdrplus/HdrPlusState;->onFrameRelease:Lcom/android/camera/hdrplus/HdrPlusInFlightImages;

    move-object v0, p0

    move-object v2, p4

    move-object v3, p3

    .line 218
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->convertToHdrPlusViewfinderFrame(ZLcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;FLcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusInFlightImages;)Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->metadata:Lcom/google/googlex/gcam/FrameMetadata;

    iget-object v4, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->raw:Lcom/google/googlex/gcam/RawWriteView;

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderFrame;->sgm:Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/googlex/gcam/IShot;->ComputeAeResults(ZLcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/SpatialGainMap;)Lcom/google/googlex/gcam/AeResults;

    move-result-object v0

    return-object v0
.end method

.method public final endMeteringFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 6

    .prologue
    .line 457
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "endMeteringFrames"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/gcam/IShot;->EndMeteringFrames()Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/gcam/BurstSpec;->getFrame_requests()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameRequestVector;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 462
    :cond_0
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Gcam did not generate a payload burst spec."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    .line 465
    :cond_1
    return-object v0
.end method

.method public final endPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 532
    .line 533
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->locationProvider:Lcom/android/camera/location/LocationProvider;

    invoke-interface {v0}, Lcom/android/camera/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_1

    .line 535
    new-instance v3, Lcom/google/googlex/gcam/LocationData;

    invoke-direct {v3}, Lcom/google/googlex/gcam/LocationData;-><init>()V

    .line 536
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/gcam/LocationData;->setAltitude(D)V

    .line 537
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/gcam/LocationData;->setDegree_of_precision(D)V

    .line 538
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/gcam/LocationData;->setLatitude(D)V

    .line 539
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/gcam/LocationData;->setLongitude(D)V

    .line 540
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/gcam/LocationData;->setTimestamp_unix(J)V

    .line 541
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/gcam/LocationData;->setProcessing_method(Ljava/lang/String;)V

    .line 543
    new-instance v0, Lcom/google/googlex/gcam/ClientExifMetadata;

    invoke-direct {v0}, Lcom/google/googlex/gcam/ClientExifMetadata;-><init>()V

    .line 544
    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/ClientExifMetadata;->setLocation(Lcom/google/googlex/gcam/LocationData;)V

    .line 548
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v1}, Lcom/google/googlex/gcam/IShot;->EndPayloadFrames(Lcom/google/googlex/gcam/ClientExifMetadata;Lcom/google/googlex/gcam/StringVector;Lcom/google/googlex/gcam/StringVector;)Z

    move-result v1

    .line 550
    if-nez v1, :cond_0

    .line 551
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "EndPayloadFrames() failed."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 570
    :goto_1
    return v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v3, v0, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/gcam/IShot;->burst_id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/InFlightShotParameters;

    .line 562
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    .line 566
    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v3

    const v4, 0x7f0a01c4

    new-array v2, v2, [Ljava/lang/Object;

    .line 567
    invoke-static {v4, v2}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->updateProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 568
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->updateProgress(F)V

    move v0, v1

    .line 570
    goto :goto_1

    .line 562
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized endShotCapture(Lcom/android/camera/hdrplus/HdrPlusShot;)V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {p1}, Lcom/android/camera/hdrplus/HdrPlusShot;->getGcamShot()Lcom/google/googlex/gcam/IShot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/Gcam;->EndShotCapture(Lcom/google/googlex/gcam/IShot;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final flushViewfinder(I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/Gcam;->FlushViewfinder(I)V

    .line 238
    return-void
.end method

.method public final getInitParams()Lcom/google/googlex/gcam/InitParams;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->gcam:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->GetInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestAeResultsObservable()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->hdrPlus:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusState;->latestAeResults:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final declared-synchronized startShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTG____(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/android/camera/hdrplus/HdrPlusShot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 275
    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->startShotCaptureInternal$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7DD4IAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR8CHP70R3LECNKGP3IA1M7ASQJD1NN8EO_(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;ZI)Lcom/android/camera/hdrplus/HdrPlusShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startZslShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7D4IIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUQ34E9O6OTBJ5T468SIGDHQN6KR8DTQ3M___(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;I)Lcom/android/camera/hdrplus/HdrPlusShot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->startShotCaptureInternal$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7DD4IAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR8CHP70R3LECNKGP3IA1M7ASQJD1NN8EO_(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;ZI)Lcom/android/camera/hdrplus/HdrPlusShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
