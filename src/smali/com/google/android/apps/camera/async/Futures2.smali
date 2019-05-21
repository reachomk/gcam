.class public Lcom/google/android/apps/camera/async/Futures2;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/Futures2$ImmediateAsyncFunction2;,
        Lcom/google/android/apps/camera/async/Futures2$Function2;,
        Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/session/CaptureSessionFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSuccessCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/Callback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Lcom/google/android/apps/camera/util/Callback",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/google/android/apps/camera/async/Futures2$6;

    invoke-direct {v0, p1}, Lcom/google/android/apps/camera/async/Futures2$6;-><init>(Lcom/google/android/apps/camera/util/Callback;)V

    invoke-static {p0, v0, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 298
    return-void
.end method

.method public static cast(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/google/android/apps/camera/async/Futures2$5;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Futures2$5;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2",
            "<TT1;TT2;TTResult;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/google/android/apps/camera/async/Futures2$2;

    invoke-direct {v1, p2}, Lcom/google/android/apps/camera/async/Futures2$2;-><init>(Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2",
            "<TT1;TT2;TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/google/android/apps/camera/async/Futures2$3;

    invoke-direct {v1, p2}, Lcom/google/android/apps/camera/async/Futures2$3;-><init>(Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)V

    invoke-static {v0, v1, p3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/google/android/apps/camera/async/Futures2$Function2",
            "<TT1;TT2;TTResult;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/apps/camera/async/Futures2$ImmediateAsyncFunction2;

    invoke-direct {v0, p2}, Lcom/google/android/apps/camera/async/Futures2$ImmediateAsyncFunction2;-><init>(Lcom/google/android/apps/camera/async/Futures2$Function2;)V

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1031
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1083
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedThreadPool(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 1094
    const/4 v0, 0x2

    invoke-static {p0, p2}, Lcom/google/android/apps/camera/async/Futures2;->newNamedThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static newNamedSingleThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedSingleThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method private static newNamedSingleThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 1134
    new-instance v0, Lcom/google/android/apps/camera/async/NamedExecutors$2;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/camera/async/NamedExecutors$2;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static newNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method private static newNamedThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 2

    .prologue
    .line 1109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1110
    new-instance v0, Lcom/google/android/apps/camera/async/NamedExecutors$1;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/camera/async/NamedExecutors$1;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newScheduledThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 1057
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1038
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedSingleThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadedScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 1064
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedSingleThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadedScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 1076
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Futures2;->newNamedSingleThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/apps/camera/async/Futures2$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/Futures2$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public static poll(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 252
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 260
    if-eqz v1, :cond_0

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 265
    :cond_0
    :goto_1
    return-object v0

    .line 254
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    .line 257
    goto :goto_0

    .line 260
    :catch_1
    move-exception v2

    if-eqz v1, :cond_0

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v0
.end method


# virtual methods
.method public createNewSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSJB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJCLPN6QBFDP76UT39CPKMASHR9HL62TJ15TM62RJ75T9N8SJ9DPJJMIICC5N68SJFD5I2UR3FCDGN8QBFDONKORR3C5Q6IRRE7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;
    .locals 8

    .prologue
    .line 1020
    new-instance v0, Lcom/android/camera/module/imageintent/ImageIntentSession;

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/imageintent/ImageIntentSession;-><init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;)V

    return-object v0
.end method
