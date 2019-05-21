.class final Lcom/android/camera/module/videointent/VideoIntentModule$1;
.super Ljava/lang/Object;
.source "VideoIntentModule.java"

# interfaces
.implements Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$1;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final triggerShutter(Z)V
    .locals 1

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$1;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->onShutterButtonClick()V

    .line 132
    :cond_0
    return-void
.end method

.method public final zoomIn(Z)V
    .locals 1

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$1;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$000(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomIn()F

    .line 146
    :cond_0
    return-void
.end method

.method public final zoomOut(Z)V
    .locals 1

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$1;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$000(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomOut()F

    .line 139
    :cond_0
    return-void
.end method
