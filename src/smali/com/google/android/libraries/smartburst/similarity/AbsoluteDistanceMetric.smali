.class public final Lcom/google/android/libraries/smartburst/similarity/AbsoluteDistanceMetric;
.super Ljava/lang/Object;
.source "AbsoluteDistanceMetric.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/similarity/FeatureDistanceMetric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final distanceBetween(Lcom/google/android/libraries/smartburst/utils/Feature;Lcom/google/android/libraries/smartburst/utils/Feature;)F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v3

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 22
    aget v4, v3, v1

    aget v5, v2, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v0, v4

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 17
    goto :goto_0

    .line 24
    :cond_1
    return v0
.end method
