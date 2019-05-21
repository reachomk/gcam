.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$1100(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->showRecordingUI(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$400(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/module/video2/Video2Sound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Sound;->muteRingtone()V

    .line 178
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 179
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$1200(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/camcorder/CamcorderCaptureSession;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$1;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;)V

    invoke-interface {v0, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSession;->startRecording(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 220
    return-void
.end method
