.class public final Lcom/android/camera/one/v2/command/CameraCommandExecutor;
.super Ljava/lang/Object;
.source "CameraCommandExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;
    }
.end annotation


# instance fields
.field private closed:Z

.field private executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/MainThread;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p3, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 83
    iput-object p2, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 84
    const-string v0, "CommandExecutor"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->log:Lcom/android/camera/debug/Logger;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->lock:Ljava/lang/Object;

    .line 87
    iput-object p4, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executorProvider:Ljavax/inject/Provider;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->closed:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method


# virtual methods
.method public final execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/command/CameraCommand;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->closed:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 105
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;-><init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/command/CameraCommand;)V

    invoke-interface {v0, v2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isShutdown()Z
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->closed:Z

    monitor-exit v1

    return v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->shutdown()V

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->closed:Z

    .line 150
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final shutdownNow()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->shutdownNow()Ljava/util/List;

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->closed:Z

    .line 171
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
