.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field private synthetic this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 1

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;->cancelled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;->cancelled:Z

    .line 2467
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 2458
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;->cancelled:Z

    if-nez v0, :cond_0

    .line 2459
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$4500(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$8;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$4702(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2462
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2470
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2454
    return-void
.end method
