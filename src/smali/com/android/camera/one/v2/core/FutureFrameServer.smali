.class final Lcom/android/camera/one/v2/core/FutureFrameServer;
.super Ljava/lang/Object;
.source "FutureFrameServer.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer;


# instance fields
.field private final availability:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final futureFrameServer:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FutureFrameServer;->futureFrameServer:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 33
    invoke-static {p1}, Lcom/google/android/apps/camera/async/Observables;->ofSuccess(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 35
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 36
    new-instance v2, Lcom/android/camera/one/v2/core/FutureFrameServer$1;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/core/FutureFrameServer$1;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V

    invoke-static {p1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 47
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/apps/camera/async/Observable;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 48
    invoke-static {v1}, Lcom/google/android/apps/camera/async/Observables;->dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/android/apps/camera/async/Observables;->and([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/FutureFrameServer;->availability:Lcom/google/android/apps/camera/async/Observable;

    .line 49
    return-void
.end method


# virtual methods
.method public final createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FutureFrameServer;->futureFrameServer:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 83
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FutureFrameServer;->availability:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method
