.class final Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2Impl.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceManagerV2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealCameraDeviceListener"
.end annotation


# instance fields
.field private final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private synthetic this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

.field private final wasOpened:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 2

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->wasOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 417
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 418
    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->wasOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->access$600(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/device/CameraId;ZI)V

    .line 442
    return-void
.end method

.method public final onDisconnected()V
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->wasOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->access$600(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/device/CameraId;ZI)V

    .line 432
    return-void
.end method

.method public final onError(I)V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->wasOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->access$600(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/device/CameraId;ZI)V

    .line 437
    return-void
.end method

.method public final onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->wasOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->access$500(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 427
    return-void
.end method
