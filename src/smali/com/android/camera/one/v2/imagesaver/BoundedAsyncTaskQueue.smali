.class public final Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;
.super Ljava/lang/Object;
.source "BoundedAsyncTaskQueue.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private availableTaskSlots:I

.field private final availableTaskSlotsObservable:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isClosed:Z

.field private final lock:Ljava/lang/Object;

.field private final tasksInFlight:Lcom/android/camera/burst/TicketCounter;

.field private final waitingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->lock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->isClosed:Z

    .line 58
    iput p1, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->waitingTasks:Ljava/util/Queue;

    .line 61
    new-instance v0, Lcom/android/camera/burst/TicketCounter;

    invoke-direct {v0}, Lcom/android/camera/burst/TicketCounter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->tasksInFlight:Lcom/android/camera/burst/TicketCounter;

    .line 63
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget v1, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlotsObservable:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 64
    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->executeNextTaskOrFreeSlot()V

    return-void
.end method

.method private final executeNextTaskOrFreeSlot()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->waitingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;

    .line 137
    if-nez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlotsObservable:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget v2, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 143
    monitor-exit v1

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->access$100(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;)Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;

    move-result-object v1

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ2DTQMSP35CH0N6UBECDA62SRBA5QMATB54HBM2QBKD5N6EL31EDLJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;)Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v2

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->access$300(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->executeTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQKC5PMMKBLCLQMA92KC5PMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1FADIN8T31C9M6AHJLEHQN4P9R55B0____(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final executeTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQKC5PMMKBLCLQMA92KC5PMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1FADIN8T31C9M6AHJLEHQN4P9R55B0____(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task",
            "<+TT;>;",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;->execute()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;-><init>(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;Lcom/google/common/util/concurrent/SettableFuture;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 172
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->isClosed:Z

    .line 131
    return-void
.end method

.method public final submit(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task",
            "<+TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->isClosed:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;->neverExecute()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->tasksInFlight:Lcom/android/camera/burst/TicketCounter;

    invoke-virtual {v1}, Lcom/android/camera/burst/TicketCounter;->acquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget v3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    if-lez v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->waitingTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 112
    iget v3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    .line 113
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlotsObservable:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget v4, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->availableTaskSlots:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 120
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->executeTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQKC5PMMKBLCLQMA92KC5PMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1FADIN8T31C9M6AHJLEHQN4P9R55B0____(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->waitingTasks:Ljava/util/Queue;

    invoke-static {p1, v1, v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQKC5PMMKBLCLQMA92KC5PMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1FADIN8T31C9M6AHJLEHQN4P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ2DTQMSP35CH0N6UBECDA62SRBA5QMATB54HBM2QBKD5N6EL31EDLJM___(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v2

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
