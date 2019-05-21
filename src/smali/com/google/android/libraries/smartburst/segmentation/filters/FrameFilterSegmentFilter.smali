.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "FrameFilterSegmentFilter.java"


# instance fields
.field private final mFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameFilter;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterSegmentFilter;->mFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    .line 32
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterSegmentFilter;->mFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    invoke-interface {v0, v4, v5}, Lcom/google/android/libraries/smartburst/selection/FrameFilter;->acceptFrameAt(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->getLabels()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    const-string v0, "FrameFilterSegmentFilter[filter="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterSegmentFilter;->mFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

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
