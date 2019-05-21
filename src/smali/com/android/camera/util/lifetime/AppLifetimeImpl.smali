.class final Lcom/android/camera/util/lifetime/AppLifetimeImpl;
.super Ljava/lang/Object;
.source "AppLifetimeImpl.java"

# interfaces
.implements Lcom/android/camera/util/lifetime/AppLifetime;
.implements Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private foregroundKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

.field private foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

.field private isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Ljava/util/concurrent/Executor;

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final timeoutMs:J

.field private visibleKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

.field private visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "AppLifetime"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;J)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 66
    iput-object p2, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->mainThread:Ljava/util/concurrent/Executor;

    .line 67
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->timeoutMs:J

    .line 68
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->lock:Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 72
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->createKeepAlive(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/KeepAlive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    .line 73
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 74
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->createKeepAlive(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/KeepAlive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    .line 76
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 77
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 78
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/lifetime/AppLifetimeImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private final createKeepAlive(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/KeepAlive;
    .locals 9

    .prologue
    .line 178
    new-instance v0, Lcom/google/android/apps/camera/async/KeepAlive;

    new-instance v1, Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;-><init>(Lcom/android/camera/util/lifetime/AppLifetimeImpl;Lcom/google/android/apps/camera/async/Lifetime;)V

    iget-object v2, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->mainThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/apps/camera/async/Timeout;

    new-instance v4, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    iget-object v5, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v6, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->timeoutMs:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v3, v4}, Lcom/google/android/apps/camera/async/Timeout;-><init>(Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/camera/async/KeepAlive;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/async/Timeout;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/KeepAlive;

    return-object v0
.end method


# virtual methods
.method public final createForegroundChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 158
    sget-object v0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v3, "Creating new ForegroundLifetime"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    sget-object v3, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v4, "ForegroundLifetime.close()"

    invoke-static {v3, v4}, Lcom/android/camera/debug/DebugModule;->logOnClose(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 160
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->createKeepAlive(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/KeepAlive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    .line 161
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/KeepAlive;->acquireLock()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 165
    monitor-exit v2

    .line 166
    return-object v1

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createInstanceLifetime()Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    return-object v0
.end method

.method public final createVisibleChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 5

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 134
    sget-object v0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v3, "Creating new VisibleLifetime"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    sget-object v3, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v4, "VisibleLifetime.close()"

    invoke-static {v3, v4}, Lcom/android/camera/debug/DebugModule;->logOnClose(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 136
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->createKeepAlive(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/KeepAlive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    .line 137
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 139
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 140
    sget-object v0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v3, "Creating new ForegroundLifetime"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    sget-object v3, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v4, "ForegroundLifetime.close()"

    invoke-static {v3, v4}, Lcom/android/camera/debug/DebugModule;->logOnClose(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 142
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->createKeepAlive(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/KeepAlive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    .line 143
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleKeepAlive:Lcom/google/android/apps/camera/async/KeepAlive;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/KeepAlive;->acquireLock()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 147
    monitor-exit v2

    .line 148
    return-object v1

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAppLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->appLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method public final getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isVisibleLifetimeClosed()Z
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
