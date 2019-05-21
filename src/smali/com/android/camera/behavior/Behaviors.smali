.class public Lcom/android/camera/behavior/Behaviors;
.super Ljava/lang/Object;
.source "Behaviors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/behavior/Behaviors$NoOpBehavior;,
        Lcom/android/camera/behavior/Behaviors$RunnableBehavior;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of()Lcom/android/camera/behavior/Behavior;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/android/camera/behavior/Behaviors$NoOpBehavior;->access$000()Lcom/android/camera/behavior/Behaviors$NoOpBehavior;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Runnable;)Lcom/android/camera/behavior/Behavior;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/android/camera/behavior/Behaviors$RunnableBehavior;

    invoke-direct {v0, p0}, Lcom/android/camera/behavior/Behaviors$RunnableBehavior;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static provideDefaultExecutor(Ljava/util/concurrent/ExecutorService;Lcom/google/android/apps/camera/async/MainThread;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1059
    new-instance v0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;-><init>(Lcom/google/android/apps/camera/async/MainThread;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideDefaultExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .prologue
    .line 1068
    return-object p0
.end method

.method public static provideDefaultScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 1074
    const-string v0, "Executor"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Futures2;->newScheduledThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static provideHandlerFactory()Lcom/google/android/apps/camera/async/HandlerFactory;
    .locals 1

    .prologue
    .line 1052
    new-instance v0, Lcom/google/android/apps/camera/async/HandlerFactory;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/HandlerFactory;-><init>()V

    return-object v0
.end method

.method public static provideIOExecutor(Ljava/util/concurrent/ExecutorService;Lcom/google/android/apps/camera/async/MainThread;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;-><init>(Lcom/google/android/apps/camera/async/MainThread;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideIOExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 1089
    const-string v0, "IOExecutor"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Futures2;->newFixedThreadPool(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static provideMainThread()Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    return-object v0
.end method

.method public static startAsync(Ljavax/inject/Provider;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/behavior/Behavior;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/behavior/Behaviors$1;

    invoke-direct {v0, p0}, Lcom/android/camera/behavior/Behaviors$1;-><init>(Ljavax/inject/Provider;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
