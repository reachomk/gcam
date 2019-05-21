.class Lcom/android/camera/device/CameraDeviceManagerV2Impl$NoOpCameraDeviceListener;
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
    name = "NoOpCameraDeviceListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$NoOpCameraDeviceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public final onDisconnected()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public final onError(I)V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public final onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 0

    .prologue
    .line 451
    return-void
.end method
