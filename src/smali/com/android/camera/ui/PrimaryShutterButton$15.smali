.class final Lcom/android/camera/ui/PrimaryShutterButton$15;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton;->getBreathingAnimator()Landroid/animation/ValueAnimator;
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
    .line 830
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$15;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$15;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f87ae14    # 1.06f

    move v1, v0

    .line 836
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$15;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1202(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 837
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$15;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 838
    return-void

    .line 835
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    goto :goto_0
.end method
