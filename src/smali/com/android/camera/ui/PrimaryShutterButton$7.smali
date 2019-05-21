.class final Lcom/android/camera/ui/PrimaryShutterButton$7;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PrimaryShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;

.field private synthetic val$photoButtonRadiusDelta:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->val$photoButtonRadiusDelta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 589
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1000(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->val$photoButtonRadiusDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1602(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 592
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 593
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1700(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v4, v2

    .line 594
    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v3}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1400(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1100(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 596
    invoke-static {v3}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1800(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 595
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 600
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1900(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    sub-float v2, v4, v0

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 602
    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget v3, v3, Lcom/android/camera/ui/PrimaryShutterButton;->clickElevationOffset:I

    .line 601
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->updateElevationShadow(FII)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 605
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$7;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget v0, v0, Lcom/android/camera/ui/PrimaryShutterButton;->baseElevationOffset:I

    neg-int v0, v0

    goto :goto_0
.end method
