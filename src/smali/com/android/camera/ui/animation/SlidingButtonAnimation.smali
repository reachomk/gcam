.class public final Lcom/android/camera/ui/animation/SlidingButtonAnimation;
.super Ljava/lang/Object;
.source "SlidingButtonAnimation.java"


# instance fields
.field private final fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private orientation:I

.field private final sideControlsSlideDelta:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p2, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->orientation:I

    .line 27
    const v0, 0x10c000d

    .line 28
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->sideControlsSlideDelta:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/animation/SlidingButtonAnimation;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->orientation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/animation/SlidingButtonAnimation;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->sideControlsSlideDelta:I

    return v0
.end method


# virtual methods
.method public final getAnimator(Landroid/view/View;IZ)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 54
    if-eqz p3, :cond_1

    .line 55
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 59
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    if-eqz p3, :cond_0

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    new-instance v1, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;-><init>(Lcom/android/camera/ui/animation/SlidingButtonAnimation;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    new-instance v1, Lcom/android/camera/ui/animation/SlidingButtonAnimation$2;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/animation/SlidingButtonAnimation$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    return-object v0

    .line 57
    :cond_1
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 55
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final setOrientation(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->orientation:I

    .line 41
    return-void
.end method
