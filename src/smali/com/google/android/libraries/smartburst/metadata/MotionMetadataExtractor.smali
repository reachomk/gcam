.class public final Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;
.super Ljava/lang/Object;
.source "MotionMetadataExtractor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/metadata/ImageMetadataExtractor;


# instance fields
.field private final mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

.field private mHighMotion:Z

.field private mMotionCharacterized:Z

.field private final mMotionCharacterizedLock:Ljava/lang/Object;

.field private final mSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/media/Summary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mMotionCharacterizedLock:Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 69
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mMotionCharacterized:Z

    .line 71
    return-void
.end method


# virtual methods
.method public final extractMetadata(JLandroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/storage/Metadata;
    .locals 13

    .prologue
    .line 75
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const/4 v0, 0x0

    .line 1104
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getEarliestTimestamp()J

    move-result-wide v2

    .line 1105
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1106
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getRowIterator(J)Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;

    move-result-object v1

    move v9, v0

    .line 1109
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->moreSamplesToFollow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;

    .line 1111
    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValue()F

    move-result v2

    .line 1112
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getTimestampNs()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-gtz v0, :cond_0

    .line 1115
    add-float v0, v9, v2

    move v9, v0

    .line 1116
    goto :goto_0

    .line 1130
    :cond_0
    const/4 v0, 0x0

    .line 1131
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getEarliestTimestamp()J

    move-result-wide v2

    const-wide/32 v4, 0x3b9aca00

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1133
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1134
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getRowIterator(J)Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;

    move-result-object v2

    move v1, v0

    .line 1137
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->moreSamplesToFollow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;

    .line 1139
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getTimestampNs()J

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    add-long/2addr v6, p1

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1142
    sget-object v3, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValue()F

    move-result v0

    .line 1143
    add-float/2addr v0, v1

    move v1, v0

    .line 1144
    goto :goto_1

    .line 1145
    :cond_1
    const v0, 0x42700001    # 60.000004f

    div-float v10, v1, v0

    .line 84
    iget-object v11, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mMotionCharacterizedLock:Ljava/lang/Object;

    monitor-enter v11

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mMotionCharacterized:Z

    if-nez v0, :cond_3

    .line 1154
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->getSortedTimestamps()Ljava/util/List;

    move-result-object v4

    .line 1155
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    const/4 v0, 0x0

    .line 1156
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1157
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3e19999a    # 0.15f

    const v8, 0x3e19999a    # 0.15f

    .line 1155
    invoke-static/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;->getCumulativeMotionStatistics(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;JJFFF)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;

    move-result-object v0

    .line 1160
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;->isMovementTooLarge()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStatistics;->hasTooManyInvalidFrames()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 86
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mHighMotion:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mMotionCharacterized:Z

    .line 89
    :cond_3
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/Metadata;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/storage/Metadata;-><init>()V

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->INTEGRAL_MOTION_SALIENCY_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 90
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->LOWPASS_MOTION_SALIENCY_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 91
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->HIGH_MOTION_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-boolean v2, p0, Lcom/google/android/libraries/smartburst/metadata/MotionMetadataExtractor;->mHighMotion:Z

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v0

    monitor-exit v11

    .line 89
    return-object v0

    .line 1160
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "MotionMetadataExtractor"

    return-object v0
.end method
