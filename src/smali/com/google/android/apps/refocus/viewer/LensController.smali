.class public final Lcom/google/android/apps/refocus/viewer/LensController;
.super Ljava/lang/Object;
.source "LensController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusDepth:F

.field private histogram:[F

.field private maxDepth:F

.field private minDepth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "LensController"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/viewer/LensController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/refocus/image/RGBZ;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->histogram:[F

    .line 22
    iput v1, p0, Lcom/google/android/apps/refocus/viewer/LensController;->autoFocusDepth:F

    .line 23
    iput v1, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    .line 24
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    const v1, 0x358637bd    # 1.0E-6f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    .line 27
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 1091
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1092
    :cond_1
    sget-object v0, Lcom/google/android/apps/refocus/viewer/LensController;->TAG:Ljava/lang/String;

    const-string v1, "The RGBZ was invalid or had no depth!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1
    iget v1, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    .line 34
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v6

    move-object v0, p1

    move v5, v3

    .line 33
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/refocus/viewer/LensController;->computeInverseDepthHistogram(Lcom/google/android/apps/refocus/image/RGBZ;FFIIII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->histogram:[F

    .line 35
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    iget v1, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/refocus/viewer/LensController;->computeAutoFocusDepth(Lcom/google/android/apps/refocus/image/RGBZ;FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->autoFocusDepth:F

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/refocus/image/DepthTransform;->getNear()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    .line 1097
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/refocus/image/DepthTransform;->getFar()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    goto :goto_1
.end method

.method private static computeAutoFocusDepth(Lcom/google/android/apps/refocus/image/RGBZ;FF)F
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int v3, v1, v2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    add-int v4, v1, v2

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int v5, v1, v2

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    add-int v6, v1, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 121
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/refocus/viewer/LensController;->computeInverseDepthHistogram(Lcom/google/android/apps/refocus/image/RGBZ;FFIIII)[F

    move-result-object v3

    .line 125
    const/4 v1, 0x0

    .line 126
    array-length v0, v3

    add-int/lit8 v2, v0, -0x1

    .line 127
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 128
    aget v4, v3, v0

    add-float/2addr v1, v4

    .line 129
    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 135
    :goto_1
    mul-float v1, p2, p1

    sub-float v2, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, p2, v0

    div-float v0, v1, v0

    return v0

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private final computeAverageBlurRatio(FF)F
    .locals 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 101
    sub-float v0, v1, p2

    mul-float v3, p1, v0

    .line 102
    add-float v0, p2, v1

    mul-float v4, p1, v0

    .line 104
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    .line 105
    iget v5, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    iget v6, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    iget v7, p0, Lcom/google/android/apps/refocus/viewer/LensController;->maxDepth:F

    iget v8, p0, Lcom/google/android/apps/refocus/viewer/LensController;->minDepth:F

    sub-float/2addr v7, v8

    int-to-float v8, v0

    mul-float/2addr v7, v8

    const/high16 v8, 0x427c0000    # 63.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    .line 106
    sub-float v6, v3, v5

    .line 107
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float v7, v5, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v6, v7

    .line 108
    iget-object v7, p0, Lcom/google/android/apps/refocus/viewer/LensController;->histogram:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    div-float v5, v6, v5

    add-float/2addr v1, v5

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return v1
.end method

.method private static computeInverseDepthHistogram(Lcom/google/android/apps/refocus/image/RGBZ;FFIIII)[F
    .locals 7

    .prologue
    .line 143
    div-int/lit8 v0, p3, 0xa

    mul-int/lit8 v1, v0, 0xa

    .line 144
    div-int/lit8 v0, p5, 0xa

    mul-int/lit8 v0, v0, 0xa

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    .line 148
    const/16 v2, 0x40

    new-array v3, v2, [F

    move v2, v0

    .line 149
    :goto_0
    if-ge v2, p6, :cond_2

    move v0, v1

    .line 150
    :goto_1
    if-ge v0, p4, :cond_1

    .line 151
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepth(II)F

    move-result v4

    .line 152
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 153
    mul-float v5, p1, p2

    div-float v4, v5, v4

    sub-float v4, p2, v4

    sub-float v5, p2, p1

    div-float/2addr v4, v5

    .line 154
    const/high16 v5, 0x427c0000    # 63.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 155
    aget v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 149
    :cond_1
    add-int/lit8 v0, v2, 0xa

    move v2, v0

    goto :goto_0

    .line 161
    :cond_2
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x40

    if-ge v0, v2, :cond_3

    .line 163
    aget v2, v3, v0

    add-float/2addr v1, v2

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 166
    const/4 v0, 0x0

    :goto_3
    const/16 v2, 0x40

    if-ge v0, v2, :cond_4

    .line 167
    aget v2, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 170
    :cond_4
    return-object v3
.end method

.method public static getAutoDepthOfField()F
    .locals 1

    .prologue
    .line 87
    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method


# virtual methods
.method public final averageBlurFromBlurInfinity(FFF)F
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/refocus/viewer/LensController;->computeAverageBlurRatio(FF)F

    move-result v0

    .line 68
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return p3

    :cond_0
    mul-float/2addr p3, v0

    goto :goto_0
.end method

.method public final blurInfinityFromAverageBlur(FFF)F
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/refocus/viewer/LensController;->computeAverageBlurRatio(FF)F

    move-result v0

    .line 49
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return p3

    :cond_0
    div-float/2addr p3, v0

    goto :goto_0
.end method

.method public final getAutoFocusDepth()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/LensController;->autoFocusDepth:F

    return v0
.end method
