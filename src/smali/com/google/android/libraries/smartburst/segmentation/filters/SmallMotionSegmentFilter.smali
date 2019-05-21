.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "SmallMotionSegmentFilter.java"


# instance fields
.field private final mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

.field private final mMaxInvalidFramesRatio:F

.field private final mMaxTotalMovement:F

.field private final mMaxValidMovement:F


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;FFF)V
    .locals 1

    .prologue
    const v0, 0x3e99999a    # 0.3f

    .line 49
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 52
    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxValidMovement:F

    .line 53
    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxTotalMovement:F

    .line 54
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxInvalidFramesRatio:F

    .line 55
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 13

    .prologue
    const-wide/16 v10, -0x1

    .line 69
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 73
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v2, v10

    .line 75
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 79
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxValidMovement:F

    iget v6, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxTotalMovement:F

    iget v7, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxInvalidFramesRatio:F

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;-><init>(FFF)V

    .line 81
    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    iget v6, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxValidMovement:F

    iget v7, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxTotalMovement:F

    iget v8, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxInvalidFramesRatio:F

    invoke-static/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;->getCumulativeMotionStatistics(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;JJFFF)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;

    move-result-object v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;->isMovementTooLarge()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;->hasTooManyInvalidFrames()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-wide v2, v4

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {v0, v9}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    const-string v0, "SmallMotionSegmentFilter[maxValidMovement="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxValidMovement:F

    iget v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxTotalMovement:F

    iget v3, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/SmallMotionSegmentFilter;->mMaxInvalidFramesRatio:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x59

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFrameMovement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxInvalidFramesRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
