.class final Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;
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
    .line 128
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$000(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;F)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->invalidate()V

    .line 134
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$3;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    .line 137
    :cond_0
    return-void
.end method
