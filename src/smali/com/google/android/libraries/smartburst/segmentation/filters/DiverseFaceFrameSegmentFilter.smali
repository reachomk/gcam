.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "DiverseFaceFrameSegmentFilter.java"


# instance fields
.field private final mFaceImageDistanceThreshold:F

.field private final mIntegralMotionSaliencyDistanceThreshold:F

.field private final mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)V
    .locals 2

    .prologue
    .line 59
    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;FF)V

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;FF)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 49
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mIntegralMotionSaliencyDistanceThreshold:F

    .line 50
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mFaceImageDistanceThreshold:F

    .line 51
    return-void
.end method

.method private final removeSimilarFrames(Ljava/util/List;J)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->fetchMetaData(J)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v9

    .line 125
    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->METADATA_IMAGE_SIZE:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/libraries/smartburst/utils/Size;

    .line 126
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 127
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->fetchMetaData(J)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v14

    .line 130
    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 131
    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 132
    invoke-virtual {v14, v3}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_IMAGES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 133
    invoke-virtual {v9, v4}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_IMAGES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 134
    invoke-virtual {v14, v5}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, v8, Lcom/google/android/libraries/smartburst/utils/Size;->width:I

    iget v7, v8, Lcom/google/android/libraries/smartburst/utils/Size;->height:I

    .line 2166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2167
    invoke-static/range {v2 .. v7}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->getAverageFaceImageDistance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;II)F

    move-result v2

    .line 2169
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mFaceImageDistanceThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 138
    :goto_1
    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->INTEGRAL_MOTION_SALIENCY_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 139
    invoke-virtual {v14, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->INTEGRAL_MOTION_SALIENCY_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 140
    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v4, v2

    .line 138
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mIntegralMotionSaliencyDistanceThreshold:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    const/4 v2, 0x1

    .line 143
    :goto_2
    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 144
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2169
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 2171
    :cond_3
    const/4 v2, 0x1

    move v3, v2

    goto :goto_1

    .line 138
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 147
    :cond_5
    return-object v10
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 6

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->attachToThread()V

    .line 1090
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->detachFromThread()V

    .line 76
    return-object p1

    .line 1095
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_SHARPNESS_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)V

    .line 2030
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2033
    new-instance v2, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    invoke-static {v2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1100
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v0

    .line 1101
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1103
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1105
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFaceFrameSegmentFilter;->removeSimilarFrames(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1106
    goto :goto_1

    .line 1109
    :cond_1
    new-instance p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {p1, v2}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->detachFromThread()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "DiverseFaceFrameSegmentFilter"

    return-object v0
.end method
