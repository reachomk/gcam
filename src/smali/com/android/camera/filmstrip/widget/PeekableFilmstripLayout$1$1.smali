.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$1;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->onSwipeOutConfirmed()V
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
    .line 123
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$1;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip swipeout confirmed hide animation cancelled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final onTransitionEnd()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip swipeout confirmed hide animation complete."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1$1;->this$1:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$1;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$600(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V

    .line 136
    return-void
.end method
