.class public final Lcom/android/camera/fsm/StateMachineImpl;
.super Ljava/lang/Object;
.source "StateMachineImpl.java"

# interfaces
.implements Lcom/android/camera/fsm/StateMachine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fsm/StateMachineImpl$StateUninitialized;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/fsm/StateMachine",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Lcom/google/android/apps/camera/async/SafeCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private state:Lcom/android/camera/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/fsm/State",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final stateChangedCondition:Ljava/util/concurrent/locks/Condition;

.field private final stateLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "StateMachine"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fsm/StateMachineImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/fsm/StateMachineImpl;->context:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 28
    new-instance v0, Lcom/android/camera/fsm/StateMachineImpl$StateUninitialized;

    invoke-direct {v0, p0}, Lcom/android/camera/fsm/StateMachineImpl$StateUninitialized;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    iput-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    .line 29
    return-void
.end method

.method private jumpToState(Lcom/android/camera/fsm/State;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/State",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/android/camera/fsm/StateMachineImpl;->TAG:Ljava/lang/String;

    const-string v1, "No op since jump to the same state."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    return-void

    .line 44
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/fsm/StateMachineImpl;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Change state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-interface {v0}, Lcom/android/camera/fsm/State;->onLeave()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    .line 47
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-interface {v0}, Lcom/android/camera/fsm/State;->onEnter()Lcom/android/camera/fsm/State;

    move-result-object v0

    .line 48
    :goto_1
    if-eqz v0, :cond_1

    .line 49
    sget-object v1, Lcom/android/camera/fsm/StateMachineImpl;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Forward state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-interface {v1}, Lcom/android/camera/fsm/State;->onLeave()V

    .line 51
    iput-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    .line 52
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-interface {v0}, Lcom/android/camera/fsm/State;->onEnter()Lcom/android/camera/fsm/State;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 58
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->context:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method public final processEvent(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/State;->getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    sget-object v1, Lcom/android/camera/fsm/StateMachineImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Process event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, p1}, Lcom/android/camera/fsm/EventHandler;->processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lcom/android/camera/fsm/StateMachineImpl;->jumpToState(Lcom/android/camera/fsm/State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    sget-object v1, Lcom/android/camera/fsm/StateMachineImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to process event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final setInitialState(Lcom/android/camera/fsm/State;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/State",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->state:Lcom/android/camera/fsm/State;

    instance-of v0, v0, Lcom/android/camera/fsm/StateMachineImpl$StateUninitialized;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 84
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/fsm/StateMachineImpl;->jumpToState(Lcom/android/camera/fsm/State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/fsm/StateMachineImpl;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
