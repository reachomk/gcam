.class public final Lcom/google/android/apps/camera/async/BatchedUiExecutor;
.super Ljava/lang/Object;
.source "BatchedUiExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;
    }
.end annotation


# instance fields
.field private final batchRunner:Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;

.field private volatile executing:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isExecuting:Z

.field private volatile isScheduled:Z

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Ljava/util/concurrent/Executor;

.field private volatile queue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isScheduled:Z

    .line 32
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isExecuting:Z

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->mainThread:Ljava/util/concurrent/Executor;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->lock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->queue:Ljava/util/HashSet;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->executing:Ljava/util/HashSet;

    .line 39
    new-instance v0, Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;-><init>(Lcom/google/android/apps/camera/async/BatchedUiExecutor;B)V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->batchRunner:Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/async/BatchedUiExecutor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/async/BatchedUiExecutor;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->executing:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/camera/async/BatchedUiExecutor;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->executing:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/async/BatchedUiExecutor;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->queue:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/camera/async/BatchedUiExecutor;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->queue:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/camera/async/BatchedUiExecutor;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isExecuting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/camera/async/BatchedUiExecutor;)Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->batchRunner:Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/camera/async/BatchedUiExecutor;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->mainThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/camera/async/BatchedUiExecutor;Z)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isScheduled:Z

    return v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isExecuting:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You CANNOT schedule a new runnable during the execution of a previously scheduled runnable. This will result in \"ping-pong\" like behavior and can cause the UI to be updated multiple times with inconsistent values. This is inefficient and bug-prone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->queue:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isScheduled:Z

    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->isScheduled:Z

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->mainThread:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->batchRunner:Lcom/google/android/apps/camera/async/BatchedUiExecutor$BatchRunner;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
