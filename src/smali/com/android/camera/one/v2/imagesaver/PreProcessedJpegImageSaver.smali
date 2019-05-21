.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;
    }
.end annotation


# instance fields
.field private final burstSize:I

.field private final exifCreator:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

.field private final imageSelector:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;

.field private final intervalClock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private final jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field

.field private final log:Lcom/android/camera/debug/Logger;

.field private final reprocessingParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final thumbnailer:Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/util/time/NanosecondClock;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;Lcom/android/camera/util/ImageRotationCalculator;Ljava/util/Set;Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/google/android/apps/camera/util/time/NanosecondClock;",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;",
            "Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->intervalClock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 79
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 80
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->reprocessingParameters:Ljava/util/Set;

    .line 81
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->imageSelector:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;

    .line 82
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 83
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->exifCreator:Ljavax/inject/Provider;

    .line 84
    iput-object p8, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->thumbnailer:Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->burstSize:I

    .line 86
    const-string v0, "FsnRprcssngIS"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->log:Lcom/android/camera/debug/Logger;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/util/ImageRotationCalculator;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->thumbnailer:Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->burstSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->reprocessingParameters:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH570PB795MM2PR5ADGNCPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRLEHKMOBRKD5MMABQ9DPQ6ASJMC5M46R3FCDLJM___(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/google/android/apps/camera/util/time/NanosecondClock;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->intervalClock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    return-object v0
.end method

.method static synthetic access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH570PB795MM2PR5ADGNCPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBJC5R6ASHF85PNIRJ3ADKMSPRCCL4MQOB7CL9M2TJ5E8TG____(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    return-object v0
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->imageSelector:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->exifCreator:Ljavax/inject/Provider;

    .line 95
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/exif/ExifInterface;

    .line 96
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v4

    .line 97
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;Lcom/android/camera/exif/ExifInterface;Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;Lcom/android/camera/stats/CaptureSessionStatsCollector;B)V

    .line 93
    return-object v0
.end method

.method public final getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->forReprocessingPipelines()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 7

    .prologue
    .line 103
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->imageSelector:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->exifCreator:Ljavax/inject/Provider;

    .line 105
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/exif/ExifInterface;

    .line 106
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;Lcom/android/camera/exif/ExifInterface;Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;Lcom/android/camera/stats/CaptureSessionStatsCollector;B)V

    .line 103
    return-object v0
.end method
