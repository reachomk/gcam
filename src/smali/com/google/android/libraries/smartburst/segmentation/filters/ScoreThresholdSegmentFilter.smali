.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "ScoreThresholdSegmentFilter.java"


# instance fields
.field private final mMinCount:I

.field private final mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field private final mThreshold:F


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FI)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 39
    iput p2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mThreshold:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mMinCount:I

    .line 41
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 13

    .prologue
    const-wide/16 v4, -0x1

    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 48
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v8

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mMinCount:I

    if-le v0, v1, :cond_3

    .line 55
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 57
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v2, v4

    move v1, v0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, v6, v7}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v0

    .line 59
    cmpg-float v10, v0, v1

    if-gez v10, :cond_4

    move v2, v0

    move-wide v0, v6

    :goto_3
    move-wide v11, v0

    move v1, v2

    move-wide v2, v11

    .line 63
    goto :goto_2

    .line 66
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mThreshold:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_3

    .line 70
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-static {v8}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_4
    move-wide v11, v2

    move v2, v1

    move-wide v0, v11

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    const-string v0, "ScoreThresholdSegmentFilter[scorer="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mThreshold:F

    iget v3, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/ScoreThresholdSegmentFilter;->mMinCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
