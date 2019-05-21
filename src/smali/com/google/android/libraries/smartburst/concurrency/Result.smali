.class public Lcom/google/android/libraries/smartburst/concurrency/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field protected final mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTFuture;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTFuture;)V"
        }
    .end annotation

    .prologue
    .line 9038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9039
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9040
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/Result;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9041
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->getInstance()Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->register(Ljava/lang/Object;)V

    .line 9042
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 7153
    .line 8074
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    move-result-object v0

    .line 7153
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close(Ljava/util/concurrent/Executor;)V

    .line 7154
    return-void
.end method

.method public close(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 9158
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 9159
    new-instance v1, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$3;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$3;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9174
    return-void
.end method

.method public future()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTFuture;"
        }
    .end annotation

    .prologue
    .line 1047
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->getInstance()Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->markDisposed(Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Result;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/libraries/smartburst/concurrency/ResultException;
        }
    .end annotation

    .prologue
    .line 1054
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1055
    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result value was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->wrapIfNecessary(Ljava/lang/Throwable;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->wrapIfNecessary(Ljava/lang/Throwable;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    move-result-object v0

    throw v0

    .line 1059
    :cond_0
    return-object v0
.end method

.method public then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
            "<-TT;TU;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 5096
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5097
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5099
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 5100
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;

    const/4 v3, 0x0

    const-string v2, "Chained"

    .line 5101
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v5

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;Lcom/google/android/libraries/smartburst/utils/Function;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)V

    .line 6074
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    move-result-object v2

    .line 5102
    invoke-interface {v1, v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6196
    iget-object v0, v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$AbstractApplyFunctionListener;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    .line 5103
    return-object v0
.end method

.method public then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<-TT;TU;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1067
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 1071
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyFunctionListener;

    const/4 v3, 0x0

    const-string v2, "Chained"

    .line 1072
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v5

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyFunctionListener;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/utils/Function;Lcom/google/android/libraries/smartburst/utils/Function;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)V

    .line 2074
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    move-result-object v2

    .line 1073
    invoke-interface {v1, v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2196
    iget-object v0, v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$AbstractApplyFunctionListener;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    .line 1074
    return-object v0
.end method

.method public then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<-TT;+TU;>;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<-",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultException;",
            "+TU;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 3081
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3082
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 3086
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyFunctionListener;

    const-string v2, "Chained"

    .line 3088
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyFunctionListener;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/utils/Function;Lcom/google/android/libraries/smartburst/utils/Function;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)V

    .line 4074
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    move-result-object v2

    .line 3089
    invoke-interface {v1, v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4196
    iget-object v0, v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$AbstractApplyFunctionListener;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    .line 3090
    return-object v0
.end method

.method public thenAlways(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7133
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7134
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7136
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$1;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$1;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$2;

    invoke-direct {v1, p2}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public thenCatch(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<-",
            "Lcom/google/android/libraries/smartburst/concurrency/ResultException;",
            "+TT;>;)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7125
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7126
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7128
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->identity()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method
