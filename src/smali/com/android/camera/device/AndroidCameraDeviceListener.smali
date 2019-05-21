.class final Lcom/android/camera/device/AndroidCameraDeviceListener;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "AndroidCameraDeviceListener.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final cameraId:Ljava/lang/String;

.field private final listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;


# direct methods
.method constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    iput-object v0, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    .line 28
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->cameraId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    invoke-interface {v0}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onClosed()V

    .line 69
    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    invoke-interface {v0}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onDisconnected()V

    .line 47
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 48
    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .prologue
    .line 52
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    invoke-interface {v0, p2}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onError(I)V

    .line 58
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 59
    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/device/AndroidCameraDeviceListener;->listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;

    invoke-direct {v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;-><init>()V

    invoke-direct {v1, p1, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;-><init>(Landroid/hardware/camera2/CameraDevice;Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;)V

    invoke-interface {v0, v1}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V

    .line 37
    return-void
.end method
