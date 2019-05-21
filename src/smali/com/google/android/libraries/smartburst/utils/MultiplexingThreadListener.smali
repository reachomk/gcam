.class public final Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;
.super Ljava/lang/Object;
.source "MultiplexingThreadListener.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/ThreadListener;


# instance fields
.field private final mCurrentListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/utils/ThreadListener;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mCurrentListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    .line 29
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/smartburst/utils/ThreadListener;->onError(Ljava/lang/Exception;)V

    .line 48
    return-void
.end method

.method public final onStarted()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mCurrentListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/ThreadListener;->onStarted()V

    .line 36
    :cond_0
    return-void
.end method

.method public final onStopped()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mCurrentListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/MultiplexingThreadListener;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/ThreadListener;->onStopped()V

    .line 43
    :cond_0
    return-void
.end method
