.class final Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;
.super Ljava/lang/Object;
.source "AfRequestSenderImpl.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->sendAfRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;ZLandroid/graphics/PointF;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

.field private synthetic val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

.field private synthetic val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

.field private synthetic val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

.field private synthetic val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    iput-object p3, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

    iput-object p5, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBGEHQN4PAICLPNAR3KA1P6UU3P7CKKOQJ1EPGIUR31DPJIULJFD5I3M___()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->this$0:Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

    .line 137
    invoke-static {v1}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->access$000(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$convergeRequest:Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;->createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$aaaRequestCaptureCallback:Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

    const/4 v3, 0x0

    .line 136
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v4

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;->apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBGEHQN4PAICLPNAR3KA1P6UU3P7CKKOQJ1EPGIUR31DPJIULJFD5I3M___()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
