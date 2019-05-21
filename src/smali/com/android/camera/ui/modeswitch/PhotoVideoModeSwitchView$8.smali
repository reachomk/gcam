.class final Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoVideoModeSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->snapCoverBack(FZ)V
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
    .line 313
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iput-boolean p2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->val$toPhoto:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setVisibility(I)V

    .line 317
    iget-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->val$toPhoto:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$000(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipeVideoState()V

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$100(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoScrollCancelled()V

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$402(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)Z

    .line 324
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$000(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipePhotoState()V

    goto :goto_0
.end method
