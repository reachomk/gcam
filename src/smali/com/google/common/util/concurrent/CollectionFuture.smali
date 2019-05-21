.class Lcom/google/common/util/concurrent/CollectionFuture;
.super Lcom/google/common/util/concurrent/AggregateFuture;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFuture",
        "<TV;TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/google/common/util/concurrent/CollectionFuture;-><init>()V

    .line 1093
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;-><init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;Z)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture;->init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 1094
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AsyncCallable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/AsyncCallable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2039
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture;-><init>()V

    .line 2040
    new-instance v0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;

    new-instance v1, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;

    invoke-direct {v1, p0, p4, p3}, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;-><init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;-><init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture;->init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 2045
    return-void
.end method
