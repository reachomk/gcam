.class final Lcom/android/camera/module/capture/CaptureModule$17;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->startBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;

.field private synthetic val$burstStats:Lcom/android/camera/stats/BurstSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/stats/BurstSession;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$17;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule$17;->val$burstStats:Lcom/android/camera/stats/BurstSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 800
    check-cast p1, Ljava/lang/Boolean;

    .line 1803
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$17;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->hideModeOptions()V

    .line 1805
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$17;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->disableBottomBarSideControls()V

    .line 1806
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$17;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->playBurstStart()V

    .line 1807
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$17;->val$burstStats:Lcom/android/camera/stats/BurstSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/BurstSession;->recordBurstSoundStarted()V

    .line 800
    :cond_0
    return-object p1
.end method
