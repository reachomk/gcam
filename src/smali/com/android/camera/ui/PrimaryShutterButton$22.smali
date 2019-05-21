.class final Lcom/android/camera/ui/PrimaryShutterButton$22;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton;->runImageButtonAnimation(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;

.field private synthetic val$initialColor:I

.field private synthetic val$isOutInStyle:Z

.field private synthetic val$photoButtonDelta:I

.field private synthetic val$toColor:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;ZIII)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput-boolean p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$isOutInStyle:Z

    iput p3, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$photoButtonDelta:I

    iput p4, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$initialColor:I

    iput p5, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$toColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 1026
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1027
    iget-boolean v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$isOutInStyle:Z

    if-eqz v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1000(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$photoButtonDelta:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$902(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 1029
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1100(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 1031
    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2900(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 1032
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$initialColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$toColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1031
    invoke-virtual {v0, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1029
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1038
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 1039
    return-void

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1000(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->val$photoButtonDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$902(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 1036
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$22;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1400(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method
