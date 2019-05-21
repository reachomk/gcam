.class public Lcom/android/camera/one/v2/imagesaver/ImageSaverModules$JpegImageSaverModule;
.super Ljava/lang/Object;
.source "ImageSaverModules.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideAsyncReprocessableImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQJDTJ78TR1E9IKKS35CT4MQOB7CL9M2TJ5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5EDGNCPBI5T0N6UBECD9MIRJ7DHIKIRB1CTIL6OBMCLP3M___(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ")",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation

    .prologue
    .line 3107
    return-object p0
.end method

.method public static provideAsyncReprocessableImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BRICLO74RR3CLPN6QBECSNL4PBGE9NM6PBJEDKMSPQ9DLGMEPAJC5R6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UKRFCPQ7EOBICL570PB795MM2PR5ADGNCPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBJC5R6ASHF85PNIRJ3ADKMSPRCCL4MQOB7CL9M2TJ5E8TG____(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ")",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation

    .prologue
    .line 2175
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V

    invoke-direct {v0, v1, p1}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V

    return-object v0
.end method

.method public static provideImageSaver(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;
    .locals 7

    .prologue
    .line 1202
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V

    .line 1210
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;

    const/16 v3, 0x23

    .line 1211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Ljava/util/Set;)V

    invoke-direct {v1, v2, p5}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;)V

    .line 1210
    return-object v1
.end method

.method public static provideImageSaver(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;
    .locals 2

    .prologue
    .line 3086
    .line 3092
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;

    const/16 v1, 0x23

    .line 3093
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Ljava/util/Set;)V

    .line 3092
    return-object v0
.end method

.method public static provideImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6AOJLCSNKORR7CTIN4926C5HN8RRIF4TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2USR5DHIM6T39DTN2UIBDC5JMAKR5DHIM6T3FE8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNKIRB1CTIL4RRKC5Q6IRRE8DGMOORLDHGN8RRI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BRKD1QMQOJEC5KMOBQKD1QMQOJEC5KMOPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BRKELN6IRJ75TA7ARJ9DPJK8OBKC51MUR3CCLHN8RRI7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTBKD5M2UT39DLIIUIBEEHIN4TJ1DH1MORR3DCTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR59LGMSOB7CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UPJCC5JN6BQ6DHGMESPR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH4MQOB7CL9M2TJ5E8TG____(Lcom/android/camera/debug/Logger$Factory;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;Lcom/google/android/apps/camera/util/time/NanosecondClock;Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            "Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            "Lcom/google/android/apps/camera/util/time/NanosecondClock;",
            "Lcom/android/camera/advice/AdviceManager;",
            "Lcom/android/camera/util/flags/Flags;",
            ")",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;"
        }
    .end annotation

    .prologue
    .line 2147
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2155
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2154
    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v8

    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/util/time/NanosecondClock;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;Lcom/android/camera/util/ImageRotationCalculator;Ljava/util/Set;Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;I)V

    .line 2163
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;

    const/16 v3, 0x23

    .line 2164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Ljava/util/Set;)V

    .line 2165
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;

    move-object/from16 v0, p6

    invoke-direct {v1, v2, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;)V

    return-object v1
.end method


# virtual methods
.method public createPersistentInputSurface()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
