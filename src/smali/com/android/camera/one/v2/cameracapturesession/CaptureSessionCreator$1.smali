.class final Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->run()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
        ">;",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    const-string v1, "CameraCaptureSession.StateCallback"

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/HandlerFactory;->create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Creating capture session for outputs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v2, "CaptureSessionCreator#ValidateConfigs"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0, p2}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$800(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 215
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$900(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v2, "Creating reprocessable capture session from output configurations."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v2, "CameraDevice#reprocessableSessionByConfig"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 222
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$900(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    new-instance v2, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;

    iget-object v3, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;B)V

    .line 221
    invoke-interface {p1, v0, p2, v2, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->getSessionFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v2, "Creating reprocessable capture session."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v2, "CameraDevice#reprocessableSession"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 227
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$900(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 228
    invoke-static {v2, p2}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$1200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;

    iget-object v4, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;B)V

    .line 226
    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_1

    .line 233
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v2, "Creating regular capture session from output configurations."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v2, "CameraDevice#captureSessionByConfig"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;

    iget-object v2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;B)V

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 239
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v2, "Creating regular capture session."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v2, "CameraDevice#captureSession"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 242
    invoke-static {v0, p2}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$1200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;

    iget-object v3, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;B)V

    .line 241
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureSession(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_4
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;->apply(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
