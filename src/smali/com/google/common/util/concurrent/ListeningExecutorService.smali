.class public interface abstract Lcom/google/common/util/concurrent/ListeningExecutorService;
.super Ljava/lang/Object;
.source "ListeningExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# virtual methods
.method public abstract submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method
