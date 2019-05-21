.class final Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;
.super Ljava/lang/Object;
.source "AfRequestSenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->sendAfRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;ZLandroid/graphics/PointF;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

.field private synthetic val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

.field private synthetic val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

.field private synthetic val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

.field private synthetic val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$triggerRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iput-object p3, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

    iput-object p5, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$triggerRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    iput-object p6, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

    .line 112
    invoke-static {v1}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->access$000(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;->createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

    const/4 v3, 0x0

    .line 111
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I

    .line 116
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

    .line 117
    invoke-static {v1}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->access$000(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$triggerRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;->createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

    const/4 v3, 0x0

    .line 116
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->captureBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :goto_1
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    goto :goto_1
.end method
