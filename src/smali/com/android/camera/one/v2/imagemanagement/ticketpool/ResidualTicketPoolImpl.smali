.class public final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;
.super Ljava/lang/Object;
.source "ResidualTicketPoolImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;,
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;
    }
.end annotation


# instance fields
.field private final availableTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/TransactionalObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final lowPriorityHolders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final lowPriorityHoldersObservable:Lcom/google/android/apps/camera/async/SettableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/SettableObservable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private numTicketWaiters:I

.field private final parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    .line 95
    new-instance v0, Lcom/google/android/apps/camera/async/SettableObservable;

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/SettableObservable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHoldersObservable:Lcom/google/android/apps/camera/async/SettableObservable;

    .line 108
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHoldersObservable:Lcom/google/android/apps/camera/async/SettableObservable;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$1;

    invoke-direct {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$1;-><init>()V

    .line 110
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$2;

    invoke-direct {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$2;-><init>()V

    .line 124
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/google/android/apps/camera/async/TransactionalObservable;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 143
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->sum(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/TransactionalObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->availableTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->flushTicketsUntilAllWaitersReleased()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Lcom/google/android/apps/camera/async/SettableObservable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHoldersObservable:Lcom/google/android/apps/camera/async/SettableObservable;

    return-object v0
.end method

.method static synthetic access$410(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->numTicketWaiters:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->numTicketWaiters:I

    return v0
.end method

.method private final flushTicketsUntilAllWaitersReleased()V
    .locals 6

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->numTicketWaiters:I

    if-nez v0, :cond_1

    .line 249
    monitor-exit v1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 255
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 259
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;

    .line 260
    :goto_1
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;->flushTicket()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 262
    :try_start_2
    iget v5, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->numTicketWaiters:I

    if-nez v5, :cond_3

    .line 263
    monitor-exit v4

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 251
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 255
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 265
    :cond_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 6
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
    .line 148
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    const/4 v1, 0x0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 150
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 157
    :try_start_2
    iget v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->numTicketWaiters:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->numTicketWaiters:I

    .line 158
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$3;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$3;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)V

    .line 169
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    .line 160
    invoke-interface {v0, v3, v4}, Lcom/google/android/apps/camera/async/CloseableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 171
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->flushTicketsUntilAllWaitersReleased()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    :catch_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 174
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

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

.method public final addResidualTicketHolder(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHoldersObservable:Lcom/google/android/apps/camera/async/SettableObservable;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 231
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHoldersObservable:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 234
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;B)V

    .line 237
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;->getFlushableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/apps/camera/async/Observables;->addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    .line 238
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;->getFlushableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;->update$5166KOBMC4NMOOBECSNKIRJKCLJMASHR55B0____()V

    .line 240
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 241
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;B)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 243
    return-object v0

    :cond_0
    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->availableTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/TransactionalObservable;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    .line 219
    new-instance v2, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 220
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 222
    return-object v2
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
    .line 180
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->availableTicketCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    return-object v0
.end method

.method public final tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 196
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->lowPriorityHolders:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    move v3, v1

    :cond_1
    if-ge v3, v5, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;

    .line 199
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;->flushTicket()Z

    .line 200
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->parentPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    .line 205
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    :cond_2
    move-object v0, v1

    .line 202
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 190
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v2, :cond_6

    :try_start_6
    invoke-interface {v4}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    throw v0

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    :cond_5
    move-object v0, v2

    .line 206
    goto :goto_0

    .line 205
    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1
.end method
