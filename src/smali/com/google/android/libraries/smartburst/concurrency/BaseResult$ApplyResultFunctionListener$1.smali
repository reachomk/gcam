.class final Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener$1;
.super Ljava/lang/Object;
.source "BaseResult.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;->handleValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener$1;->this$0:Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener$1;->this$0:Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;->forwardThrowable(Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener$1;->this$0:Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Function output is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;->forwardThrowable(Ljava/lang/Throwable;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener$1;->this$0:Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/concurrency/BaseResult$ApplyResultFunctionListener;->mOutput:Lcom/google/android/libraries/smartburst/concurrency/SettableResult;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/concurrency/SettableResult;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
