.class public final Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;
.super Ljava/lang/Object;
.source "FeatureWaitingFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# instance fields
.field private final mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

.field private final mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private mInsertedFrameCount:I

.field private final mMaxPendingFrameCount:I

.field private final mWaitingTimestamps:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    .line 38
    iput v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mInsertedFrameCount:I

    .line 51
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 54
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 55
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 56
    iput v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mMaxPendingFrameCount:I

    .line 57
    return-void
.end method

.method private final declared-synchronized flushAllFramesWithValidFeatures()V
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    .line 130
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getLatestValidTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->insertFrameWithLowestTimestamp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private final declared-synchronized insertFrameWithLowestTimestamp()V
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V

    .line 137
    iget v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mInsertedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mInsertedFrameCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized insertFramesWithValidFeatures()V
    .locals 5

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->flushAllFramesWithValidFeatures()V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mMaxPendingFrameCount:I

    if-le v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 123
    const-string v2, "FeatureWaitingFrameDropper"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timed out waiting for features inserting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->insertFrameWithLowestTimestamp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized getAcceptedFrames()Ljava/util/Set;
    .locals 2
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
    .line 97
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFrameDropped(J)V
    .locals 3

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    .line 83
    iget v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mInsertedFrameCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mInsertedFrameCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFrameInserted(J)V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->insertFramesWithValidFeatures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
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
    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reserveBestFrameForProcessing()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized selectFrameToDrop()J
    .locals 4

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->insertFramesWithValidFeatures()V

    .line 64
    iget v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mInsertedFrameCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "FeatureWaitingFrameDropper"

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mWaitingTimestamps:Ljava/util/TreeSet;

    .line 66
    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No frame was inserted, inserting a new frame with timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->insertFrameWithLowestTimestamp()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    const-string v0, "FeatureWaitingFrameDropper, mMaxPendingFrameCount="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;->mMaxPendingFrameCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
