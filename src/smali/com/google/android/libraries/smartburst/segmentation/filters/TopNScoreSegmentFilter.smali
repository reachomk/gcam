.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/TopNScoreSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "TopNScoreSegmentFilter.java"


# instance fields
.field private final mFrameCount:I

.field private final mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/TopNScoreSegmentFilter;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/TopNScoreSegmentFilter;->mFrameCount:I

    .line 33
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 14

    .prologue
    const-wide/16 v10, -0x1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-object p1

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 61
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/TopNScoreSegmentFilter;->mFrameCount:I

    if-ge v0, v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    move-object v0, v1

    .line 65
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v2, 0x0

    move v4, v2

    move-wide v6, v10

    :goto_2
    if-ge v4, v12, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v8, v4, 0x1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 66
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/TopNScoreSegmentFilter;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v2, v4, v5}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v2

    .line 67
    cmpl-float v13, v2, v3

    if-lez v13, :cond_3

    :goto_3
    move v3, v2

    move-wide v6, v4

    move v4, v8

    .line 71
    goto :goto_2

    .line 74
    :cond_1
    cmp-long v0, v6, v10

    if-eqz v0, :cond_2

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_2
    new-instance p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {p1, v9}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    move v2, v3

    move-wide v4, v6

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    const-string v0, "TopNScoreSegmentFilter[scorer="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/TopNScoreSegmentFilter;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

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
