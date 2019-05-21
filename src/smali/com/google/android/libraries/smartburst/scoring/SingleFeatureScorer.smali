.class public final Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;
.super Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;
.source "SingleFeatureScorer.java"


# instance fields
.field private final mFeatureType:Lcom/google/android/libraries/smartburst/utils/FeatureType;

.field private final mIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 33
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 35
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mFeatureType:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 36
    iput v1, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mIndex:I

    .line 37
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 52
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    if-ltz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 54
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v0

    if-ge p3, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 55
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mFeatureType:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 56
    iput p3, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mIndex:I

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v1, v2

    .line 54
    goto :goto_1
.end method


# virtual methods
.method public final scoreFeatureRow(JLcom/google/android/libraries/smartburst/buffers/FeatureRow;)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 5

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mFeatureType:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 62
    invoke-virtual {p3, v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mIndex:I

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValueAt(I[I)F

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    .line 61
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    const-string v0, "SingleFeatureScorer[type="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;->mFeatureType:Lcom/google/android/libraries/smartburst/utils/FeatureType;

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
