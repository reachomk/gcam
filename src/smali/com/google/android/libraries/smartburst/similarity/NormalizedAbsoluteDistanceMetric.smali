.class public final Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;
.super Ljava/lang/Object;
.source "NormalizedAbsoluteDistanceMetric.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/similarity/FeatureDistanceMetric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getL1Norm(Lcom/google/android/libraries/smartburst/utils/Feature;)F
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v2

    .line 46
    const/4 v1, 0x0

    .line 47
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 48
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v1
.end method


# virtual methods
.method public final distanceBetween(Lcom/google/android/libraries/smartburst/utils/Feature;Lcom/google/android/libraries/smartburst/utils/Feature;)F
    .locals 8

    .prologue
    const/4 v1, 0x0

    const v7, 0x33d6bf95    # 1.0E-7f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v4

    .line 26
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v5

    .line 27
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;->getL1Norm(Lcom/google/android/libraries/smartburst/utils/Feature;)F

    move-result v0

    .line 28
    invoke-static {p2}, Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;->getL1Norm(Lcom/google/android/libraries/smartburst/utils/Feature;)F

    move-result v6

    .line 31
    cmpl-float v3, v0, v7

    if-lez v3, :cond_3

    .line 32
    div-float v0, v2, v0

    move v3, v0

    .line 34
    :goto_1
    cmpl-float v0, v6, v7

    if-lez v0, :cond_2

    .line 35
    div-float v0, v2, v6

    .line 37
    :goto_2
    const/4 v2, 0x0

    .line 38
    :goto_3
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 39
    aget v6, v5, v1

    mul-float/2addr v6, v0

    aget v7, v4, v1

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v2, v6

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0

    .line 41
    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_1
.end method
