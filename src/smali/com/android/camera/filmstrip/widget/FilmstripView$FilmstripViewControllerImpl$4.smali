.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field private synthetic val$endScale:F

.field private synthetic val$focusX:F

.field private synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;FLcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;FF)V
    .locals 0

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iput p2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$endScale:F

    iput-object p3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$current:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iput p4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$focusX:F

    iput p5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2325
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$endScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$current:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$focusX:F

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$focusY:F

    iget v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$endScale:F

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v4, v4, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 2306
    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v4, v4, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4300(Lcom/android/camera/filmstrip/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v5, v5, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4300(Lcom/android/camera/filmstrip/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 2305
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->postScale(FFFII)V

    .line 2307
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$endScale:F

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$102(Lcom/android/camera/filmstrip/widget/FilmstripView;F)F

    .line 2310
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    .line 4247
    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3800(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 2310
    if-eqz v0, :cond_1

    .line 2311
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)V

    .line 2312
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4400(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 2313
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->val$current:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->resetTransform()V

    .line 2317
    :goto_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$4602(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2318
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 2319
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 2320
    return-void

    .line 2315
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$4500(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2330
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2293
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)V

    .line 2297
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    .line 2298
    return-void

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    .line 3675
    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$5000(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 2294
    if-eqz v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$4;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$4200(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    goto :goto_0
.end method
