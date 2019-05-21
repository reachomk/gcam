.class public final Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;
.super Ljava/lang/Object;
.source "SuspendableExecutorWrapper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ExecutorBase::",
        "Ljava/util/concurrent/Executor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutor;"
    }
.end annotation


# instance fields
.field private final mBaseExecutor:Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TExecutorBase;"
        }
    .end annotation
.end field

.field private volatile mIsSuspended:Z

.field private final mSubmittedTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TExecutorBase;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mSubmittedTasks:Ljava/util/Queue;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mIsSuspended:Z

    .line 51
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mBaseExecutor:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->taskCanRun(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private final declared-synchronized taskCanRun(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mIsSuspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 112
    :goto_0
    monitor-exit p0

    return v0

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mSubmittedTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Task not in queue of submitted tasks."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static wrap(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/concurrent/Executor;",
            ">(TT;)",
            "Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private final wrapAndExecuteInBase(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 79
    .line 1070
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mBaseExecutor:Ljava/util/concurrent/Executor;

    .line 1127
    new-instance v1, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;-><init>(Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;Ljava/lang/Runnable;)V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mSubmittedTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 142
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mIsSuspended:Z

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->wrapAndExecuteInBase(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mIsSuspended:Z

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mSubmittedTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 86
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->wrapAndExecuteInBase(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized suspend()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->mIsSuspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
