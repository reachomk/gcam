.class final Lcom/google/android/libraries/smartburst/concurrency/Results$2;
.super Ljava/lang/Object;
.source "Results.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

.field private synthetic val$futures:Ljava/util/List;

.field final synthetic val$listResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/concurrency/SettableResult;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$listResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$context:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    iput-object p3, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$futures:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$futures:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/concurrency/Results$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/smartburst/concurrency/Results$2$1;-><init>(Lcom/google/android/libraries/smartburst/concurrency/Results$2;Ljava/lang/Throwable;)V

    .line 1074
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    move-result-object v2

    .line 425
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 431
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 412
    check-cast p1, Ljava/util/List;

    .line 1415
    if-nez p1, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$listResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Futures.allAsList(futures) resolved to null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$context:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->withContext(Ljava/lang/Throwable;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->setException(Lcom/google/android/libraries/smartburst/concurrency/ResultException;)Z

    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$2;->val$listResult:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
