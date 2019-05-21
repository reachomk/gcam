.class final Lcom/android/camera/ui/PrimaryShutterButton$23;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrimaryShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton;->runImageButtonAnimation(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;

.field private synthetic val$toCancelConfirmState:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;Z)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iput-boolean p2, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->val$toCancelConfirmState:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1046
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1000(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1602(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 1048
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1502(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 1049
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->val$toCancelConfirmState:Z

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3102(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 1053
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3100(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3200(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$23;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->setClickEnabled(Z)V

    .line 1057
    return-void
.end method
