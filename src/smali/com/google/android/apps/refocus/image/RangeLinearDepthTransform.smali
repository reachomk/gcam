.class public final Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;
.super Ljava/lang/Object;
.source "RangeLinearDepthTransform.java"

# interfaces
.implements Lcom/google/android/apps/refocus/image/DepthTransform;


# instance fields
.field private final far:F

.field private final near:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->near:F

    .line 18
    iput p2, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->far:F

    .line 19
    return-void
.end method


# virtual methods
.method public final getFar()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->far:F

    return v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "RangeLinear"

    return-object v0
.end method

.method public final getNear()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->near:F

    return v0
.end method

.method public final quantize(F)I
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x0

    const/16 v1, 0xff

    iget v2, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->near:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->far:F

    iget v4, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->near:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final reconstruct(I)F
    .locals 4

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->near:F

    iget v1, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->far:F

    iget v2, p0, Lcom/google/android/apps/refocus/image/RangeLinearDepthTransform;->near:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
