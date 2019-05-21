.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripViewController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilmstripViewControllerImpl"
.end annotation


# instance fields
.field private canStopScroll:Z

.field private flingAnimator:Landroid/animation/AnimatorSet;

.field private final scaleAnimator:Landroid/animation/ValueAnimator;

.field private final scaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final scrollGesture:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

.field private final scrollListener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

.field final synthetic this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

.field private zoomAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 5

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2124
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollListener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    .line 2167
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$2;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2180
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2181
    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    .line 2183
    invoke-static {p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    .line 2184
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollListener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollGesture:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    .line 2187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->canStopScroll:Z

    .line 2189
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 2190
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2191
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2192
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2223
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->cancelZoomAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->cancelFlingAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->cancelLoadingZoomedImage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->setSurroundingViewsVisible(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScale()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)Z
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->canStopScroll:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->loadZoomedImage()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAt(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)F
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->getCurrentDataMaxScale(Z)F

    move-result v0

    return v0
.end method

.method private final cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isFlingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2582
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2584
    :cond_0
    return-void
.end method

.method private final cancelLoadingZoomedImage()V
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4400(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 2661
    return-void
.end method

.method private final cancelZoomAnimation()V
    .locals 1

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isZoomAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2590
    :cond_0
    return-void
.end method

.method private final getCurrentDataMaxScale(Z)F
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2616
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 2617
    if-nez v1, :cond_1

    .line 2635
    :cond_0
    :goto_0
    return v0

    .line 2620
    :cond_1
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4100(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 2621
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->canZoomInPlace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2624
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2625
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 2626
    :cond_2
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2628
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2629
    if-eqz p1, :cond_0

    .line 2633
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4800(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private final goToItem(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2511
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, p1

    .line 2512
    if-nez v2, :cond_0

    .line 2518
    :goto_0
    return v0

    .line 2515
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    .line 2516
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    const/16 v3, 0x320

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollToPosition(IIZ)V

    move v0, v1

    .line 2518
    goto :goto_0
.end method

.method private final loadZoomedImage()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2639
    .line 5675
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$5000(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 2639
    if-nez v0, :cond_1

    .line 2657
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v1, v0, v3

    .line 2643
    if-eqz v1, :cond_0

    .line 2646
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4100(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 2647
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes;->canZoomInPlace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6604
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v3

    .line 6605
    if-nez v0, :cond_2

    .line 6606
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2651
    :goto_1
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 2652
    if-eqz v0, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v3, :cond_0

    .line 2655
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v2

    .line 2656
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4400(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/camera/ui/ZoomView;->loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V

    goto :goto_0

    .line 6608
    :cond_2
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4100(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method private final scaleTo(FI)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 2543
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2550
    :goto_0
    return-void

    .line 4488
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2547
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2548
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2549
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private final setSurroundingViewsVisible(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2596
    move v2, v1

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_2

    .line 2597
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v3, v0, v2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 2596
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2598
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 2601
    :cond_2
    return-void
.end method

.method private final stopScale()V
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2489
    return-void
.end method

.method private final zoomAt(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2278
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 2282
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->getCurrentDataMaxScale(Z)F

    move-result v2

    .line 2283
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float v1, v2, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2285
    :goto_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    .line 2286
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v3

    aput v3, v1, v4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2287
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2288
    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;FLcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2333
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2343
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2344
    return-void

    .line 2283
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public final fling(F)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2362
    invoke-virtual {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2386
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2366
    if-eqz v0, :cond_0

    .line 2370
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    div-float v1, p1, v1

    .line 3247
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3800(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v3

    .line 2371
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 2373
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->goToFilmstrip()V

    .line 2376
    :cond_2
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getWidth()I

    move-result v1

    .line 2380
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v4

    .line 3266
    add-int/lit8 v3, v3, 0x64

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v5

    add-int/2addr v5, v1

    mul-int/2addr v3, v5

    sub-int v5, v4, v3

    .line 2383
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    .line 3270
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4100(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v4

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v4

    add-int/2addr v1, v4

    mul-int/2addr v1, v3

    add-int v6, v0, v1

    .line 2385
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollGesture:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2500(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v1

    neg-float v3, p1

    float-to-int v3, v3

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method final flingInsideZoomView(FF)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x2

    .line 2389
    .line 3675
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$5000(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 2389
    if-nez v0, :cond_1

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2393
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v8

    .line 2394
    if-eqz v0, :cond_0

    .line 2414
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2416
    const-wide v2, 0x3fa99999a0000000L    # 0.05000000074505806

    float-to-double v4, v1

    const-wide v6, 0x3fd5555560000000L    # 0.3333333432674408

    .line 2417
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 2419
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v3

    mul-float/2addr v2, v3

    .line 2420
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v4

    mul-float/2addr v3, v4

    .line 2422
    new-array v4, v8, [F

    aput v2, v4, v10

    div-float v5, v1, v9

    mul-float/2addr v5, p1

    add-float/2addr v2, v5

    aput v2, v4, v11

    .line 2423
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2424
    new-array v4, v8, [F

    aput v3, v4, v10

    div-float v5, v1, v9

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v11

    .line 2425
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2427
    new-instance v4, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$6;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$6;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2439
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    .line 2440
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2441
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2442
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$7;

    invoke-direct {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2449
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2472
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public final getCurrentAdapterIndex()I
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v0

    return v0
.end method

.method public final goToFilmstrip()V
    .locals 3

    .prologue
    const v2, 0x3f333333    # 0.7f

    .line 2554
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2557
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 2560
    const/16 v0, 0x190

    invoke-direct {p0, v2, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleTo(FI)V

    .line 2562
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    .line 2563
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    .line 2565
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 2566
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    goto :goto_0
.end method

.method public final goToFirstItem()V
    .locals 2

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2672
    :goto_0
    return-void

    .line 2668
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4900(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 2671
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1400(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    goto :goto_0
.end method

.method public final goToFullScreen()V
    .locals 2

    .prologue
    .line 2572
    .line 5247
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3800(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 2572
    if-eqz v0, :cond_0

    .line 2577
    :goto_0
    return-void

    .line 2576
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scaleTo(FI)V

    goto :goto_0
.end method

.method public final goToItemAtIndex(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2523
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 2524
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4100(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 2539
    :goto_0
    return v0

    .line 2528
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    .line 2529
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    .line 2532
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v5

    add-int/2addr v2, v5

    .line 2533
    sub-int v3, p1, v3

    mul-int/2addr v2, v3

    .line 2534
    add-int/2addr v2, v4

    .line 2536
    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    .line 2537
    const/16 v3, 0x320

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollToPosition(IIZ)V

    goto :goto_0
.end method

.method public final goToNextItem()Z
    .locals 1

    .prologue
    .line 2502
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->goToItem(I)Z

    move-result v0

    return v0
.end method

.method public final goToPreviousItem()Z
    .locals 1

    .prologue
    .line 2507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->goToItem(I)Z

    move-result v0

    return v0
.end method

.method public final isFlingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrolling()Z
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollGesture:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2688
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 2689
    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    .line 2691
    invoke-virtual {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 2692
    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$900(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Lcom/android/camera/data/FilmstripItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2693
    const/4 v0, 0x1

    .line 2696
    :cond_0
    return v0

    .line 2688
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isZoomAnimationRunning()Z
    .locals 1

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scroll(F)V
    .locals 2

    .prologue
    .line 2348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2358
    :goto_0
    return-void

    .line 2351
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2500(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2502(Lcom/android/camera/filmstrip/widget/FilmstripView;I)I

    .line 2353
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2600(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 2354
    if-eqz v0, :cond_1

    .line 2355
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    goto :goto_0
.end method

.method public final scrollToPosition(IIZ)V
    .locals 3

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2498
    :goto_0
    return-void

    .line 2496
    :cond_0
    iput-boolean p3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->canStopScroll:Z

    .line 2497
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollGesture:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2500(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2500(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->startScroll(III)V

    goto :goto_0
.end method

.method public final setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3600(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    .line 2238
    return-void
.end method

.method public final setImageGap(I)V
    .locals 1

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3500(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    .line 2228
    return-void
.end method

.method public final setListener(Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3900(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V

    .line 2253
    return-void
.end method

.method public final stopScrolling(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2477
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2484
    :goto_0
    return v0

    .line 2479
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->canStopScroll:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 2480
    const/4 v0, 0x0

    goto :goto_0

    .line 2483
    :cond_1
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollGesture:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->forceFinished(Z)V

    goto :goto_0
.end method
