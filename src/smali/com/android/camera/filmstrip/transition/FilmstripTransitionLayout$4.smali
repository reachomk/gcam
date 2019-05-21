.class final Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilmstripTransitionLayout.java"


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
    .line 140
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;->onTransitionCancel()V

    .line 151
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$200(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/widget/RoundedThumbnailView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$500(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$502(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;Z)Z

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->access$400(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;->onTransitionEnd()V

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$4;->this$0:Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    .line 144
    return-void
.end method
