.class public final Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;
.super Ljava/lang/Object;
.source "LuckyShotReprocessingImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;
    }
.end annotation


# instance fields
.field private final crop:Landroid/graphics/Rect;

.field private final delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, "LSRprcssngIS"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->log:Lcom/android/camera/debug/Logger;

    .line 145
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 146
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 148
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 149
    const-string v0, "LuckyShotEx"

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Futures2;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->executor:Ljava/util/concurrent/Executor;

    .line 150
    invoke-virtual {p4}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->crop:Landroid/graphics/Rect;

    .line 151
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->crop:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v3

    .line 158
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;)V

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
    .line 168
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
    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 6

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v3

    .line 164
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;)V

    return-object v0
.end method
