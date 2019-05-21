.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "MaxSequentialDistanceSegmentFilter.java"


# instance fields
.field private final mFrameDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

.field private final mThresholdGenerator:Lcom/google/android/libraries/smartburst/segmentation/thresholds/ThresholdGenerator;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;Lcom/google/android/libraries/smartburst/segmentation/thresholds/ThresholdGenerator;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;->mFrameDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    .line 44
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;->mThresholdGenerator:Lcom/google/android/libraries/smartburst/segmentation/thresholds/ThresholdGenerator;

    .line 45
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    .line 49
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 53
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    .line 55
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 59
    const/4 v6, 0x0

    .line 60
    cmp-long v9, v2, v4

    if-eqz v9, :cond_2

    .line 61
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;->mFrameDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    invoke-virtual {v6, v2, v3, v0, v1}, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;->distanceBetween(JJ)F

    move-result v2

    .line 65
    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;->mThresholdGenerator:Lcom/google/android/libraries/smartburst/segmentation/thresholds/ThresholdGenerator;

    invoke-interface {v3, p1, v0, v1}, Lcom/google/android/libraries/smartburst/segmentation/thresholds/ThresholdGenerator;->getThreshold(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;J)F

    move-result v3

    .line 72
    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-wide v2, v0

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {v0, v7}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    move v2, v6

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 87
    const-string v0, "MaxSequentialDistanceSegmentFilter[distance metric="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;->mFrameDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxSequentialDistanceSegmentFilter;->mThresholdGenerator:Lcom/google/android/libraries/smartburst/segmentation/thresholds/ThresholdGenerator;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold generator="

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
