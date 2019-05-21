.class final Lcom/android/camera/ui/IntentReviewLayout$3;
.super Ljava/lang/Object;
.source "IntentReviewLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/IntentReviewLayout;->getVisibilityChangeAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/IntentReviewLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/IntentReviewLayout;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/ui/IntentReviewLayout$3;->this$0:Lcom/android/camera/ui/IntentReviewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/IntentReviewLayout$3;->this$0:Lcom/android/camera/ui/IntentReviewLayout;

    invoke-static {v1}, Lcom/android/camera/ui/IntentReviewLayout;->access$000(Lcom/android/camera/ui/IntentReviewLayout;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 128
    return-void
.end method
