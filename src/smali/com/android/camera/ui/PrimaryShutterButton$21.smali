.class final Lcom/android/camera/ui/PrimaryShutterButton$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrimaryShutterButton.java"


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
    .line 984
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$21;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$21;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1902(Lcom/android/camera/ui/PrimaryShutterButton;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 993
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$21;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1902(Lcom/android/camera/ui/PrimaryShutterButton;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 988
    return-void
.end method
