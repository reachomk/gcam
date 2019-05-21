.class final Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;
.super Ljava/lang/Object;
.source "JpegImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;,
        Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final crop:Landroid/graphics/Rect;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "JpegImgBESaver"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 173
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 174
    const-string v0, "BckndJpegEx"

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Futures2;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->executor:Ljava/util/concurrent/Executor;

    .line 175
    invoke-virtual {p3}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->crop:Landroid/graphics/Rect;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->crop:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 10

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/util/ImageRotationCalculator;->getImageRotation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    .line 207
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v1

    .line 209
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v2

    .line 214
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/googlehelp/internal/common/zzd;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;-><init>(Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;B)V

    .line 215
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;

    new-instance v4, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-object v5, p0

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    invoke-direct {v1, v4}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;)V

    .line 215
    return-object v1
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
    .line 230
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
    .line 235
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->forHardwareJpegPipelines()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v0

    return-object v0
.end method
