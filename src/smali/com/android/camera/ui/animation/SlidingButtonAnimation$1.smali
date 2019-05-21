.class final Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;
.super Ljava/lang/Object;
.source "SlidingButtonAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/animation/SlidingButtonAnimation;->getAnimator(Landroid/view/View;IZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

.field private synthetic val$position:I

.field private synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/animation/SlidingButtonAnimation;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->this$0:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    iput-object p2, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->this$0:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    invoke-static {v1}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->access$000(Lcom/android/camera/ui/animation/SlidingButtonAnimation;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$position:I

    iget-object v3, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->this$0:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    invoke-static {v3}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->access$100(Lcom/android/camera/ui/animation/SlidingButtonAnimation;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->val$position:I

    iget-object v3, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$1;->this$0:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    invoke-static {v3}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->access$100(Lcom/android/camera/ui/animation/SlidingButtonAnimation;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v4, v0

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
