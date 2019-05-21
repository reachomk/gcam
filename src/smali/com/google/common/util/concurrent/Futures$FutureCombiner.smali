.class public final Lcom/google/common/util/concurrent/Futures$FutureCombiner;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FutureCombiner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final allMustSucceed:Z

.field private final futures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    .line 859
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lcom/google/common/collect/ImmutableList;

    .line 860
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/ImmutableList;B)V
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public final callAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncCallable",
            "<TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lcom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/CollectionFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AsyncCallable;)V

    return-object v0
.end method
