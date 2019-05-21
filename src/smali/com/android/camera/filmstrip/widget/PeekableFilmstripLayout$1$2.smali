.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->onSwipeOutCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip swipeout cancelled return animation cancelled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public final onTransitionEnd()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$000(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    iget-object v1, v1, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->setBackgroundColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UK35CLLM2OJCCL36IR3DEDQ74QBG9HGNIRRLEGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O46RREEHIMST2GC5N6AR149HKN6T35DPIN4EO_(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onEnterFullScreenUiShown$514IILG_()V

    .line 162
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$2;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$200(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onLeavingFilmstripCancelled()V

    .line 163
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip swipeout cancelled return animation complete."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
