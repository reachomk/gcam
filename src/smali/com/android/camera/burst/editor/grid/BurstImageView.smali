.class public Lcom/android/camera/burst/editor/grid/BurstImageView;
.super Landroid/widget/ImageView;
.source "BurstImageView.java"


# static fields
.field private static sBestShot:Landroid/graphics/Bitmap;


# instance fields
.field private isBestShot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->initialize(Landroid/content/res/Resources;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->initialize(Landroid/content/res/Resources;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->initialize(Landroid/content/res/Resources;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->initialize(Landroid/content/res/Resources;)V

    .line 49
    return-void
.end method

.method private static initialize(Landroid/content/res/Resources;)V
    .locals 9

    .prologue
    .line 90
    sget-object v0, Lcom/android/camera/burst/editor/grid/BurstImageView;->sBestShot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 91
    const v0, 0x7f020124

    .line 1100
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1101
    const v0, 0x7f0c01a8

    .line 1102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1104
    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v8

    int-to-float v2, v8

    int-to-float v3, v8

    const v4, 0x7f0b0209

    .line 1109
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 1112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1113
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1115
    mul-int/lit8 v0, v8, 0x2

    .line 1116
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1117
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1118
    int-to-float v4, v8

    int-to-float v5, v8

    int-to-float v6, v8

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1125
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1126
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v4, 0x0

    .line 1123
    invoke-virtual {v3, v7, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    sput-object v2, Lcom/android/camera/burst/editor/grid/BurstImageView;->sBestShot:Landroid/graphics/Bitmap;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public final isBestShot()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/grid/BurstImageView;->isBestShot:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/grid/BurstImageView;->isBestShot:Z

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_3

    .line 72
    new-array v0, v3, [F

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    aput v6, v0, v5

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 74
    aget v2, v0, v4

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 75
    int-to-float v1, v1

    aput v1, v0, v4

    .line 77
    :cond_0
    aget v1, v0, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    .line 78
    aput v6, v0, v5

    .line 84
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/camera/burst/editor/grid/BurstImageView;->sBestShot:Landroid/graphics/Bitmap;

    aget v2, v0, v4

    sget-object v3, Lcom/android/camera/burst/editor/grid/BurstImageView;->sBestShot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aget v0, v0, v5

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    :cond_2
    return-void

    .line 81
    :cond_3
    new-array v0, v3, [F

    int-to-float v1, v1

    aput v1, v0, v4

    aput v6, v0, v5

    goto :goto_0
.end method

.method public final setIsBestShot(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/camera/burst/editor/grid/BurstImageView;->isBestShot:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->postInvalidate()V

    .line 58
    return-void
.end method
