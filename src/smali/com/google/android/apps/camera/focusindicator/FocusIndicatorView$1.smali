.class final Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startActiveFocusAnimation(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCancelled:Z

.field private synthetic this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->isCancelled:Z

    .line 206
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->isCancelled:Z

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-static {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->access$000(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->isLensLockedForActiveScan()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-static {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->access$100(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusConvergeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
