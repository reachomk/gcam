.class public final Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;
.super Ljava/lang/Object;
.source "NexusTuningImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;,
        Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    .line 106
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 107
    return-void
.end method

.method private final wrapSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH4MQOB7CL9M2TJ5E8I4IRB1CTIL6OBMCLP56PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5EDGNCPBI5T874PAGE9NM6PBJEDIM8IBDC5JMAKR1EPIN4929DLGMEPAJC5R6ASIJCLPN6QBFDOTG____(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;-><init>(B)V

    .line 186
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 187
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    invoke-interface {v2, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;->markCaptureStart(Ljava/lang/String;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;

    move-result-object v1

    .line 189
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;

    .line 190
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->getDoneFuture()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;)V

    .line 189
    return-object v2
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->wrapSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH4MQOB7CL9M2TJ5E8I4IRB1CTIL6OBMCLP56PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5EDGNCPBI5T874PAGE9NM6PBJEDIM8IBDC5JMAKR1EPIN4929DLGMEPAJC5R6ASIJCLPN6QBFDOTG____(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v0

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
    .line 181
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;-><init>(B)V

    .line 171
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;->wrapSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH4MQOB7CL9M2TJ5E8I4IRB1CTIL6OBMCLP56PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5EDGNCPBI5T874PAGE9NM6PBJEDIM8IBDC5JMAKR1EPIN4929DLGMEPAJC5R6ASIJCLPN6QBFDOTG____(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v0

    goto :goto_0
.end method
