.class public Lcom/android/camera/device/CameraDeviceManager;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"


# instance fields
.field private final cameraDeviceManagerV2:Lcom/android/camera/device/CameraDeviceManagerV2;


# direct methods
.method public constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2;)V
    .locals 0

    .prologue
    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManager;->cameraDeviceManagerV2:Lcom/android/camera/device/CameraDeviceManagerV2;

    .line 2020
    return-void
.end method


# virtual methods
.method public disconnectAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManager;->cameraDeviceManagerV2:Lcom/android/camera/device/CameraDeviceManagerV2;

    invoke-interface {v0}, Lcom/android/camera/device/CameraDeviceManagerV2;->disconnectAsync()V

    .line 1076
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnectSync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManager;->cameraDeviceManagerV2:Lcom/android/camera/device/CameraDeviceManagerV2;

    invoke-interface {v0}, Lcom/android/camera/device/CameraDeviceManagerV2;->disconnectSync()V

    .line 1082
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1031
    new-instance v1, Lcom/android/camera/device/CameraDeviceState;

    invoke-direct {v1}, Lcom/android/camera/device/CameraDeviceState;-><init>()V

    .line 1032
    new-instance v2, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;

    invoke-direct {v2, v0, p2, p1}, Lcom/android/camera/device/CameraDeviceManagerV2Shim$1;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/SafeCloseable;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/device/CameraDeviceState;->addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 1069
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManager;->cameraDeviceManagerV2:Lcom/android/camera/device/CameraDeviceManagerV2;

    invoke-interface {v2, p2, v1}, Lcom/android/camera/device/CameraDeviceManagerV2;->open(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 1070
    return-object v0
.end method

.method public prewarm(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManager;->cameraDeviceManagerV2:Lcom/android/camera/device/CameraDeviceManagerV2;

    invoke-interface {v0, p1}, Lcom/android/camera/device/CameraDeviceManagerV2;->open(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 1025
    return-void
.end method
