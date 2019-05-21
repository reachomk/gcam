.class final Lcom/android/camera/ui/PrimaryShutterButton$17;
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


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$17;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$17;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 885
    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2900(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 886
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$17;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 887
    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2700(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$17;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 888
    invoke-static {v3}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2800(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 885
    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$17;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 890
    return-void
.end method
