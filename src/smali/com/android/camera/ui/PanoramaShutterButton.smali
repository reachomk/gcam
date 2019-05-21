.class public Lcom/android/camera/ui/PanoramaShutterButton;
.super Lcom/android/camera/ui/PrimaryShutterButton;
.source "PanoramaShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;
    }
.end annotation


# instance fields
.field private final cancelButtonColor:I

.field private final confirmButtonColor:I

.field private final linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 25
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 25
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/PrimaryShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoramaShutterButton;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoramaShutterButton;->confirmButtonColor:I

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e7

    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoramaShutterButton;->cancelButtonColor:I

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PanoramaShutterButton;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/ui/PanoramaShutterButton;->confirmButtonColor:I

    return v0
.end method


# virtual methods
.method public final transitionToConfirm()Z
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/android/camera/ui/PanoramaShutterButton;->cancelButtonColor:I

    invoke-super {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->transitionToConfirm(I)Z

    move-result v1

    .line 45
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PanoramaShutterButton;->setEnabled(Z)V

    .line 46
    return v1

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final transitionToReview()V
    .locals 6

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;

    iget v1, p0, Lcom/android/camera/ui/PanoramaShutterButton;->baseElevationOffset:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;-><init>(Lcom/android/camera/ui/PanoramaShutterButton;II)V

    .line 55
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaShutterButton;->getPhotoCirclePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 58
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 59
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v4, p0, Lcom/android/camera/ui/PanoramaShutterButton;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    new-instance v4, Lcom/android/camera/ui/PanoramaShutterButton$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/camera/ui/PanoramaShutterButton$1;-><init>(Lcom/android/camera/ui/PanoramaShutterButton;Landroid/animation/ArgbEvaluator;ILcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PanoramaShutterButton;->setEnabled(Z)V

    .line 74
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    return-void

    .line 58
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
