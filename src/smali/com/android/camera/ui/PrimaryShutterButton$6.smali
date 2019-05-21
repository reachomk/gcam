.class final Lcom/android/camera/ui/PrimaryShutterButton$6;
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

.field private synthetic val$isPressed:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;Z)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$6;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput-boolean p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$6;->val$isPressed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$6;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1502(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 556
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$6;->val$isPressed:Z

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$6;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1502(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 551
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$6;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1502(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 544
    return-void
.end method
