.class final Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;
.super Ljava/lang/Object;
.source "PictureTakerImpl.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;

.field private synthetic val$captureLock:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->val$captureLock:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 110
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->access$000(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;->access$200(Lcom/android/camera/one/v2/photo/common/PictureTakerImpl;)Lcom/google/android/apps/camera/async/PollingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 115
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerImpl$2;->val$captureLock:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
