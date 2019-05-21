.class final Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1$1;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCreatorImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActive"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final onClosed(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClosed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final onConfigureFailed(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigureFailed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "CameraCaptureSession.onConfigureFailed"

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 90
    return-void
.end method

.method public final onConfigured(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigured"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onReady(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl$1;->val$futureCaptureSession:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public final onSurfacePrepared(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfacePrepared"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
