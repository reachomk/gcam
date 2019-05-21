.class public final Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;
.super Ljava/lang/Object;
.source "FiniteTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;,
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;
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

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private final maxCapacity:I

.field private tickets:I

.field private final transactionTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/TransactionalObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final waiters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->maxCapacity:I

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    .line 109
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->closed:Z

    .line 112
    new-instance v0, Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/SettableObservable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    .line 113
    new-instance v0, Lcom/google/android/apps/camera/async/TransactionalObservable;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/TransactionalObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->transactionTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->releaseTicket()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->computeAvailableTicketCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Lcom/google/android/apps/camera/async/SettableObservable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tryProcessNextWaiter()Z

    move-result v0

    return v0
.end method

.method private final computeAvailableTicketCount()I
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    goto :goto_0
.end method

.method private final releaseTicket()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->computeAvailableTicketCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tryProcessNextWaiter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final tryProcessNextWaiter()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v2, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    .line 134
    if-nez v0, :cond_0

    .line 135
    monitor-exit v3

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 137
    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->closed:Z

    if-eqz v4, :cond_1

    .line 138
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    invoke-static {v0, v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->access$602(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 139
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->computeAvailableTicketCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 153
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 156
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->publishResult()V

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->getTicketsRequested()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 142
    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->getTicketsRequested()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    .line 144
    new-instance v4, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v4}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    move v2, v1

    .line 145
    :goto_2
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->getTicketsRequested()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 146
    new-instance v5, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;

    invoke-direct {v5, p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    :cond_2
    invoke-static {v0, v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->access$702(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Lcom/google/android/apps/camera/async/CloseableList;)Lcom/google/android/apps/camera/async/CloseableList;

    .line 149
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 160
    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 3
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
    .line 167
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->maxCapacity:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 168
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/camera/async/CloseableFutures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;IB)V

    .line 174
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tryProcessNextWaiter()Z

    .line 178
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->getPromise()Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    goto :goto_0

    .line 175
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
    .line 218
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->transactionTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/TransactionalObservable;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->closed:Z

    if-eqz v0, :cond_0

    .line 226
    monitor-exit v2

    .line 243
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->closed:Z

    .line 230
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    .line 231
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    invoke-static {v0, v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->access$602(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 235
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->computeAvailableTicketCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 236
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 239
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    .line 240
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->publishResult()V

    goto :goto_2

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    goto :goto_0
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
    .line 193
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->transactionTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    return-object v0
.end method

.method public final tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->closed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    if-lez v2, :cond_0

    .line 201
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->tickets:I

    .line 202
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->computeAvailableTicketCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 203
    const/4 v0, 0x1

    .line 205
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 208
    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)V

    .line 211
    :goto_0
    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
