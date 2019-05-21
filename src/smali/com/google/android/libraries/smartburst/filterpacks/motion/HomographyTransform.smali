.class public final Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
.super Ljava/lang/Object;
.source "HomographyTransform.java"


# static fields
.field public static final TRANSFORM_COLUMNS:I = 0x3

.field public static final TRANSFORM_DIMENSION:I = 0x9

.field public static final TRANSFORM_ROWS:I = 0x3


# instance fields
.field private final isPanAndZoom:Z

.field private final mTransform:[F


# direct methods
.method private constructor <init>(FFF)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    cmpl-float v0, p3, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 166
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    .line 167
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aput p3, v0, v2

    .line 168
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aput v4, v0, v1

    .line 169
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x2

    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v3, p1

    aput v3, v0, v2

    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x3

    aput v4, v0, v2

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x4

    aput p3, v0, v2

    .line 172
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x5

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    aput v3, v0, v2

    .line 173
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x6

    aput v4, v0, v2

    .line 174
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x7

    aput v4, v0, v2

    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    .line 176
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->isPanAndZoom:Z

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0
.end method

.method private constructor <init>([F)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    array-length v0, p1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Transform length must be of length 9"

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    .line 150
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->isPanAndZoom:Z

    .line 151
    return-void

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public static createBlend(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;FLcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->toArray()[F

    move-result-object v1

    .line 124
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->toArray()[F

    move-result-object v2

    .line 125
    new-array v3, v6, [F

    .line 126
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 127
    aget v4, v1, v0

    mul-float/2addr v4, p1

    aget v5, v2, v0

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    aput v4, v3, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public static createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;-><init>([F)V

    return-object v0
.end method

.method public static createIdentityArray()[F
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static createIdentityHomographyTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createIdentityArray()[F

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public static createIdentityPanAndZoom()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createPanAndZoom(FFF)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public static createPanAndZoom(FFF)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;-><init>(FFF)V

    return-object v0
.end method

.method public static createRotation(F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createRotationAndZoom(FF)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public static createRotationAndZoom(FF)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    float-to-double v2, p0

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    float-to-double v2, p0

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 109
    new-instance v1, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;-><init>([F)V

    return-object v1
.end method


# virtual methods
.method public final closeTo(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;F)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 320
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 321
    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v3, v3, v1

    iget-object v4, p1, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    cmpg-float v1, v2, p2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 302
    if-ne p1, p0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    .line 305
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :cond_1
    check-cast p1, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 309
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    iget-object v1, p1, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public final getDisplacementX()F
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getDisplacementY()F
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getValue(I)F
    .locals 2

    .prologue
    .line 186
    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Exceeds transform dimensions."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v0, v0, p1

    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getValue(II)F
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    if-ge p1, v4, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Exceeds row limit."

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 199
    if-ge p2, v4, :cond_1

    :goto_1
    const-string v0, "Exceeds column limit."

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v1, v2

    .line 199
    goto :goto_1
.end method

.method public final getZoom()F
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public final isDegenerateHomography()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIdentity()Z
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createIdentityHomographyTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPanAndZoomOnly()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->isPanAndZoom:Z

    return v0
.end method

.method public final isTranslationOnly()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 340
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final normalize()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 358
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v0, v0, v4

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v1, v0

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v3, v3, v4

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public final quadInOpenGL4DCoordinate([F)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v0, v0, v4

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v6

    add-float/2addr v0, v1

    aput v0, p1, v4

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v0, v0, v7

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v8

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v5

    .line 284
    const/4 v0, 0x0

    aput v0, p1, v6

    .line 285
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v7

    .line 286
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v6

    add-float/2addr v0, v1

    aput v0, p1, v8

    .line 287
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 288
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 289
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 290
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v4

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v6

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 291
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v7

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 292
    const/16 v0, 0xa

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 293
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 294
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v6

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 295
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 296
    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 297
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 298
    return-void
.end method

.method public final setValue(IF)V
    .locals 2

    .prologue
    .line 210
    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Exceeds transform dimensions."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    aput p2, v0, p1

    .line 212
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setValue(IIF)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-ge p1, v4, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Exceeds row limit."

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 223
    if-ge p2, v4, :cond_1

    :goto_1
    const-string v0, "Exceeds column limit."

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 225
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v1, v2

    .line 223
    goto :goto_1
.end method

.method public final toArray()[F
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    iget-object v7, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    iget-object v8, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->mTransform:[F

    const/16 v9, 0x8

    aget v8, v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x99

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
