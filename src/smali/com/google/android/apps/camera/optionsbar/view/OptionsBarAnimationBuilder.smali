.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;
.super Ljava/lang/Object;
.source "OptionsBarAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;
    }
.end annotation


# instance fields
.field private final backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;

.field private final closedLayout:Landroid/view/View;

.field private final closedLayoutFadeIn:Landroid/animation/Animator;

.field private final closedLayoutFadeOut:Landroid/animation/Animator;

.field private final leftButtonViewMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

.field private final maxTranslationDistance:F

.field private final openedLayoutFadeIn:Landroid/animation/Animator;

.field private final openedLayoutFadeOut:Landroid/animation/Animator;

.field private final openedMenuBackgroundColor:I

.field private final scalableCircle:Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayout:Landroid/view/View;

    .line 57
    iput-object p4, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->leftButtonViewMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    .line 59
    invoke-static {p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewInAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->openedLayoutFadeIn:Landroid/animation/Animator;

    .line 60
    invoke-static {p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewOutAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->openedLayoutFadeOut:Landroid/animation/Animator;

    .line 61
    invoke-static {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewOutAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayoutFadeOut:Landroid/animation/Animator;

    .line 62
    invoke-static {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewInAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayoutFadeIn:Landroid/animation/Animator;

    .line 64
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->maxTranslationDistance:F

    .line 67
    const v1, 0x7f0b0176

    .line 1336
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 67
    iput v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->openedMenuBackgroundColor:I

    .line 69
    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 70
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    invoke-direct {v1, v0, p3}, Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;-><init>(ILandroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->scalableCircle:Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->scalableCircle:Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;->setVisible(Z)V

    .line 72
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->scalableCircle:Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->openedMenuBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->leftButtonViewMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->scalableCircle:Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method private final createCircleAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->scalableCircle:Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;->setOriginView(Landroid/view/View;)V

    .line 243
    if-eqz p2, :cond_0

    .line 244
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 248
    :goto_0
    const-wide/16 v2, 0x10b

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$4;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    if-eqz p2, :cond_1

    .line 258
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$5;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    :goto_1
    return-object v0

    .line 246
    :cond_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$6;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 244
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 246
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final createSingleViewTranslationAnimation(ZILjava/util/List;FLandroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;F",
            "Landroid/view/View;",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x10b

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    .line 201
    invoke-static {p5}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->getViewCenter(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float/2addr v0, p4

    .line 202
    iget v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->maxTranslationDistance:F

    mul-float/2addr v0, v1

    .line 204
    if-eqz p1, :cond_0

    .line 205
    new-array v1, v5, [F

    aput v2, v1, v3

    aput v0, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 209
    :goto_0
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$3;

    invoke-direct {v1, p6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$3;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void

    .line 207
    :cond_0
    new-array v1, v5, [F

    aput v0, v1, v3

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private final createTranslationAnimator(Landroid/view/View;Ljava/util/Set;Z)Landroid/animation/Animator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->getViewCenter(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2225
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le v2, v0, :cond_1

    .line 2226
    int-to-float v4, v2

    .line 164
    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 165
    if-eq v5, p1, :cond_0

    .line 169
    new-instance v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$1;

    invoke-direct {v6, v5}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$1;-><init>(Landroid/view/View;)V

    move-object v0, p0

    move v1, p3

    .line 175
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createSingleViewTranslationAnimation(ZILjava/util/List;FLandroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;)V

    goto :goto_1

    .line 2228
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v4, v0

    goto :goto_0

    .line 179
    :cond_2
    new-instance v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$2;

    invoke-direct {v6, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$2;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->leftButtonViewMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->getMagnetView()Landroid/view/View;

    move-result-object v5

    move-object v0, p0

    move v1, p3

    .line 185
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createSingleViewTranslationAnimation(ZILjava/util/List;FLandroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;)V

    .line 188
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 189
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 190
    return-object v0
.end method

.method private static fadeViewInAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 288
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$8;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    return-object v0

    .line 280
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static fadeViewOutAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$9;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$10;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 315
    return-object v0

    .line 301
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static getViewCenter(Landroid/view/View;)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 323
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 324
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 325
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public final buildCloseAnimation(Landroid/view/View;Ljava/util/Set;)Landroid/animation/Animator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayoutFadeIn:Landroid/animation/Animator;

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->leftButtonViewMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->getIronView()Landroid/view/View;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayoutFadeIn:Landroid/animation/Animator;

    .line 122
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 123
    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewInAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->openedLayoutFadeOut:Landroid/animation/Animator;

    .line 128
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 130
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createTranslationAnimator(Landroid/view/View;Ljava/util/Set;Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 131
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createCircleAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    return-object v1
.end method

.method public final buildOpenAnimation(Landroid/view/View;Ljava/util/Set;)Landroid/animation/Animator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayoutFadeOut:Landroid/animation/Animator;

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->leftButtonViewMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->getIronView()Landroid/view/View;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->closedLayoutFadeOut:Landroid/animation/Animator;

    .line 93
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 94
    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewOutAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 97
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 99
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->openedLayoutFadeIn:Landroid/animation/Animator;

    .line 100
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 101
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createTranslationAnimator(Landroid/view/View;Ljava/util/Set;Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 102
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createCircleAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    return-object v1
.end method
