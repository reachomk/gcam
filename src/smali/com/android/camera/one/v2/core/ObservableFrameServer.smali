.class final Lcom/android/camera/one/v2/core/ObservableFrameServer;
.super Ljava/lang/Object;
.source "ObservableFrameServer.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;
    }
.end annotation


# instance fields
.field private final availability:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final delegate:Lcom/android/camera/one/v2/core/FrameServer;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->delegate:Lcom/android/camera/one/v2/core/FrameServer;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->availability:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/core/ObservableFrameServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/core/ObservableFrameServer;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->availability:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method


# virtual methods
.method public final createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 67
    iget-object v3, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->availability:Lcom/google/android/apps/camera/async/ConcurrentState;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->delegate:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

    move-result-object v0

    .line 72
    new-instance v3, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;-><init>(Lcom/android/camera/one/v2/core/ObservableFrameServer;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 76
    iget-object v3, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 77
    iget-object v4, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->availability:Lcom/google/android/apps/camera/async/ConcurrentState;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 78
    throw v0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1
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
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->availability:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method
