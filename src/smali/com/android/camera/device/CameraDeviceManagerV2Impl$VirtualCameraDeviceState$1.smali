.class final Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState$1;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;
.source "CameraDeviceManagerV2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;->onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;


# direct methods
.method constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState$1;->this$1:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingCameraDeviceProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState$1;->this$1:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    invoke-virtual {v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;->close()V

    .line 398
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    const-string v0, "VirtualCameraDevice"

    return-object v0
.end method
