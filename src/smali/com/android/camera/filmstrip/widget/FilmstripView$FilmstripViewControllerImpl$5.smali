.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->zoomAt(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

.field private synthetic val$current:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

.field private synthetic val$focusX:F

.field private synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V
    .locals 0

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iput-object p2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->val$current:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iput p3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->val$focusX:F

    iput p4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 2337
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2338
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v1, v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v1

    div-float v3, v0, v1

    .line 2339
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v1, v1, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$102(Lcom/android/camera/filmstrip/widget/FilmstripView;F)F

    .line 2340
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->val$current:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->val$focusX:F

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->val$focusY:F

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v4, v4, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4300(Lcom/android/camera/filmstrip/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$5;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v5, v5, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4300(Lcom/android/camera/filmstrip/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->postScale(FFFII)V

    .line 2341
    return-void
.end method
