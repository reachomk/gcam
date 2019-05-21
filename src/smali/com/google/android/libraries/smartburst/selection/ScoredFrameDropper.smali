.class public final Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;
.super Ljava/lang/Object;
.source "ScoredFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# instance fields
.field private final mFrames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    .line 36
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 37
    return-void
.end method

.method private declared-synchronized getAcceptedFrames()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic getAcceptedFrames()Ljava/util/Set;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->getAcceptedFrames()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized onFrameDropped(J)V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFrameInserted(J)V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reserveBestFrameForProcessing()Lcom/google/common/base/Optional;
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
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;
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

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V
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
    .locals 8

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Summary is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 53
    :cond_0
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 54
    const-wide/16 v2, -0x1

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mFrames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 56
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v4, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 57
    cmpg-float v7, v4, v5

    if-gez v7, :cond_2

    move v2, v4

    :goto_1
    move v5, v2

    move-wide v2, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit p0

    return-wide v2

    :cond_2
    move-wide v0, v2

    move v2, v5

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    const-string v0, "ScoredFrameDropper[scorer="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
