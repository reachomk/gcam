.class Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ExecutorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->getExecutorService()Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_2

    .line 187
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    .line 174
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->access$200(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 173
    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->shutdown()V

    .line 152
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
