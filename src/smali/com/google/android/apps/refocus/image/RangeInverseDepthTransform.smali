.class public final Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;
.super Ljava/lang/Object;
.source "RangeInverseDepthTransform.java"

# interfaces
.implements Lcom/google/android/apps/refocus/image/DepthTransform;


# instance fields
.field private final far:F

.field private final near:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->near:F

    .line 17
    iput p2, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    .line 18
    return-void
.end method


# virtual methods
.method public final getFar()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    return v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "RangeInverse"

    return-object v0
.end method

.method public final getNear()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->near:F

    return v0
.end method

.method public final quantize(F)I
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x0

    const/16 v1, 0xff

    iget v2, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    iget v3, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->near:F

    iget v4, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    mul-float/2addr v3, v4

    div-float/2addr v3, p1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    iget v4, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->near:F

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
    .locals 5

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    iget v1, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->near:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    iget v2, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->far:F

    iget v3, p0, Lcom/google/android/apps/refocus/image/RangeInverseDepthTransform;->near:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method
