.class public final Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;
.super Ljava/lang/Object;
.source "ConcurrentBufferQueue.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/BufferQueue;
.implements Lcom/google/android/apps/camera/async/BufferQueueController;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;,
        Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/BufferQueue",
        "<TT;>;",
        "Lcom/google/android/apps/camera/async/BufferQueueController",
        "<TT;>;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final unusedElementProcessor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/google/android/apps/camera/async/BatchedUiExecutor$1;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/BatchedUiExecutor$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;-><init>(Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->unusedElementProcessor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->lock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    monitor-exit v2

    .line 123
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 1183
    new-instance v4, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;-><init>(Ljava/lang/Object;ZB)V

    .line 114
    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :cond_3
    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;

    .line 119
    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v4

    if-nez v4, :cond_3

    .line 120
    iget-object v4, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->unusedElementProcessor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final getNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;

    .line 3140
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3143
    iget-object v1, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 3144
    new-instance v0, Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;-><init>()V

    throw v0

    .line 3146
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final tryGetNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;

    .line 160
    if-nez v0, :cond_0

    move-object v0, v1

    .line 169
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 167
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final update(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 2179
    new-instance v3, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;-><init>(Ljava/lang/Object;ZB)V

    .line 131
    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->unusedElementProcessor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V

    .line 137
    :cond_1
    return-void

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
