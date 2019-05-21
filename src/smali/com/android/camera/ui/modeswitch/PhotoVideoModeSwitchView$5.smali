.class final Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoVideoModeSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->snapCover(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

.field private synthetic val$toPhoto:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iput-boolean p2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;->val$toPhoto:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iget-boolean v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;->val$toPhoto:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->switchMode(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$402(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)Z

    .line 268
    return-void
.end method
