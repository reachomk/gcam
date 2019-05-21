.class public Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;
.super Ljava/lang/Object;
.source "VideoSwipeHintUi.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final chevronAnimation:Landroid/animation/AnimatorSet;

.field private final chevronIcon:Landroid/view/View;

.field private final fadeInAnimation:Landroid/animation/ObjectAnimator;

.field private final fadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private final hintView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/views/CameraActivityUi;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2029
    invoke-virtual {p1}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f110183

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->hintView:Landroid/view/View;

    .line 2030
    invoke-virtual {p1}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f110185

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->chevronIcon:Landroid/view/View;

    .line 2031
    const v0, 0x7f060024

    .line 2032
    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->chevronAnimation:Landroid/animation/AnimatorSet;

    .line 2033
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->chevronAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->chevronIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2034
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->hintView:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->buildFadeInAnimation(Landroid/content/Context;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 2035
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->hintView:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->buildFadeOutAnimation(Landroid/content/Context;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 2036
    return-void
.end method

.method private static buildFadeInAnimation(Landroid/content/Context;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 2051
    const v0, 0x7f060025

    .line 2052
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 2053
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2054
    new-instance v1, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$1;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2062
    return-object v0
.end method

.method private static buildFadeOutAnimation(Landroid/content/Context;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 2066
    const v0, 0x7f060026

    .line 2067
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 2068
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2069
    new-instance v1, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$2;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2076
    return-object v0
.end method


# virtual methods
.method public hideHint()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->chevronAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1048
    return-void
.end method

.method public showHint()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1041
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->chevronAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1042
    return-void
.end method
