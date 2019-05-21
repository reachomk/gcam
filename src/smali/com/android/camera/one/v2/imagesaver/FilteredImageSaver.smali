.class final Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;
.super Ljava/lang/Object;
.source "FilteredImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final supportedFullSizeImageFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 66
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->supportedFullSizeImageFormats:Ljava/util/Set;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->supportedFullSizeImageFormats:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V

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
    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v1

    .line 80
    if-nez v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V

    goto :goto_0
.end method
