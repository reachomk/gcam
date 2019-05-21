.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)V
    .locals 0

    .prologue
    .line 2725
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5100(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2729
    if-nez v0, :cond_0

    .line 2730
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[fling] onScrollEnd from computeScrollOffset"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollEnd()V

    .line 2737
    :goto_0
    return-void

    .line 2734
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5100(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5100(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollUpdate$514KIAAM(I)V

    .line 2735
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2736
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
