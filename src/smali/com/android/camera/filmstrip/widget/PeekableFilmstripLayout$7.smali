.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$7;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->didScrollToItem(Lcom/android/camera/data/FilmstripItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$7;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getImageViewFuture should not throw an exception."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 451
    check-cast p1, Landroid/widget/ImageView;

    .line 1454
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$7;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1600(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1455
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$7;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    return-void
.end method
