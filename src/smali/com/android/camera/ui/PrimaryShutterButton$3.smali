.class final Lcom/android/camera/ui/PrimaryShutterButton$3;
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

.field private synthetic val$isVideoMode:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;Z)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput-boolean p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->val$isVideoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    iget-boolean v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->val$isVideoMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1100(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1100(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$3;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 425
    return-void
.end method
