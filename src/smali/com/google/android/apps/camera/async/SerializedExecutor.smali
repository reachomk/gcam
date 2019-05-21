.class public final Lcom/google/android/apps/camera/async/SerializedExecutor;
.super Ljava/lang/Object;
.source "SerializedExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final outstandingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private tasksExecuting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->lock:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->tasksExecuting:Z

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->outstandingTasks:Ljava/util/Queue;

    .line 36
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->tasksExecuting:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->outstandingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    .line 78
    :cond_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->tasksExecuting:Z

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->outstandingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 72
    if-nez v0, :cond_2

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/camera/async/SerializedExecutor;->tasksExecuting:Z

    .line 76
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 76
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
