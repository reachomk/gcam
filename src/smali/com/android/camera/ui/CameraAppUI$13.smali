.class final Lcom/android/camera/ui/CameraAppUI$13;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraAppUI;->fadeOutPhotoVideoCover(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CameraAppUI;

.field private synthetic val$toPhoto:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;Z)V
    .locals 0

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$13;->this$0:Lcom/android/camera/ui/CameraAppUI;

    iput-boolean p2, p0, Lcom/android/camera/ui/CameraAppUI$13;->val$toPhoto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$13;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$700(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$13;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$700(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/CameraAppUI$13;->val$toPhoto:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->fadeOutCover(Z)V

    .line 2277
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$13;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$2100(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/BottomBarSideControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->fadeIn()V

    .line 2279
    :cond_0
    return-void
.end method