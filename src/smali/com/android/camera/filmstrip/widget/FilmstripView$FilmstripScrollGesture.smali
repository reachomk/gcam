.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilmstripScrollGesture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

.field private final scrollChecker:Ljava/lang/Runnable;

.field private final scroller:Landroid/widget/Scroller;

.field private final xScrollAnimator:Landroid/animation/ValueAnimator;

.field private final xScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final xScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;Landroid/animation/TimeInterpolator;)V
    .locals 2

    .prologue
    .line 2776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2724
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scrollChecker:Ljava/lang/Runnable;

    .line 2740
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$2;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$2;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2748
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$3;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$3;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2777
    iput-object p2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->handler:Landroid/os/Handler;

    .line 2778
    iput-object p3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->listener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    .line 2779
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scroller:Landroid/widget/Scroller;

    .line 2780
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    .line 2781
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2782
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2783
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2784
    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;
    .locals 1

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->listener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final fling(IIIIIIII)V
    .locals 9

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3826
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->listener:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    if-nez v0, :cond_1

    .line 3827
    :cond_0
    :goto_0
    return-void

    .line 3829
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3830
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final forceFinished(Z)V
    .locals 2

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2821
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2823
    return-void
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final startScroll(III)V
    .locals 4

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2809
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2810
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int v3, p1, p2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2811
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->xScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2812
    return-void
.end method
