.class public Lcom/google/android/libraries/smartburst/concurrency/Results;
.super Ljava/lang/Object;
.source "Results.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;"
    }
.end annotation


# instance fields
.field private final captureSession:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3020
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/Results;->captureSession:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3021
    return-void
.end method

.method public static create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "TFuture::",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>(TTFuture;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/Result;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->create()Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    .line 115
    const-string v1, "Created"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v1

    .line 116
    new-instance v2, Lcom/google/android/libraries/smartburst/concurrency/Results$1;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/libraries/smartburst/concurrency/Results$1;-><init>(Lcom/google/android/libraries/smartburst/concurrency/SettableResult;Ljava/util/concurrent/Callable;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-object v0
.end method

.method public static createImmediate(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method private static createList(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1142
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method public static forAll(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TI;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
            "<TI;TO;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->createList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 1383
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_0
    return-object v1
.end method

.method private static forAllResults(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TI;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<TI;TO;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 352
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_0
    return-object v1
.end method

.method public static forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TI;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
            "<TI;TO;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forAll(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public static forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TI;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<TI;TO;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 197
    .line 1296
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->createList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forAllResults(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public static forEachResult(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TI;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<TI;TO;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forAllResults(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public static getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUninterruptibly(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/libraries/smartburst/concurrency/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getUninterruptibly(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/smartburst/concurrency/ResultException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 81
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 81
    :cond_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1
.end method

.method public static mapEach(Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
            "<TI;TO;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
            "<",
            "Ljava/lang/Iterable",
            "<TI;>;",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/Results$5;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/concurrency/Results$5;-><init>(Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)V

    return-object v0
.end method

.method public static mapEachResult(Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<TI;TO;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
            "<",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TI;>;>;",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/Results$6;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/concurrency/Results$6;-><init>(Lcom/google/android/libraries/smartburst/utils/Function;)V

    return-object v0
.end method

.method public static whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<+TT;>;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 402
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->create()Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    move-result-object v0

    .line 411
    const-string v2, "Created"

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v2

    .line 412
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/android/libraries/smartburst/concurrency/Results$2;

    invoke-direct {v4, v0, v2, v1}, Lcom/google/android/libraries/smartburst/concurrency/Results$2;-><init>(Lcom/google/android/libraries/smartburst/concurrency/SettableResult;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;Ljava/util/List;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 433
    return-object v0
.end method

.method public static whenBoth(Lcom/google/android/libraries/smartburst/concurrency/Result;Lcom/google/android/libraries/smartburst/concurrency/Result;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TA;>;",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TB;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Landroid/util/Pair",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 465
    .line 2074
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    move-result-object v0

    .line 465
    new-instance v1, Lcom/google/android/libraries/smartburst/concurrency/Results$3;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/concurrency/Results$3;-><init>(Lcom/google/android/libraries/smartburst/concurrency/Result;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public submitReprocessingRequest(Lcom/android/camera/one/v2/core/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 3026
    invoke-virtual {p1}, Lcom/android/camera/one/v2/core/Request;->isReprocessing()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 3028
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Results;->captureSession:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/one/v2/core/Request;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/core/FrameRequestProcessor;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3031
    return-void

    .line 3029
    :catch_0
    move-exception v0

    .line 3030
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
