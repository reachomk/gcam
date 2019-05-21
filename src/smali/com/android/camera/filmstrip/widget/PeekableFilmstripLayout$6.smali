.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip show animation cancelled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 390
    return-void
.end method

.method public final onTransitionEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1200(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->isActivityFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity finishing. Aborting filmstrip show animation."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 417
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip show animation ended."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$000(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1302(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;Z)Z

    .line 406
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->setBackgroundColor(I)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UK35CLLM2OJCCL36IR3DEDQ74QBG9HGNIRRLEGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O46RREEHIMST2GC5N6AR149HKN6T35DPIN4EO_(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onFilmstripShown()V

    .line 410
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1400(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/ui/controller/CameraUiStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFilmstripOpened()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UK35CLLM2OJCCL36IR3DEDQ74QBG9HGNIRRLEGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O46RREEHIMST2GC5N6AR149HKN6T35DPIN4EO_(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onEnterFullScreenUiShown$514IILG_()V

    .line 413
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1500(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/widget/FilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$6;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 416
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip show animation complete."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
