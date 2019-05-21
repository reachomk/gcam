.class public final Lcom/google/android/apps/camera/async/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final delayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

.field private final lock:Ljava/lang/Object;

.field private final onTimeout:Ljava/lang/Runnable;

.field private timeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Timeout;->delayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->lock:Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/google/android/apps/camera/async/Timeout$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/Timeout$1;-><init>(Lcom/google/android/apps/camera/async/Timeout;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->onTimeout:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/async/Timeout;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/Timeout;->onTimeout()V

    return-void
.end method

.method private final onTimeout()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Timeout;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 89
    monitor-exit v1

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    .line 92
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Timeout;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->delayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 62
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Timeout;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->delayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->close()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final start(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Timeout;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Timeout;->timeout:Ljava/lang/Runnable;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout;->delayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    iget-object v2, p0, Lcom/google/android/apps/camera/async/Timeout;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 41
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
