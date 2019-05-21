.class final Lcom/google/android/apps/lightcycle/PanoramaModule$12;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$12;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final triggerShutter(Z)V
    .locals 1

    .prologue
    .line 663
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$12;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$12;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onShutterButtonClick()V

    .line 666
    :cond_0
    return-void
.end method

.method public final zoomIn(Z)V
    .locals 1

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$12;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomIn()F

    .line 680
    :cond_0
    return-void
.end method

.method public final zoomOut(Z)V
    .locals 1

    .prologue
    .line 670
    if-nez p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$12;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomOut()F

    .line 673
    :cond_0
    return-void
.end method
