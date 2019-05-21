.class final Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;
.super Ljava/lang/Object;
.source "CamcorderDeviceImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderDeviceImpl;->createCaptureSession(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<TC;TC;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

.field private synthetic val$previewSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->val$previewSurface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSessionProxy is created."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$500(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$600(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/PreviewStarter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->val$previewSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    .line 294
    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->access$500(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v3

    .line 291
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/camera/camcorder/camera/PreviewStarter;->startPreview(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-direct {p0, p1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;->apply(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
