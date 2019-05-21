.class public final Lcom/android/camera/device/CameraDeviceModule;
.super Ljava/lang/Object;
.source "CameraDeviceModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "CameraDeviceMod"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/device/CameraDeviceModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static provideActiveCameraDeviceTracker()Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->instance()Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    return-object v0
.end method

.method public static provideCameraDeviceManager(Lcom/android/camera/device/CameraDeviceManagerV2;)Lcom/android/camera/device/CameraDeviceManager;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/android/camera/device/CameraDeviceModule;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Using CameraDeviceManagerV2 implementation."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/camera/device/CameraDeviceManager;

    invoke-direct {v0, p0}, Lcom/android/camera/device/CameraDeviceManager;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2;)V

    return-object v0
.end method

.method public static provideCameraDeviceManagerV2(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/lifecycle/AppLifecycle;)Lcom/android/camera/device/CameraDeviceManagerV2;
    .locals 0

    .prologue
    .line 44
    invoke-static {p1, p2, p0}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHKMCPB3F5HMOP9F85O70J39CPIM6UB3DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UR39C9P62SJ9CLPIUSRKD5Q66Q1FDHKMCPB3F5HMOP9F9HKMCPB3F5HMOPAFC9PMASJMCLP3MAAM(Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/lifecycle/AppLifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 45
    return-object p0
.end method

.method public static provideCameraManagerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 61
    const-string v0, "GCA-CM-Exec"

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Futures2;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static provideCameraManagerHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GCA-CM-Hndlr"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method
