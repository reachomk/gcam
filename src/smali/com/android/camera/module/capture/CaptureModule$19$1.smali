.class final Lcom/android/camera/module/capture/CaptureModule$19$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule$19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/capture/CaptureModule$19;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule$19;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$19$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 890
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error when starting burst (after stop)"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 891
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 875
    check-cast p1, Ljava/lang/Boolean;

    .line 1878
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$19;

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    .line 1881
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$19;

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showMenuButton()V

    .line 1882
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$19;

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->enableBottomBarSideControls()V

    .line 1883
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$19;

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->playBurstEnd()V

    .line 1884
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$19;

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule$19;->val$burstStats:Lcom/android/camera/stats/BurstSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/BurstSession;->recordBurstSoundStopped()V

    .line 875
    :cond_0
    return-void
.end method
