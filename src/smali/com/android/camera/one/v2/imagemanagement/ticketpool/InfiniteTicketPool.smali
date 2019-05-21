.class public final Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;
.super Ljava/lang/Object;
.source "InfiniteTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;
    }
.end annotation


# instance fields
.field private final openTickets:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;->openTickets:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;->openTickets:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v2, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    move v0, v1

    .line 39
    :goto_0
    if-ge v0, p1, :cond_0

    .line 40
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;B)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1245
    :cond_0
    invoke-static {}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->create()Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    move-result-object v0

    .line 1246
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z

    .line 42
    return-object v0
.end method

.method public final beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$1;-><init>()V

    return-object v0
.end method

.method public final getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;B)V

    return-object v0
.end method
