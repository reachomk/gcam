.class public Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;
.super Landroid/widget/FrameLayout;
.source "FilmstripTransitionLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

.field private filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

.field private filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

.field private roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

.field private systemWindowInsetRect:Landroid/graphics/Rect;

.field private final transitionInAnimator:Landroid/animation/ValueAnimator;

.field private transitionInAnimatorCancelled:Z

.field private transitionInListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

.field private final transitionOutAnimator:Landroid/animation/ValueAnimator;

.field private transitionOutAnimatorCancelled:Z

.field private transitionOutListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "FSTransLayout"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x15e

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimatorCancelled:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimatorCancelled:Z

    .line 57
    iput-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 58
    iput-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundAlpha(F)V

    .line 74
    const v0, 0x10c000d

    .line 75
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 77
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    .line 78
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;-><init>(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$2;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$2;-><init>(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    .line 125
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;-><init>(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;-><init>(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    return-void

    .line 77
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 124
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;F)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transformThumbnail(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/widget/RoundedThumbnailView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimatorCancelled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;Z)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimatorCancelled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimatorCancelled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;Z)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimatorCancelled:Z

    return v0
.end method

.method private final createTransformBuilder$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_()Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 9

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->systemWindowInsetRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v1, Landroid/util/SizeF;

    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    .line 358
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    .line 359
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v0, v2}, Landroid/util/SizeF;-><init>(FF)V

    .line 360
    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v0, v3}, Landroid/util/SizeF;-><init>(FF)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->getThumbnailFinalDiameter()F

    move-result v5

    .line 364
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v0

    .line 365
    iget-object v3, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getAbsoluteTop(Landroid/view/View;)I

    move-result v3

    .line 366
    iget-object v4, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v4}, Lcom/android/camera/widget/RoundedThumbnailView;->getRippleRingMaxDiameterDp()F

    move-result v6

    .line 368
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v7, v0

    int-to-float v8, v3

    int-to-float v0, v0

    add-float/2addr v0, v6

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-direct {v4, v7, v8, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 374
    new-instance v0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    iget-object v3, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->systemWindowInsetRect:Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;-><init>(Landroid/util/SizeF;Landroid/util/SizeF;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method private final getReadyForTransitionOut()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->createTransformBuilder$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_()Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 391
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transformToBeginPosition()V

    .line 392
    return-void
.end method

.method private final setBackgroundAlpha(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundColor(I)V

    .line 450
    return-void
.end method

.method private final transformThumbnail(F)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getScale(F)F

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    .line 340
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getTranslation(F)Landroid/graphics/PointF;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    .line 344
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getRadius(F)F

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setRadius(F)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBackgroundAlpha(F)F

    move-result v0

    .line 350
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundAlpha(F)V

    .line 351
    return-void
.end method

.method private final transformToBeginPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getScale(F)F

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    .line 424
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getTranslation(F)Landroid/graphics/PointF;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    .line 427
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getRadius(F)F

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setRadius(F)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBackgroundAlpha(F)F

    move-result v0

    .line 431
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundAlpha(F)V

    .line 432
    return-void
.end method

.method private final transformToEndPosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 436
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getScale(F)F

    move-result v0

    .line 437
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    .line 438
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getTranslation(F)Landroid/graphics/PointF;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    .line 441
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    .line 442
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getRadius(F)F

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setRadius(F)V

    .line 444
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBackgroundAlpha(F)F

    move-result v0

    .line 445
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundAlpha(F)V

    .line 446
    return-void
.end method


# virtual methods
.method public final cancelAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    sget-object v0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->TAG:Ljava/lang/String;

    const-string v1, "cancelAnimations"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iput-boolean v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimatorCancelled:Z

    .line 296
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iput-boolean v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimatorCancelled:Z

    .line 300
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 175
    const v0, 0x7f1100d7

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    .line 177
    return-void
.end method

.method public final onSwipeOutBegin()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->getReadyForTransitionOut()V

    .line 263
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 264
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBeginScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 265
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBeginTranslation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 266
    invoke-virtual {v3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBeginTranslation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 267
    return-void

    :cond_0
    move v0, v2

    .line 259
    goto :goto_0

    :cond_1
    move v1, v2

    .line 260
    goto :goto_1
.end method

.method public final onSwipeOutDrag(FFF)Z
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->onSwipeOutDrag(FFF)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentScale()F

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    .line 323
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentTranslation()Landroid/graphics/PointF;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    .line 327
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentBackgroundAlpha()F

    move-result v0

    .line 330
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundAlpha(F)V

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public final pauseAnimations()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->TAG:Ljava/lang/String;

    const-string v1, "pauseAnimations"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 289
    :cond_1
    return-void
.end method

.method public final resumeAnimations()V
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->TAG:Ljava/lang/String;

    const-string v1, "resumeAnimations"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 278
    :cond_1
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionThumbnailView:Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->createTransformBuilder$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_()Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 203
    :cond_0
    return-void
.end method

.method public final setRoundedThumbnailView(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0

    .prologue
    .line 180
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 182
    return-void
.end method

.method public final setSystemWindowInset(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->systemWindowInsetRect:Landroid/graphics/Rect;

    .line 186
    return-void
.end method

.method public final snapBackToFilmstrip(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;)V
    .locals 3

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 1395
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->createTransformBuilder$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_()Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 1397
    invoke-virtual {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    move-result-object v1

    .line 1398
    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 1400
    invoke-virtual {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentScale()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endScale$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 1401
    invoke-virtual {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentTranslation()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endTranslation$51662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_(Landroid/graphics/PointF;)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 1402
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->getBeginRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endRadius$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 1403
    invoke-virtual {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentBackgroundAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endBackgroundAlpha$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 1404
    invoke-virtual {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 1405
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transformToEndPosition()V

    .line 227
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 231
    return-void
.end method

.method public final swapOutOfFilmstrip(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;)V
    .locals 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 1409
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->createTransformBuilder$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_()Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 1411
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 1413
    invoke-virtual {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginScale$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 1414
    invoke-virtual {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentTranslation()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginTranslation$51662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_(Landroid/graphics/PointF;)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 1415
    invoke-virtual {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;->getCurrentBackgroundAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginBackgroundAlpha$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 1416
    invoke-virtual {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 1417
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transformToBeginPosition()V

    .line 252
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 253
    return-void
.end method

.method public final transitionIntoFilmstrip(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 1383
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->createTransformBuilder$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_()Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;

    move-result-object v0

    .line 1384
    invoke-virtual {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionTransform:Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    .line 1385
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transformToEndPosition()V

    .line 213
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->filmstripTransitionDragTransform$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FEHP62RJJD5Q6IRRE5T36IR3DEDQ74QBGAHP62RJJD5Q6IRRE8HP62PQKE9GMSSR6DTP6QEO_:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;

    .line 217
    return-void
.end method

.method public final transitionOutOfFilmstrip(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;)V
    .locals 1

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutListener:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 240
    invoke-direct {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->getReadyForTransitionOut()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->transitionOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 242
    return-void
.end method
