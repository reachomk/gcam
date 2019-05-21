.class public final Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "ContentValueSegmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;,
        Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;
    }
.end annotation


# instance fields
.field private final mContentValueThreshold:F

.field private final mFrameSorter:Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;

.field private final mMaxNumFrames:I

.field private final mMinNumFrames:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FI)V
    .locals 2

    .prologue
    .line 74
    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FII)V

    .line 75
    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FII)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 81
    new-instance v1, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mFrameSorter:Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;

    .line 82
    iput p2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mContentValueThreshold:F

    .line 83
    iput p3, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mMaxNumFrames:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mMinNumFrames:I

    .line 85
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 10

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "ContentValueSegmentFilter"

    const-string v1, "Empty image set passed in! Nothing to do."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    .line 125
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mFrameSorter:Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;->calcRemovingOrderOfFrames(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/List;

    move-result-object v3

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;

    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;->frame:J

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v2, "ContentValueSegmentFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x25

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Including frame: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 113
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;

    .line 115
    const-string v1, "ContentValueSegmentFilter"

    iget-wide v6, v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;->frame:J

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x2a

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "considering including "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mMinNumFrames:I

    if-lt v1, v5, :cond_1

    .line 1137
    const-string v1, "ContentValueSegmentFilter"

    iget-wide v6, v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;->frame:J

    iget v5, v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;->contentValue:F

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x44

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "shouldIncludeFrame "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " frameValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget v1, v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;->contentValue:F

    iget v5, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mContentValueThreshold:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    .line 118
    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mMaxNumFrames:I

    if-ge v1, v5, :cond_2

    .line 119
    :cond_1
    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$FrameValue;->frame:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1140
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 123
    :cond_4
    const-string v0, "ContentValueSegmentFilter"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Filtered to a new stack of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->getLabels()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 89
    const-string v0, "ContentValueSegmentFilter[scorer="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mFrameSorter:Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;->access$000(Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter$ContentValueFrameSorter;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mContentValueThreshold:F

    iget v3, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mMaxNumFrames:I

    iget v4, p0, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;->mMinNumFrames:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
