.class final Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;
    }
.end annotation


# instance fields
.field private final crop:Landroid/graphics/Rect;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

.field private final tracerFactory:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;


# direct methods
.method constructor <init>(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 111
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 112
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->tracerFactory:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;

    .line 113
    invoke-virtual {p3}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->crop:Landroid/graphics/Rect;

    .line 114
    const-string v0, "BckndYuvEx"

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Futures2;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->executor:Ljava/util/concurrent/Executor;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->crop:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    return-object v0
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 7

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/util/ImageRotationCalculator;->getImageRotation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    .line 150
    new-instance v4, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;

    .line 152
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/googlehelp/internal/common/zzd;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    invoke-direct {v4, v0, v3, v1}, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;-><init>(Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;)V

    .line 155
    new-instance v6, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;

    new-instance v0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;

    .line 157
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->tracerFactory:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;

    sget-object v5, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->SW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 160
    invoke-virtual {v1, v5}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;->create(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;)Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;)V

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;)V

    .line 155
    return-object v6
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
    .line 171
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
    .line 176
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->forSoftwareJpegPipelines()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v0

    return-object v0
.end method
