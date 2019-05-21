.class public final Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;
.super Ljava/lang/Object;
.source "FixedFrameRateSavingFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# instance fields
.field private final mAllOnTargetFrameRateTimestamps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final mFrameInterval:I

.field private final mFrameRate:F

.field private final mInBaseAndSaving:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSavingBuffer:I

.field private final mSavingPendingTimestamps:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private onTargetFrameRateTimestampNs:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mAllOnTargetFrameRateTimestamps:Ljava/util/Set;

    .line 50
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->onTargetFrameRateTimestampNs:Ljava/lang/Long;

    .line 54
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    .line 71
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 72
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 73
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 74
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mFrameRate:F

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mMaxSavingBuffer:I

    .line 76
    const v0, 0x4e6e6b28    # 1.0E9f

    iget v1, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mFrameRate:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mFrameInterval:I

    .line 77
    return-void
.end method

.method private final isOnTargetFrameRate(J)Z
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mAllOnTargetFrameRateTimestamps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized getAcceptedFrames()Ljava/util/Set;
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
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFrameDropped(J)V
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mAllOnTargetFrameRateTimestamps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFrameInserted(J)V
    .locals 5

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->onTargetFrameRateTimestampNs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->onTargetFrameRateTimestampNs:Ljava/lang/Long;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->onTargetFrameRateTimestampNs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xfe502a

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mAllOnTargetFrameRateTimestamps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->onTargetFrameRateTimestampNs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mFrameInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->onTargetFrameRateTimestampNs:Ljava/lang/Long;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reserveBestFrameForProcessing()Lcom/google/common/base/Optional;
    .locals 6
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
    const-wide/16 v2, -0x1

    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 154
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 168
    :goto_0
    monitor-exit p0

    return-object v0

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->isOnTargetFrameRate(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    :goto_1
    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized selectFrameToDrop()J
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mMaxSavingBuffer:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->isOnTargetFrameRate(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_2

    .line 116
    :cond_1
    monitor-exit p0

    return-wide v0

    .line 104
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    .line 106
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mAllOnTargetFrameRateTimestamps:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mInBaseAndSaving:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mSavingPendingTimestamps:Ljava/util/SortedSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;->mBaseDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
