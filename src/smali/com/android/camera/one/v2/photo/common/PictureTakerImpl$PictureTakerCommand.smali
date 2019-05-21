.class final Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;
.super Ljava/lang/Object;
.source "PictureTakerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/command/CameraCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PictureTakerCommand"
.end annotation


# instance fields
.field private final lock$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ58DNMQRB1DPI28IBDC5JMAGR1E1Q7ASJ59HNM6QPR:Lcom/android/camera/audio/SingleUseSoundPlayer;

.field private final parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->lock$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ58DNMQRB1DPI28IBDC5JMAGR1E1Q7ASJ59HNM6QPR:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 68
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;-><init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->access$100(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->lock$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ58DNMQRB1DPI28IBDC5JMAGR1E1Q7ASJ59HNM6QPR:Lcom/android/camera/audio/SingleUseSoundPlayer;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->lock$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ58DNMQRB1DPI28IBDC5JMAGR1E1Q7ASJ59HNM6QPR:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->lock$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ58DNMQRB1DPI28IBDC5JMAGR1E1Q7ASJ59HNM6QPR:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 80
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->close()V

    .line 81
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;->cancelProgress()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "PictureTakerCommand"

    return-object v0
.end method
