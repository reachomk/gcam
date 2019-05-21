.class public final Lcom/google/android/libraries/smartburst/scoring/CameraMotionScorer;
.super Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;
.source "CameraMotionScorer.java"


# instance fields
.field private final mCameraMotionThreshold:F


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;F)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 37
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/google/android/libraries/smartburst/scoring/CameraMotionScorer;->mCameraMotionThreshold:F

    .line 38
    return-void
.end method


# virtual methods
.method public final scoreFeatureRow(JLcom/google/android/libraries/smartburst/buffers/FeatureRow;)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 5

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->CAMERA_MOTION:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {p3, v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v0

    .line 44
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 45
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 46
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 47
    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    float-to-double v2, v0

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 51
    :goto_0
    iget v2, p0, Lcom/google/android/libraries/smartburst/scoring/CameraMotionScorer;->mCameraMotionThreshold:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 57
    :goto_1
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    return-object v1

    :cond_0
    move v0, v1

    .line 55
    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string v0, "CameraMotionScorer[threshold="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/CameraMotionScorer;->mCameraMotionThreshold:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
