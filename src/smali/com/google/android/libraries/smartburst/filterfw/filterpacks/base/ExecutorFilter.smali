.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "ExecutorFilter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExecutorFilter"


# instance fields
.field private volatile mIsShutdown:Z

.field private final mRunnableQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mIsShutdown:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->requestClose()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->requestClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to post a command to an executor filter that has been shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->wakeUp()V

    .line 75
    return-void
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$3;-><init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V

    return-object v0
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mIsShutdown:Z

    return v0
.end method

.method protected onClose()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "ExecutorFilter"

    const-string v1, "Closing filter with non-empty runnable set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 59
    return-void
.end method

.method protected onProcess()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string v2, "ExecutorFilter"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->enterSleepState()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mIsShutdown:Z

    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->wakeUp()V

    .line 96
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3
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
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mIsShutdown:Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->mRunnableQueue:Ljava/util/Queue;

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$2;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$2;-><init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->wakeUp()V

    .line 130
    return-object v1
.end method
