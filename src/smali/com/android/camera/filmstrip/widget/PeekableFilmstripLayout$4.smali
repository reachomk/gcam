.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$4;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;
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
    .line 292
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$4;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip hide animation cancelled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public final onTransitionEnd()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$4;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$600(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V

    .line 304
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip hide animation complete."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method
