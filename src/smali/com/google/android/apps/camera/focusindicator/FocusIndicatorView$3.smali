.class final Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startFocusLockHoldAnimation(Landroid/graphics/PointF;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCancelled:Z

.field private synthetic this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field private synthetic val$lockConfirmFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->val$lockConfirmFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->isCancelled:Z

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->val$lockConfirmFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->this$0:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->isCancelled:Z

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;->val$lockConfirmFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method
