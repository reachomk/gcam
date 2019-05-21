.class public final Lcom/android/camera/util/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"


# static fields
.field private static final ASPECT_RATIO_16x9:Lcom/android/camera/util/AspectRatio;

.field private static final ASPECT_RATIO_4x3:Lcom/android/camera/util/AspectRatio;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_4x3:Lcom/android/camera/util/AspectRatio;

    .line 16
    const/16 v0, 0x10

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_16x9:Lcom/android/camera/util/AspectRatio;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/camera/util/AspectRatio;->width:I

    .line 32
    iput p2, p0, Lcom/android/camera/util/AspectRatio;->height:I

    .line 33
    return-void
.end method

.method private final isPortrait()Z
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->width:I

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->height:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(II)Lcom/android/camera/util/AspectRatio;
    .locals 4

    .prologue
    .line 36
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 37
    div-int v1, p0, v0

    .line 38
    div-int v0, p1, v0

    .line 39
    new-instance v2, Lcom/android/camera/util/AspectRatio;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/util/AspectRatio;-><init>(II)V

    return-object v2
.end method

.method public static of(Landroid/util/Size;)Lcom/android/camera/util/AspectRatio;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public static of16x9()Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_16x9:Lcom/android/camera/util/AspectRatio;

    return-object v0
.end method

.method public static of4x3()Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_4x3:Lcom/android/camera/util/AspectRatio;

    return-object v0
.end method

.method private transpose()Lcom/android/camera/util/AspectRatio;
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->height:I

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->width:I

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final asLandscape()Lcom/android/camera/util/AspectRatio;
    .locals 2

    .prologue
    .line 141
    .line 3246
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->width:I

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->height:I

    if-lt v0, v1, :cond_0

    .line 144
    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/util/AspectRatio;->transpose()Lcom/android/camera/util/AspectRatio;

    move-result-object p0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    instance-of v2, p1, Lcom/android/camera/util/AspectRatio;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 112
    :cond_2
    check-cast p1, Lcom/android/camera/util/AspectRatio;

    .line 114
    iget v2, p0, Lcom/android/camera/util/AspectRatio;->height:I

    iget v3, p1, Lcom/android/camera/util/AspectRatio;->height:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 115
    :cond_3
    iget v2, p0, Lcom/android/camera/util/AspectRatio;->width:I

    iget v3, p1, Lcom/android/camera/util/AspectRatio;->width:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getLargestCenterCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 206
    .line 5054
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    .line 5178
    iget v1, p0, Lcom/android/camera/util/AspectRatio;->width:I

    iget v2, v0, Lcom/android/camera/util/AspectRatio;->height:I

    mul-int/2addr v1, v2

    iget v0, v0, Lcom/android/camera/util/AspectRatio;->width:I

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->height:I

    mul-int/2addr v0, v2

    if-le v1, v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->height:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->width:I

    div-int/2addr v0, v1

    .line 211
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 212
    add-int v2, v1, v0

    .line 213
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 214
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v0

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    :goto_0
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->width:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->height:I

    div-int/2addr v0, v1

    .line 219
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 220
    add-int v2, v1, v0

    .line 221
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 222
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v0

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public final getLargestCenterCrop(Lcom/android/camera/util/Size;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 122
    return v0
.end method

.method public final isAlmostEqual(Lcom/android/camera/util/AspectRatio;D)Z
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/camera/util/AspectRatio;->withOrientationOf(Lcom/android/camera/util/AspectRatio;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f9999999999999aL    # 0.025

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toDouble()D
    .locals 4

    .prologue
    .line 85
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->width:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->height:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final toFloat()F
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    const-string v0, "AspectRatio[%d:%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2077
    iget v3, p0, Lcom/android/camera/util/AspectRatio;->width:I

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 3073
    iget v3, p0, Lcom/android/camera/util/AspectRatio;->height:I

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withOrientationOf(Lcom/android/camera/util/AspectRatio;)Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 164
    invoke-direct {p1}, Lcom/android/camera/util/AspectRatio;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4152
    invoke-direct {p0}, Lcom/android/camera/util/AspectRatio;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4153
    :goto_0
    return-object p0

    .line 4155
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/util/AspectRatio;->transpose()Lcom/android/camera/util/AspectRatio;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object p0

    goto :goto_0
.end method
