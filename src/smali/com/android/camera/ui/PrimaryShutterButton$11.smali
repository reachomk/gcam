.class final Lcom/android/camera/ui/PrimaryShutterButton$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrimaryShutterButton.java"


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
    .line 728
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2100(Lcom/android/camera/ui/PrimaryShutterButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->resetShutterButton(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    .line 740
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2200(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2200(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2300(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$11;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$2300(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;->onAnimationsFinished()V

    .line 748
    :cond_2
    return-void
.end method
