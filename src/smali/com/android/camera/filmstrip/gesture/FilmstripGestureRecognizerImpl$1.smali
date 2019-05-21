.class final Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FilmstripGestureRecognizerImpl.java"


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
    .line 30
    iput-object p1, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;->onDown(FF)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;->onLongPress(FF)V

    .line 36
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl$1;->this$0:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;->access$000(Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizerImpl;)Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    move v5, p3

    move v6, p4

    .line 41
    invoke-interface/range {v0 .. v9}, Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;->onScroll(FFFFFFIJ)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
