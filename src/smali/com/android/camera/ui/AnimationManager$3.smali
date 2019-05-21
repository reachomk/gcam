.class final Lcom/android/camera/ui/AnimationManager$3;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AnimationManager;->startFlashAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/AnimationManager;

.field private synthetic val$flashOverlay:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AnimationManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/ui/AnimationManager$3;->this$0:Lcom/android/camera/ui/AnimationManager;

    iput-object p2, p0, Lcom/android/camera/ui/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/AnimationManager$3;->this$0:Lcom/android/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/android/camera/ui/AnimationManager;->access$100(Lcom/android/camera/ui/AnimationManager;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/AnimationManager$3;->this$0:Lcom/android/camera/ui/AnimationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/AnimationManager;->access$102(Lcom/android/camera/ui/AnimationManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 145
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method
