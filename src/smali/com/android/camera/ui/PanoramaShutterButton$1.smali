.class final Lcom/android/camera/ui/PanoramaShutterButton$1;
.super Ljava/lang/Object;
.source "PanoramaShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoramaShutterButton;->transitionToReview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PanoramaShutterButton;

.field private synthetic val$colorEvaluator:Landroid/animation/ArgbEvaluator;

.field private synthetic val$elevationAnimator:Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;

.field private synthetic val$initialColor:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoramaShutterButton;Landroid/animation/ArgbEvaluator;ILcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->this$0:Lcom/android/camera/ui/PanoramaShutterButton;

    iput-object p2, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->val$colorEvaluator:Landroid/animation/ArgbEvaluator;

    iput p3, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->val$initialColor:I

    iput-object p4, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->val$elevationAnimator:Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->this$0:Lcom/android/camera/ui/PanoramaShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoramaShutterButton;->getPhotoCirclePaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->val$colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->val$initialColor:I

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->this$0:Lcom/android/camera/ui/PanoramaShutterButton;

    invoke-static {v4}, Lcom/android/camera/ui/PanoramaShutterButton;->access$000(Lcom/android/camera/ui/PanoramaShutterButton;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->val$elevationAnimator:Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->animate(F)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$1;->this$0:Lcom/android/camera/ui/PanoramaShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoramaShutterButton;->invalidate()V

    .line 71
    return-void
.end method
