.class final Lcom/android/camera/ui/IntentReviewLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IntentReviewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/IntentReviewLayout;->hide(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/IntentReviewLayout;

.field private synthetic val$endAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/IntentReviewLayout;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/ui/IntentReviewLayout$2;->this$0:Lcom/android/camera/ui/IntentReviewLayout;

    iput-object p2, p0, Lcom/android/camera/ui/IntentReviewLayout$2;->val$endAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/IntentReviewLayout$2;->this$0:Lcom/android/camera/ui/IntentReviewLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IntentReviewLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/IntentReviewLayout$2;->val$endAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/IntentReviewLayout$2;->val$endAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_0
    return-void
.end method
