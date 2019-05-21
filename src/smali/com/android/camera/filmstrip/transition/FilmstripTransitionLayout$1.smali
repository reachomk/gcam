.class final Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;
.super Ljava/lang/Object;
.source "FilmstripTransitionLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$000(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;F)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->invalidate()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$100(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$1;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$100(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 90
    :cond_0
    return-void
.end method
