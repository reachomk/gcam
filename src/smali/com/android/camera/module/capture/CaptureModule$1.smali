.class final Lcom/android/camera/module/capture/CaptureModule$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final triggerShutter(Z)V
    .locals 2

    .prologue
    .line 325
    if-eqz p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$000(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/burst/BurstVolumeKeyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstVolumeKeyController;->onVolumeKeyDown()Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$000(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/burst/BurstVolumeKeyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstVolumeKeyController;->onVolumeKeyUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 328
    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$100(Lcom/android/camera/module/capture/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$202(Lcom/android/camera/module/capture/CaptureModule;Z)Z

    .line 330
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/module/capture/CaptureModule;->onShutterButtonClick()V

    .line 331
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onShutterButtonClick()V

    goto :goto_0
.end method

.method public final zoomIn(Z)V
    .locals 1

    .prologue
    .line 344
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$100(Lcom/android/camera/module/capture/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomIn()F

    .line 347
    :cond_0
    return-void
.end method

.method public final zoomOut(Z)V
    .locals 1

    .prologue
    .line 337
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$100(Lcom/android/camera/module/capture/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$1;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomOut()F

    .line 340
    :cond_0
    return-void
.end method
