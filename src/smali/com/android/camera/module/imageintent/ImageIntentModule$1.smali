.class final Lcom/android/camera/module/imageintent/ImageIntentModule$1;
.super Ljava/lang/Object;
.source "ImageIntentModule.java"

# interfaces
.implements Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/ImageIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final triggerShutter(Z)V
    .locals 1

    .prologue
    .line 112
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$000(Lcom/android/camera/module/imageintent/ImageIntentModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->onShutterButtonClick()V

    .line 115
    :cond_0
    return-void
.end method

.method public final zoomIn(Z)V
    .locals 1

    .prologue
    .line 126
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$000(Lcom/android/camera/module/imageintent/ImageIntentModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$100(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomIn()F

    .line 129
    :cond_0
    return-void
.end method

.method public final zoomOut(Z)V
    .locals 1

    .prologue
    .line 119
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$000(Lcom/android/camera/module/imageintent/ImageIntentModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$100(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomOut()F

    .line 122
    :cond_0
    return-void
.end method
