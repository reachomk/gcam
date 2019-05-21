.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/filmstrip/gesture/FilmstripSwipeoutGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwipeOutBegin()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$000(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->setBackgroundColor(I)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->onSwipeOutBegin()V

    .line 108
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$200(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onLeavingFilmstripBegin()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UK35CLLM2OJCCL36IR3DEDQ74QBG9HGNIRRLEGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O46RREEHIMST2GC5N6AR149HKN6T35DPIN4EO_(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onSwipeOutBegin()V

    .line 112
    return-void
.end method

.method public final onSwipeOutCanceled()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    move-result-object v0

    new-instance v1, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;-><init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->snapBackToFilmstrip(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;)V

    .line 166
    return-void
.end method

.method public final onSwipeOutConfirmed()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$400(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    move-result-object v0

    new-instance v1, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$1;-><init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->swapOutOfFilmstrip(Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;)V

    .line 138
    return-void
.end method

.method public final onSwipeOutDrag(FFF)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->onSwipeOutDrag(FFF)Z

    .line 117
    return-void
.end method
