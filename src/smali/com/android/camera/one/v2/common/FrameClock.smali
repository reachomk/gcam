.class public final Lcom/android/camera/one/v2/common/FrameClock;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "FrameClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;
    }
.end annotation


# instance fields
.field private futureTasks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mostRecentFrameNumber:J

.field private final newFrameCondition:Ljava/util/concurrent/locks/Condition;

.field private final repeatTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->newFrameCondition:Ljava/util/concurrent/locks/Condition;

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->futureTasks:Ljava/util/TreeMap;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->mostRecentFrameNumber:J

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->repeatTasks:Ljava/util/Set;

    .line 57
    return-void
.end method


# virtual methods
.method public final getCurrentFrameIndex()J
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->mostRecentFrameNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v2, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    return-wide v0

    .line 81
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 6

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->mostRecentFrameNumber:J

    .line 65
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->newFrameCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1161
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->futureTasks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->futureTasks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/common/FrameClock;->mostRecentFrameNumber:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->futureTasks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->repeatTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1165
    iget-wide v2, p0, Lcom/android/camera/one/v2/common/FrameClock;->mostRecentFrameNumber:J

    invoke-static {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->access$300(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->access$400(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)J

    move-result-wide v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1166
    invoke-static {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->access$500(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    return-void
.end method

.method public final waitUntilFrame(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->mostRecentFrameNumber:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->newFrameCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    return-void
.end method
