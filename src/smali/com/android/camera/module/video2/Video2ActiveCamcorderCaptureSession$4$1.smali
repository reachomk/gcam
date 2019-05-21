.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->run()V
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
        "Lcom/android/camera/camcorder/CamcorderRecordingSession;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_0

    .line 326
    monitor-exit v1

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-static {}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to startRecording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2ModuleUI;->showCaptureUI(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->didStopRecording()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$602(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 335
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 298
    move-object v1, p1

    check-cast v1, Lcom/android/camera/camcorder/CamcorderRecordingSession;

    .line 1301
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_0

    .line 1305
    invoke-static {}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this object has been closed during STARTING_RECORDING"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$700(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    .line 1307
    monitor-exit v6

    .line 1319
    :goto_0
    return-void

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v2, v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 1313
    invoke-static {v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$900(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v3, v3, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 1314
    invoke-static {v3}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$1000(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/google/android/apps/camera/util/time/UtcClock;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v4, v4, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 1315
    invoke-static {v4}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v5, v5, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 1316
    invoke-static {v5}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$1100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;-><init>(Lcom/android/camera/camcorder/CamcorderRecordingSession;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/UtcClock;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V

    .line 1310
    invoke-static {v7, v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$802(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    .line 1317
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    invoke-static {v0, v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$602(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 1318
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4$1;->this$1:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    .line 2183
    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 1319
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
