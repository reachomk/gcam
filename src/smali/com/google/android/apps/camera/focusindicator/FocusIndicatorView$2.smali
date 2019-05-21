.class final Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startPassiveFocusAnimation(Lcom/google/common/base/Optional;)V
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
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;->isCancelled:Z

    .line 247
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;->isCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-static {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->access$000(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->isLensLockedForPassiveScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusConvergeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 242
    :cond_0
    return-void
.end method
