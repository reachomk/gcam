.class final Lcom/android/camera/ui/IntentReviewLayout$1;
.super Ljava/lang/Object;
.source "IntentReviewLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field private synthetic val$backgroundAlpha:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/IntentReviewLayout;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/ui/IntentReviewLayout$1;->this$0:Lcom/android/camera/ui/IntentReviewLayout;

    iput p2, p0, Lcom/android/camera/ui/IntentReviewLayout$1;->val$backgroundAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/IntentReviewLayout$1;->this$0:Lcom/android/camera/ui/IntentReviewLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/IntentReviewLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/IntentReviewLayout$1;->val$backgroundAlpha:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 94
    return-void
.end method
