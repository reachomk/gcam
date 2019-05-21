.class public final Lcom/google/android/apps/camera/async/KeepAlive;
.super Ljava/lang/Object;
.source "KeepAlive.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;,
        Lcom/google/android/apps/camera/async/KeepAlive$NoOp;
    }
.end annotation


# instance fields
.field private final closeOnRelease:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private final executeClose:Ljava/lang/Runnable;

.field private isClosed:Z

.field private keepAliveLocks:I

.field private final lock:Ljava/lang/Object;

.field private final timeout:Lcom/google/android/apps/camera/async/Timeout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/SafeCloseable;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/async/Timeout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->closeOnRelease:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->lock:Ljava/lang/Object;

    .line 51
    iput v1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    .line 53
    new-instance v0, Lcom/google/android/apps/camera/async/ExecutorListenerPair;

    new-instance v1, Lcom/google/android/apps/camera/async/KeepAlive$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/async/KeepAlive$1;-><init>(Lcom/google/android/apps/camera/async/KeepAlive;)V

    invoke-direct {v0, p2, v1}, Lcom/google/android/apps/camera/async/ExecutorListenerPair;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->executeClose:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/async/KeepAlive;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/async/KeepAlive;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/camera/async/KeepAlive;Z)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/async/KeepAlive;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/android/apps/camera/async/KeepAlive;)I
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/async/KeepAlive;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->closeOnRelease:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/camera/async/KeepAlive;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/KeepAlive;->closeIfReleased()V

    return-void
.end method

.method private final closeIfReleased()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 110
    const/4 v0, 0x0

    .line 111
    iget-object v2, p0, Lcom/google/android/apps/camera/async/KeepAlive;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    if-eqz v3, :cond_1

    .line 113
    monitor-exit v2

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v3, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    if-nez v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    if-eqz v3, :cond_3

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    iget-object v3, p0, Lcom/google/android/apps/camera/async/KeepAlive;->executeClose:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/async/Timeout;->start(Ljava/lang/Runnable;)V

    .line 124
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->closeOnRelease:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_0

    .line 121
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    move v0, v1

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final acquireLock()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/google/android/apps/camera/async/KeepAlive$NoOp;->NOOP:Lcom/google/android/apps/camera/async/SafeCloseable;

    monitor-exit v1

    .line 91
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->keepAliveLocks:I

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Timeout;->cancel()V

    .line 90
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;-><init>(Lcom/google/android/apps/camera/async/KeepAlive;B)V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/apps/camera/async/KeepAlive;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    if-eqz v0, :cond_0

    .line 98
    monitor-exit v1

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->isClosed:Z

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->timeout:Lcom/google/android/apps/camera/async/Timeout;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Timeout;->cancel()V

    .line 105
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive;->closeOnRelease:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
