.class final Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoVideoModeSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->fadeOutCover(Z)V
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
    .line 418
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iput-boolean p2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->val$toPhoto:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setVisibility(I)V

    .line 423
    iget-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->val$toPhoto:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    .line 425
    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$100(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoSwitchFinished()V

    .line 432
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    .line 428
    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
