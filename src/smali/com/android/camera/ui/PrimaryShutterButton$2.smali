.class final Lcom/android/camera/ui/PrimaryShutterButton$2;
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

.field private synthetic val$innerButtonDelta:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$2;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$2;->val$innerButtonDelta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$2;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$2;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1000(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$2;->val$innerButtonDelta:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$902(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 408
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$2;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 409
    return-void
.end method
