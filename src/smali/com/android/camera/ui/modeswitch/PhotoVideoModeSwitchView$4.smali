.class final Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;
.super Ljava/lang/Object;
.source "PhotoVideoModeSwitchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 251
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iput-boolean p2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;->val$toPhoto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iget-boolean v2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;->val$toPhoto:Z

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$300(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;IZ)V

    .line 256
    return-void
.end method
