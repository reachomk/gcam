.class final Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;
.super Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AggregateFuture",
        "<",
        "Ljava/lang/Object;",
        "TV;>.RunningState;"
    }
.end annotation


# instance fields
.field private task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/CombinedFuture",
            "<TV;>.CombinedFutureInterruptibleTask;"
        }
    .end annotation
.end field

.field private synthetic this$0$9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F8DNMQOJ9DPIM8HJLEHQN4P9R:Lcom/google/common/util/concurrent/CollectionFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Lcom/google/common/util/concurrent/CombinedFuture",
            "<TV;>.CombinedFutureInterruptibleTask;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0$9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F8DNMQOJ9DPIM8HJLEHQN4P9R:Lcom/google/common/util/concurrent/CollectionFuture;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 65
    iput-object p4, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 66
    return-void
.end method


# virtual methods
.method final collectOneValue(ZILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method final handleAllCompleted()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->execute()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0$9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F8DNMQOJ9DPIM8HJLEHQN4P9R:Lcom/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CollectionFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    goto :goto_0
.end method

.method final interruptTask()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->interruptTask()V

    .line 93
    :cond_0
    return-void
.end method

.method final releaseResourcesAfterFailure()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 85
    return-void
.end method
