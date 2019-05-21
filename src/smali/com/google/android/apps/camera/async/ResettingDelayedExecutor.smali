.class public final Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;
.super Ljava/lang/Object;
.source "ResettingDelayedExecutor.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private closed:Z

.field private final delay:J

.field private final delayUnit:Ljava/util/concurrent/TimeUnit;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private latestRunRequest:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    iput-wide p2, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->delay:J

    .line 27
    iput-object p4, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->delayUnit:Ljava/util/concurrent/TimeUnit;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->lock:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->closed:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->closed:Z

    if-eqz v0, :cond_0

    .line 59
    monitor-exit v1

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->closed:Z

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 63
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->closed:Z

    if-eqz v0, :cond_0

    .line 48
    monitor-exit v1

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v2, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->delay:J

    iget-object v4, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->delayUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->latestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    .line 52
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final reset()V
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->latestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->latestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 41
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
