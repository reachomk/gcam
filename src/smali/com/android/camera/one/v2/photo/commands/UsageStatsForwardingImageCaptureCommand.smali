.class public final Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;
.super Ljava/lang/Object;
.source "UsageStatsForwardingImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# instance fields
.field private captureCommand:I

.field private delegateCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private isFlash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "UsgStatsImgCapCmd"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->delegateCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 26
    iput p2, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->captureCommand:I

    .line 27
    iput-boolean p3, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->isFlash:Z

    .line 28
    return-void
.end method


# virtual methods
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
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->delegateCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->delegateCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->isFlash:Z

    invoke-interface {v0, v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setIsFlash(Z)V

    .line 34
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->captureCommand:I

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->selectCaptureCommand(I)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;->delegateCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V

    .line 37
    return-void
.end method
