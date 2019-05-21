.class final Lcom/android/camera/module/capture/CaptureModule$21;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->onQuickExpose()V
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
    .line 1111
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$21;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$21;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1116
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$21;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHUTTER_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 1117
    return-void
.end method
