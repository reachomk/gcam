.class public final Lcom/android/camera/ui/AnimatedCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedCircleDrawable.java"


# static fields
.field private static DRAWABLE_MAX_LEVEL:I


# instance fields
.field private alpha:I

.field private canvasHeight:I

.field private canvasWidth:I

.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private smallRadiusTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x2710

    sput v0, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->alpha:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->smallRadiusTarget:I

    .line 30
    return-void
.end method

.method private static diagonalLength(II)I
    .locals 2

    .prologue
    .line 160
    mul-int v0, p0, p0

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static map(IIIII)I
    .locals 1

    .prologue
    .line 156
    mul-int v0, p0, p4

    div-int/2addr v0, p2

    return v0
.end method

.method private final updatePaintColor()V
    .locals 3

    .prologue
    .line 42
    iget v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->alpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->color:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->invalidateSelf()V

    .line 45
    return-void
.end method


# virtual methods
.method public final animateToFullSize()V
    .locals 4

    .prologue
    .line 105
    .line 1114
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1115
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1116
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1117
    new-instance v1, Lcom/android/camera/ui/AnimatedCircleDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AnimatedCircleDrawable$2;-><init>(Lcom/android/camera/ui/AnimatedCircleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1127
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    return-void
.end method

.method public final animateToSmallRadius(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->smallRadiusTarget:I

    iget v1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->canvasWidth:I

    iget v2, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->canvasHeight:I

    .line 85
    invoke-static {v1, v2}, Lcom/android/camera/ui/AnimatedCircleDrawable;->diagonalLength(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    .line 82
    invoke-static {v0, v3, v1, v3, v2}, Lcom/android/camera/ui/AnimatedCircleDrawable;->map(IIIII)I

    move-result v0

    .line 88
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 89
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    new-instance v1, Lcom/android/camera/ui/AnimatedCircleDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AnimatedCircleDrawable$1;-><init>(Lcom/android/camera/ui/AnimatedCircleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 102
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->canvasWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->canvasHeight:I

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v0

    sget v1, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/AnimatedCircleDrawable;->diagonalLength(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 136
    invoke-static {v0, v5, v1, v5, v2}, Lcom/android/camera/ui/AnimatedCircleDrawable;->map(IIIII)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->radius:I

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    return-void
.end method

.method public final getColor()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->color:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x3

    return v0
.end method

.method public final onLevelChange(I)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->invalidateSelf()V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->alpha:I

    .line 56
    invoke-direct {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->updatePaintColor()V

    .line 57
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->color:I

    .line 34
    invoke-direct {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->updatePaintColor()V

    .line 35
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
