.class public Lcom/android/camera/ui/ShadowDrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowDrawerArrowDrawable.java"


# static fields
.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private arrowHeadLength:F

.field private arrowShaftLength:F

.field private barGap:F

.field private barLength:F

.field private direction:I

.field private maxCutForBarSize:F

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private progress:F

.field private final size:I

.field private spin:Z

.field private verticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 113
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    .line 102
    iput-boolean v7, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->verticalMirror:Z

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->direction:I

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle:[I

    const v3, 0x7f0100e6

    const v4, 0x7f0e00f8

    .line 122
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->setColor(I)V

    .line 129
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1230
    iget-object v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 1231
    iget-object v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1232
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    sget v1, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->maxCutForBarSize:F

    .line 1233
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 130
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1294
    iget-boolean v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->spin:Z

    if-eq v2, v1, :cond_1

    .line 1295
    iput-boolean v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->spin:Z

    .line 1296
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 132
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 2261
    iget v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barGap:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 2262
    iput v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barGap:F

    .line 2263
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 134
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->size:I

    .line 136
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barLength:F

    .line 138
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->arrowHeadLength:F

    .line 139
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->arrowShaftLength:F

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 5

    .prologue
    .line 8038
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 8039
    const v0, 0x42ad6667    # 86.700005f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8040
    shl-int/lit8 v0, v0, 0x18

    .line 8041
    const v1, 0x7f0c01b3

    .line 8042
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c01b4

    .line 8043
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c01b5

    .line 8044
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 8156
    iget-object v4, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 8157
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 8046
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->setColor(I)V

    .line 8047
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 323
    iget v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->direction:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 343
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->arrowHeadLength:F

    iget v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->arrowHeadLength:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 344
    iget v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barLength:F

    iget v4, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 2452
    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float v4, v2, v1

    .line 345
    iget v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barLength:F

    iget v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->arrowShaftLength:F

    iget v5, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 3452
    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    .line 347
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->maxCutForBarSize:F

    iget v6, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 4452
    sub-float/2addr v2, v1

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 347
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    .line 349
    const/4 v1, 0x0

    sget v2, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v7, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 5452
    sub-float/2addr v2, v1

    mul-float/2addr v2, v7

    add-float v7, v1, v2

    .line 352
    if-eqz v0, :cond_3

    .line 353
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-eqz v0, :cond_4

    const/high16 v1, 0x43340000    # 180.0f

    :goto_2
    iget v8, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 6452
    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v1, v2

    .line 355
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v2, v8

    .line 356
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v4, v8

    .line 358
    iget-object v7, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 359
    iget v7, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barGap:F

    iget-object v8, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    .line 360
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->maxCutForBarSize:F

    neg-float v8, v8

    iget v9, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 7452
    sub-float/2addr v8, v7

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 362
    neg-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 364
    iget-object v9, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    add-float v10, v8, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 365
    iget-object v9, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 368
    iget-object v5, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 369
    iget-object v5, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 372
    iget-object v5, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    neg-float v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 373
    iget-object v5, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 375
    iget-object v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 381
    iget-object v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 382
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barGap:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 383
    div-int/lit8 v4, v4, 0x4

    shl-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    .line 384
    float-to-double v4, v4

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    iget v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->barGap:F

    float-to-double v8, v2

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 386
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 387
    iget-boolean v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->spin:Z

    if-eqz v2, :cond_6

    .line 388
    iget-boolean v2, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->verticalMirror:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 392
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 395
    return-void

    .line 325
    :pswitch_1
    const/4 v0, 0x0

    .line 326
    goto/16 :goto_0

    .line 328
    :pswitch_2
    const/4 v0, 0x1

    .line 329
    goto/16 :goto_0

    .line 332
    :pswitch_3
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 353
    :cond_3
    const/high16 v1, -0x3ccc0000    # -180.0f

    move v2, v1

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 388
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 389
    :cond_6
    if-eqz v0, :cond_0

    .line 390
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 401
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 403
    :cond_0
    return-void
.end method

.method public final setColor(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 214
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 408
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 409
    return-void
.end method

.method public final setProgress(F)V
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 443
    iput p1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->progress:F

    .line 444
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 446
    :cond_0
    return-void
.end method

.method public final setVerticalMirror(Z)V
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->verticalMirror:Z

    if-eq v0, p1, :cond_0

    .line 313
    iput-boolean p1, p0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->verticalMirror:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->invalidateSelf()V

    .line 316
    :cond_0
    return-void
.end method
