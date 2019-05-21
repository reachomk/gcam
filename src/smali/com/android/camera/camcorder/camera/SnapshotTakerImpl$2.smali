.class final Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;
.super Ljava/lang/Object;
.source "SnapshotTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->sendSnapshotRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4KREC5O76Q3FEH37AT3LE9IN6EO_(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/android/camera/one/v2/command/CommandExecutorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

.field private synthetic val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

.field final synthetic val$futureImageExposed:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$futureTotalCaptureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iput-object p3, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$futureImageExposed:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$futureTotalCaptureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    .line 221
    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$100(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->createSnapshotRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$000(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->addTarget(Landroid/view/Surface;)V

    .line 228
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$200(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 229
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    .line 230
    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$300(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 234
    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2$1;-><init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;)V

    const/4 v3, 0x0

    .line 233
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    :goto_1
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;->val$futureTotalCaptureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    goto :goto_1
.end method
