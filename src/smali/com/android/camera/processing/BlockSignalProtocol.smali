.class public Lcom/android/camera/processing/BlockSignalProtocol;
.super Ljava/lang/Object;
.source "BlockSignalProtocol.java"


# instance fields
.field private count:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private signal:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I

    .line 42
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->signal:Ljava/util/concurrent/locks/Condition;

    .line 43
    return-void
.end method


# virtual methods
.method public final addCount(I)I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 33
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I

    .line 34
    iget v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v1, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    return v0

    .line 36
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final block()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 48
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->signal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 25
    iget v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I

    .line 26
    iget-object v1, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    return v0
.end method

.method public final setCount(I)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 18
    iput p1, p0, Lcom/android/camera/processing/BlockSignalProtocol;->count:I

    .line 19
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    return-void
.end method

.method public final signal()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 62
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->signal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 63
    iget-object v0, p0, Lcom/android/camera/processing/BlockSignalProtocol;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    return-void
.end method
