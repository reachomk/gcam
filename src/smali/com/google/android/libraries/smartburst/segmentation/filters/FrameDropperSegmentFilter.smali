.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "FrameDropperSegmentFilter.java"


# instance fields
.field private final mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final mTargetCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 35
    iput p2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mTargetCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 6

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reset()V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, v4, v5}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mTargetCount:I

    if-le v0, v2, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, v2, v3}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->getLabels()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 60
    const-string v0, "FrameDropperSegmentFilter[size="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mTargetCount:I

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;->mDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dropper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
