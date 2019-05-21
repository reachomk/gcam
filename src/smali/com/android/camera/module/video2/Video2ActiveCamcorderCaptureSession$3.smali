.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$3;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->onMaxFileSizeReached()V
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
    .line 198
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$3;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 198
    check-cast p1, Lcom/google/android/gms/common/internal/zzf$zza;

    .line 1201
    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    .line 1202
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1207
    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getLength()J

    move-result-wide v4

    const-wide v6, 0xdc898500L

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 1209
    :goto_0
    invoke-static {}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getLength()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Video file size onMaxFileSizeReached: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :goto_1
    if-eqz v1, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$3;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->onMaxFileSizeReached()V

    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 1208
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1211
    goto :goto_1

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$3;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2ModuleUI;->onMediaStorageFull(Z)V

    goto :goto_2
.end method
