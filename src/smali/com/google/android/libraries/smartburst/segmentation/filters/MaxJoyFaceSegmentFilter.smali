.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "MaxJoyFaceSegmentFilter.java"


# instance fields
.field private final mIsLeftEyeOpenScoreWeight:F

.field private final mIsRightEyeOpenScoreWeight:F

.field private final mIsSmilingScoreWeight:F

.field private final mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3e800000    # 0.25f

    .line 53
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;FFF)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;FFF)V
    .locals 1

    .prologue
    const/high16 v0, 0x3e800000    # 0.25f

    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 71
    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsLeftEyeOpenScoreWeight:F

    .line 72
    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsRightEyeOpenScoreWeight:F

    .line 73
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsSmilingScoreWeight:F

    .line 74
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 10

    .prologue
    .line 84
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-object p1

    .line 90
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->fetchMetaData(J)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v0

    sget-object v3, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 94
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->hasAllProbabilities(Lcom/google/android/vision/face/Face;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    invoke-virtual {v0}, Lcom/google/android/vision/face/Face;->getTrackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 96
    iget v7, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsLeftEyeOpenScoreWeight:F

    iget v8, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsRightEyeOpenScoreWeight:F

    iget v9, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsSmilingScoreWeight:F

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->getJoyScore(Lcom/google/android/vision/face/Face;FFF)F

    move-result v7

    .line 98
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    .line 100
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 116
    :cond_5
    new-instance p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {p1, v2}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    const-string v0, "MaxJoyFaceSegmentFilter[isLeftEyeOpenScoreWeight = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsLeftEyeOpenScoreWeight:F

    iget v2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsRightEyeOpenScoreWeight:F

    iget v3, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MaxJoyFaceSegmentFilter;->mIsSmilingScoreWeight:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x65

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRightEyeOpenScoreWeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSmilingScoreWeight = "

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
