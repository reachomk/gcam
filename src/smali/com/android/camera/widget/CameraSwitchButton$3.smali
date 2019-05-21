.class final Lcom/android/camera/widget/CameraSwitchButton$3;
.super Ljava/lang/Object;
.source "CameraSwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/CameraSwitchButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/CameraSwitchButton;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/CameraSwitchButton;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/widget/CameraSwitchButton$3;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton$3;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42840000    # 66.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/widget/CameraSwitchButton;->access$202(Lcom/android/camera/widget/CameraSwitchButton;F)F

    .line 109
    iget-object v1, p0, Lcom/android/camera/widget/CameraSwitchButton$3;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/CameraSwitchButton;->access$302(Lcom/android/camera/widget/CameraSwitchButton;F)F

    .line 110
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton$3;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->invalidate()V

    .line 111
    return-void
.end method
