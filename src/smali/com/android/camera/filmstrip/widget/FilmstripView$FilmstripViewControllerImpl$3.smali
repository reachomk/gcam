.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2218
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2208
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3300(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 2214
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 2215
    return-void

    .line 2210
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3400(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2221
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2197
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl$3;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    goto :goto_0
.end method
