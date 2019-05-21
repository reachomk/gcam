.class public Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;
.super Ljava/lang/Object;
.source "EventForwardingFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# instance fields
.field private final mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final mFrameStoreEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameStoreEventListeners:Ljava/util/Set;

    .line 22
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 24
    return-void
.end method


# virtual methods
.method public final declared-synchronized addFrameStoreEventListener(Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;)V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameStoreEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAcceptedFrames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onFrameDropped(J)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameStoreEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;

    .line 54
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;->onFrameDropped(J)V

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameStoreEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;->onFrameInserted(J)V

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final declared-synchronized removeFrameStoreEventListener(Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;)V
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameStoreEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final reserveBestFrameForProcessing()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reserveBestFrameForProcessing()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reset()V

    .line 62
    return-void
.end method

.method public final selectFrameToDrop()J
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v0

    return-wide v0
.end method
