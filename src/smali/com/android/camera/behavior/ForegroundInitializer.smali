.class public abstract Lcom/android/camera/behavior/ForegroundInitializer;
.super Ljava/lang/Object;
.source "ForegroundInitializer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Initializer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isStarted:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "PreInitializer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/behavior/ForegroundInitializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/util/lifetime/ActivityLifetime;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/behavior/ForegroundInitializer;-><init>(Lcom/android/camera/util/lifetime/ActivityLifetime;Ljava/util/concurrent/Executor;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/util/lifetime/ActivityLifetime;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->isStarted:Z

    .line 38
    iput-object p1, p0, Lcom/android/camera/behavior/ForegroundInitializer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 39
    iput-object p2, p0, Lcom/android/camera/behavior/ForegroundInitializer;->executor:Ljava/util/concurrent/Executor;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->lock:Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/behavior/ForegroundInitializer;)Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/behavior/ForegroundInitializer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final complete()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method protected final complete(Z)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method protected final completeWithException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 107
    return-void
.end method

.method protected abstract initializeOnce()V
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/camera/behavior/ForegroundInitializer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->isStarted:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->future:Lcom/google/common/util/concurrent/SettableFuture;

    monitor-exit v1

    .line 75
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->isStarted:Z

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/behavior/ForegroundInitializer$1;

    invoke-direct {v1, p0}, Lcom/android/camera/behavior/ForegroundInitializer$1;-><init>(Lcom/android/camera/behavior/ForegroundInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer;->future:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/behavior/ForegroundInitializer;->initializeOnce()V

    goto :goto_1
.end method
