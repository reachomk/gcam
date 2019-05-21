.class public final Lcom/android/camera/storage/PeriodicStorageSpaceChecker;
.super Ljava/lang/Object;
.source "PeriodicStorageSpaceChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

.field private timer:Ljava/util/Timer;

.field private final timerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Lcom/android/camera/storage/StorageSpaceChecker;

    move-wide v4, v2

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/storage/StorageSpaceChecker;-><init>(JJLcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    .line 48
    new-instance v0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$1;

    invoke-direct {v0}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timerProvider:Ljavax/inject/Provider;

    .line 54
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timer:Ljava/util/Timer;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->lock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/PeriodicStorageSpaceChecker;)Lcom/android/camera/storage/StorageSpaceChecker;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    return-object v0
.end method

.method public static create(Lcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)Lcom/android/camera/storage/PeriodicStorageSpaceChecker;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;-><init>(Lcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final start(JLcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;)V
    .locals 7

    .prologue
    .line 71
    iget-object v6, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timer:Ljava/util/Timer;

    .line 1097
    new-instance v1, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;-><init>(Lcom/android/camera/storage/PeriodicStorageSpaceChecker;Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 77
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 86
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
