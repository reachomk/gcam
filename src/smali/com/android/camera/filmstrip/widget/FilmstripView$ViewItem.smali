.class final Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;
    }
.end annotation


# instance fields
.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private data:Lcom/android/camera/data/FilmstripItem;

.field private dim:Landroid/graphics/Point;

.field private final filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

.field private index:I

.field private leftPosition:I

.field private lockAtFullOpacity:Z

.field private renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

.field private translationXAnimator:Landroid/animation/ValueAnimator;

.field private translationYAnimator:Landroid/animation/ValueAnimator;

.field private final view:Landroid/view/View;

.field private final viewArea:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 221
    iput-object p2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->viewArea:Landroid/graphics/RectF;

    .line 224
    iput p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    .line 225
    iput-object p3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    .line 228
    invoke-interface {p3}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    .line 229
    invoke-interface {p3}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    .line 230
    invoke-interface {p3}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v2

    .line 231
    invoke-virtual {p4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredWidth()I

    move-result v3

    .line 232
    invoke-virtual {p4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredHeight()I

    move-result v4

    .line 227
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v0

    .line 1264
    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->dim:Landroid/graphics/Point;

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->leftPosition:I

    .line 235
    sget v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->lockAtFullOpacity:Z

    .line 238
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotX(F)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotY(F)V

    .line 240
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Lcom/android/camera/filmstrip/widget/FilmstripView;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    return-object v0
.end method

.method private final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    return-object v0
.end method

.method private static runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V
    .locals 3

    .prologue
    .line 480
    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-virtual {p0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 485
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 486
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final addViewToHierarchy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->addView(Landroid/view/View;)V

    .line 531
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 532
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 533
    invoke-virtual {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationY(F)V

    .line 535
    return-void
.end method

.method public final animateAlpha(FJLandroid/animation/TimeInterpolator;)V
    .locals 7

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->alphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 463
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$3;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$3;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 2394
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 471
    const-wide/16 v4, 0x190

    move v3, p1

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    .line 472
    return-void
.end method

.method public final animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
    .locals 7

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    .line 417
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$1;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x190

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    .line 430
    return-void
.end method

.method public final animateTranslationY(FJLandroid/animation/TimeInterpolator;)V
    .locals 7

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationYAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationYAnimator:Landroid/animation/ValueAnimator;

    .line 442
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationYAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$2;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$2;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v2

    const-wide/16 v4, 0x190

    move v3, p1

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    .line 451
    return-void
.end method

.method public final areaContains(FF)Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->viewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public final bringViewToFront()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->bringChildToFront(Landroid/view/View;)V

    .line 551
    return-void
.end method

.method public final getAdapterIndex()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    return v0
.end method

.method public final getCenterX()I
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->leftPosition:I

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->dim:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getData()Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    return-object v0
.end method

.method public final getHitRect(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 501
    return-void
.end method

.method public final getLeftPosition()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->leftPosition:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final getTranslationX()F
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getTranslationY()F
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getViewRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 582
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 583
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 584
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 585
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 586
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 587
    return-object v0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final layoutWithTranslationX(Landroid/graphics/Rect;IF)V
    .locals 6

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    .line 605
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 608
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->leftPosition:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    add-float/2addr v0, v2

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 609
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 2575
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 611
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setScaleX(F)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setScaleY(F)V

    .line 615
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 616
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 617
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->viewArea:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    add-float/2addr v0, v5

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    add-float/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 618
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lockAtFullOpacity()V
    .locals 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->lockAtFullOpacity:Z

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->lockAtFullOpacity:Z

    .line 317
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 319
    :cond_0
    return-void
.end method

.method public final measure(II)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 572
    return-void
.end method

.method final postScale(FFFII)V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 648
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 3557
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    .line 652
    sub-float v1, p1, v1

    sub-float v3, p3, v4

    mul-float/2addr v1, v3

    sub-float v1, v0, v1

    .line 3564
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    .line 653
    sub-float v0, p2, v0

    sub-float v3, p3, v4

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 654
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float v3, v0, p3

    .line 655
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float v4, v0, p3

    move-object v0, p0

    move v5, p4

    move v6, p5

    .line 656
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    .line 657
    return-void
.end method

.method public final removeViewFromHierarchy()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->removeView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/camera/data/FilmstripItem;->recycle(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$300(Lcom/android/camera/filmstrip/widget/FilmstripView;Landroid/view/View;I)V

    .line 544
    return-void
.end method

.method public final renderFullRes()V
    .locals 4

    .prologue
    .line 306
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    sget v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->FULL_RES$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    if-eq v0, v1, :cond_0

    .line 307
    sget v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->FULL_RES$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 309
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[ViewItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] data.renderFullRes()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/camera/data/FilmstripItem;->renderFullRes(Landroid/view/View;)V

    .line 312
    :cond_0
    return-void
.end method

.method public final renderThumbnail()V
    .locals 4

    .prologue
    .line 277
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    sget v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    if-eq v0, v1, :cond_0

    .line 278
    sget v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 280
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[ViewItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] data.renderThumbnail()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/camera/data/FilmstripItem;->renderThumbnail(Landroid/view/View;)V

    .line 283
    :cond_0
    return-void
.end method

.method public final renderThumbnailWithPlaceholder(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 295
    sget v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 296
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[ViewItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] data.renderThumbnailWithPlaceholder()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/FilmstripItem;->renderThumbnailWithPlaceholder(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 298
    return-void
.end method

.method final resetTransform()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 684
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 685
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 686
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 687
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->lockAtFullOpacity:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 388
    :cond_0
    return-void
.end method

.method public final setData(Lcom/android/camera/data/FilmstripItem;)V
    .locals 5

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    .line 249
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    .line 250
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    .line 251
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    .line 252
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 253
    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 254
    invoke-virtual {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredHeight()I

    move-result v4

    .line 249
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v0

    .line 2264
    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->dim:Landroid/graphics/Point;

    .line 2268
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    sget v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->TINY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    if-eq v0, v1, :cond_0

    .line 2269
    sget v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->TINY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderSize$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 2271
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[ViewItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] data.renderTiny()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->data:Lcom/android/camera/data/FilmstripItem;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/camera/data/FilmstripItem;->renderTiny(Landroid/view/View;)V

    .line 256
    :cond_0
    return-void
.end method

.method public final setDim(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->dim:Landroid/graphics/Point;

    .line 265
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .prologue
    .line 336
    iput p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    .line 337
    return-void
.end method

.method public final setLeftPosition(I)V
    .locals 0

    .prologue
    .line 343
    iput p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->leftPosition:I

    .line 344
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 379
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 372
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 691
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->index:I

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->leftPosition:I

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->viewArea:Landroid/graphics/RectF;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 700
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 702
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 704
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 706
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 708
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0xc8

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "AdapterIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n\t left = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t viewArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t centerX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view MeasuredSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method public final translateXScaledBy(F)V
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->filmstrip:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 494
    return-void
.end method

.method public final unlockOpacity()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->lockAtFullOpacity:Z

    .line 323
    return-void
.end method

.method final updateTransform(FFFFII)V
    .locals 5

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 667
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    .line 668
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    .line 671
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 669
    invoke-static {v2, p5, p6}, Lcom/android/camera/ui/ZoomView;->adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 675
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->setScaleY(F)V

    .line 676
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 677
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 678
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 679
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 680
    return-void
.end method
