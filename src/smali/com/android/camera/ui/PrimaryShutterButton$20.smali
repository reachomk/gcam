.class final Lcom/android/camera/ui/PrimaryShutterButton$20;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton;->runEnableChangeAnimation(Z)V
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
    .line 972
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$20;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 976
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$20;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x434d0000    # 205.0f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 977
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$20;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1100(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 979
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$20;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$20;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget v2, v2, Lcom/android/camera/ui/PrimaryShutterButton;->baseElevationOffset:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->updateElevationShadow(FII)V

    .line 980
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$20;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 981
    return-void
.end method
