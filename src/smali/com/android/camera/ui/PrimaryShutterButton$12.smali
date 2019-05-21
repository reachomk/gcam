.class final Lcom/android/camera/ui/PrimaryShutterButton$12;
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

.field private synthetic val$maxValue:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$12;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$12;->val$maxValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$12;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$12;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2400(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$12;->val$maxValue:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1202(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 759
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$12;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 760
    return-void
.end method
