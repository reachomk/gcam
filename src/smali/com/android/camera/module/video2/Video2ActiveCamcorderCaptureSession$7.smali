.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/google/android/gms/common/internal/zzf$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 417
    :try_start_0
    invoke-static {}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed when calling CamcorderRecordingSession#stopRecording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_0

    .line 422
    monitor-exit v1

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STOPPING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$602(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 426
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 424
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 389
    check-cast p1, Lcom/google/android/gms/common/internal/zzf$zza;

    .line 1392
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1397
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    invoke-static {v2, v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$1200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E91M2S3KELP6AKR5EDPMIRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55B0____(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->indicateCapture()V

    .line 1405
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_1

    .line 1406
    monitor-exit v1

    .line 1410
    :goto_0
    return-void

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STOPPING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 1409
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$602(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 1410
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1408
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
