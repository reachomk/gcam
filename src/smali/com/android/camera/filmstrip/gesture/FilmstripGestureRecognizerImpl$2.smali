.class final Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$2;
.super Ljava/lang/Object;
.source "FilmstripGestureRecognizerImpl.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$2;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$2;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$2;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$2;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$2;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;->onSingleTap(FF)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
