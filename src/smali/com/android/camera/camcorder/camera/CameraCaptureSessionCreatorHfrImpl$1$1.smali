.class final Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1$1;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCreatorHfrImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActive"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final onClosed$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClosed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final onConfigureFailed$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigureFailed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "CameraCaptureSession.onConfigureFailed"

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 92
    return-void
.end method

.method public final onConfigured$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GRFDPPN8SJ1D5N6AP28D5JMGKRGCLIM8GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAAM()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigured"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final onReady(Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
