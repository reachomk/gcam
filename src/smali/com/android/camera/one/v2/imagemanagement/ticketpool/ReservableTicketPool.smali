.class public final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;,
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;
    }
.end annotation


# instance fields
.field private final availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/SettableObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private final parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

.field private final parentTickets:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingTicketReservations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final transactionalTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/TransactionalObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final waiters:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    .line 178
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    .line 179
    iput v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    .line 180
    new-instance v0, Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/SettableObservable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    .line 181
    new-instance v0, Lcom/google/android/apps/camera/async/TransactionalObservable;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/TransactionalObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->transactionalTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->pendingTicketReservations:Ljava/util/Set;

    .line 183
    iput-boolean v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    .line 184
    return-void
.end method

.method private final abortWaitersOnCapacityDecrease()V
    .locals 6

    .prologue
    .line 481
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    .line 486
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->getTicketsRequested()I

    move-result v4

    iget v5, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    if-le v4, v5, :cond_0

    .line 487
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 490
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->removeAll(Ljava/util/Collection;)Z

    .line 491
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 492
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    .line 493
    invoke-static {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->access$1200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;)Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    move-result-object v1

    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 495
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->updateWithNewCapacity(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->pendingTicketReservations:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)I
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCurrentTicketCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Lcom/google/android/apps/camera/async/SettableObservable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->releaseWaitersOnTicketAvailability()V

    return-void
.end method

.method private final getCurrentTicketCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    goto :goto_0
.end method

.method private final releaseWaitersOnTicketAvailability()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v5, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 453
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    if-eqz v0, :cond_1

    .line 454
    monitor-exit v5

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {v0, v6}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->setResult(Lcom/google/android/apps/camera/async/CloseableList;)V

    .line 466
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    .line 460
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->getTicketsRequested()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-gt v1, v4, :cond_2

    .line 461
    new-instance v6, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v6}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    move v4, v3

    .line 462
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->getTicketsRequested()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-virtual {v6, v1}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCurrentTicketCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 473
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 474
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    .line 475
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->notifyCallbacks()V

    goto :goto_2

    .line 473
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    goto :goto_0
.end method

.method private final updateWithNewCapacity(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    if-eqz v0, :cond_1

    .line 437
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 438
    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 440
    :cond_0
    :try_start_1
    monitor-exit v1

    .line 448
    :goto_1
    return-void

    .line 443
    :cond_1
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    .line 444
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 445
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->releaseWaitersOnTicketAvailability()V

    goto :goto_1
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
    .line 200
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    if-le p1, v0, :cond_1

    .line 202
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/camera/async/CloseableFutures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    monitor-exit v1

    .line 227
    :goto_0
    return-object v0

    .line 205
    :cond_1
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;IB)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->getParentTickets()Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$1;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)V

    .line 209
    invoke-static {v0, v3}, Lcom/google/android/apps/camera/async/CloseableFutures;->transform(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v3

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->releaseWaitersOnTicketAvailability()V

    .line 227
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$2;

    invoke-direct {v0, p0, v3, v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$2;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;)V

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->transactionalTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/TransactionalObservable;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    if-eqz v0, :cond_0

    .line 405
    monitor-exit v1

    .line 431
    :goto_0
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    .line 409
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->pendingTicketReservations:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/CloseableList;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->pendingTicketReservations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 415
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 416
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 418
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/CloseableList;->addAll(Ljava/util/Collection;)Z

    .line 421
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 422
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 423
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 425
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->abortWaitersOnCapacityDecrease()V

    .line 427
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCurrentTicketCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 429
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 430
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 415
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 422
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 429
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
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
    .line 242
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->transactionalTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    return-object v0
.end method

.method public final getCapacity()I
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    monitor-exit v1

    return v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final releaseCapacity(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 370
    if-gtz p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 373
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 376
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    if-le p1, v0, :cond_1

    .line 377
    iget p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    .line 380
    :cond_1
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->capacity:I

    .line 383
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v2

    .line 384
    :goto_1
    if-ge v3, v5, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 387
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->abortWaitersOnCapacityDecrease()V

    move-object v0, v1

    .line 391
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 392
    invoke-interface {v1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_2

    .line 387
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 395
    :cond_3
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCurrentTicketCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 397
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    goto :goto_0

    .line 397
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final reserveCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    const/4 v1, 0x0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 280
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    .line 281
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 282
    :try_start_1
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    if-eqz v4, :cond_1

    .line 283
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->close()V

    .line 287
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    .line 289
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 306
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v5

    .line 289
    invoke-interface {v0, v4, v5}, Lcom/google/android/apps/camera/async/CloseableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 308
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 307
    :cond_0
    return-object v3

    .line 285
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->pendingTicketReservations:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 278
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 308
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public final tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->waiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 259
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 254
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCurrentTicketCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 259
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V

    move-object v0, v1

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final tryReserveCapacity(I)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    const/4 v3, 0x0

    move v1, v2

    .line 333
    :goto_0
    if-ge v1, p1, :cond_4

    .line 334
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v4

    .line 335
    if-nez v4, :cond_3

    .line 338
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 339
    invoke-interface {v1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v5, :cond_0

    if-eqz v1, :cond_9

    :try_start_2
    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_3
    throw v0

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    :cond_2
    move v0, v2

    .line 356
    :goto_4
    return v0

    .line 343
    :cond_3
    :try_start_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_4
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 347
    :try_start_4
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->closed:Z

    .line 348
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    if-nez v4, :cond_6

    .line 350
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->updateWithNewCapacity(Ljava/util/Collection;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 358
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 351
    :cond_5
    const/4 v0, 0x1

    goto :goto_4

    .line 348
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 358
    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 353
    :cond_6
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    :goto_5
    if-ge v4, v6, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 354
    invoke-interface {v1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    .line 358
    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    :cond_8
    move v0, v2

    .line 356
    goto :goto_4

    .line 358
    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_3
.end method
