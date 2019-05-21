.class final Lcom/android/camera/ui/ShutterButtonHolder$5;
.super Ljava/lang/Object;
.source "ShutterButtonHolder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ShutterButtonHolder;->moveRecordingControlsFadeAndSlide(Landroid/view/View;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ShutterButtonHolder;

.field private synthetic val$position:I

.field private synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShutterButtonHolder;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    iput-object p2, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 614
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 617
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v1}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1000(Lcom/android/camera/ui/ShutterButtonHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$position:I

    iget-object v3, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v3}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1100(Lcom/android/camera/ui/ShutterButtonHolder;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->val$position:I

    iget-object v3, p0, Lcom/android/camera/ui/ShutterButtonHolder$5;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v3}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1100(Lcom/android/camera/ui/ShutterButtonHolder;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v4, v0

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
