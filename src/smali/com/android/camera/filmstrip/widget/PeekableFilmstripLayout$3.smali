.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$3;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->onFinishInflate()V
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
    .line 260
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$3;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 265
    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$3;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$000(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 267
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$3;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$000(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 265
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$3;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$900(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/gesture/FilmstripSwipeoutGestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/filmstrip/gesture/FilmstripSwipeoutGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
