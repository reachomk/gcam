.class final Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;
.super Lcom/android/camera/device/CameraDeviceState;
.source "CameraDeviceManagerV2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceManagerV2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualCameraDeviceState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState$1;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V

    invoke-super {p0, v0}, Lcom/android/camera/device/CameraDeviceState;->onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V

    .line 405
    return-void
.end method
