.class public final Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;
.super Ljava/lang/Object;
.source "PictureTakerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final availability:Lcom/google/android/apps/camera/async/PollingObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/PollingObservable",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

.field private final command:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final commandsInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "PictureTakerImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 43
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->command:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 44
    sget-object v0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->TAG:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->log:Lcom/android/camera/debug/Logger;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->commandsInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Lcom/google/android/apps/camera/async/PollingObservable;

    new-instance v1, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$1;-><init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/PollingObservable;-><init>(Lcom/google/common/base/Supplier;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->availability:Lcom/google/android/apps/camera/async/PollingObservable;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->commandsInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->command:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;)Lcom/google/android/apps/camera/async/PollingObservable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->availability:Lcom/google/android/apps/camera/async/PollingObservable;

    return-object v0
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
    .line 127
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->availability:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->command:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->log:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->command:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Take picture was invoked, but the picture taker is not available! Command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->close()V

    .line 98
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;->cancelProgress()V

    .line 99
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 102
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->commandsInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 104
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->availability:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 106
    new-instance v1, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;-><init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 119
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    new-instance v3, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;

    invoke-direct {v3, p0, v1, p1, v4}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$PictureTakerCommand;-><init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;B)V

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0
.end method
