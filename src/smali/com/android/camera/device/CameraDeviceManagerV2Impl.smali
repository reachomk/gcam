.class final Lcom/android/camera/device/CameraDeviceManagerV2Impl;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2Impl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/device/CameraDeviceManagerV2;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppPause;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppResume;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStart;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/CameraDeviceManagerV2Impl$NoOpCameraDeviceListener;,
        Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;,
        Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private final appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

.field private final cameraDeviceOpenerFactory:Lcom/android/camera/device/CameraDeviceOpenerFactory;

.field private final cameraHandler:Landroid/os/Handler;

.field private cameraOpener:Lcom/android/camera/device/CameraDeviceOpener;

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private isPausing:Z

.field private isRealDeviceClosing:Z

.field private isRealDeviceOpening:Z

.field private isStarted:Z

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/android/camera/debug/Logger;

.field private realCameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private realCameraState:Lcom/android/camera/device/CameraDeviceState;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "CameraDeviceMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraDeviceOpenerFactory;Landroid/os/Handler;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/device/ActiveCameraDeviceTracker;Lcom/android/camera/util/lifetime/AppLifetime;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraDeviceOpenerFactory:Lcom/android/camera/device/CameraDeviceOpenerFactory;

    .line 95
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraHandler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 97
    iput-object p4, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 98
    iput-object p5, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    .line 99
    iput-object p6, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 101
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isStarted:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceClosing:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceOpening:Z

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->TAG:Ljava/lang/String;

    invoke-interface {p7, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->log:Lcom/android/camera/debug/Logger;

    .line 106
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->openRealCameraDevice()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->closeRealCameraDevice()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->openAsync()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)Lcom/google/android/apps/camera/async/AddOnlyLifetime;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->visibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/device/CameraId;ZI)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p3}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->onRealCameraDeviceClosed$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUP35EPKM6P9F8DGMQPBIC54M8EQQ94KLC___(Lcom/google/android/apps/camera/device/CameraId;I)V

    return-void
.end method

.method private final closeAsyncAndMaybeOpen()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceClosing:Z

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceClosing:Z

    .line 289
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/device/CameraDeviceManagerV2Impl$3;

    invoke-direct {v2, p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$3;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final closeRealCameraDevice()V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    .line 320
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraOpener:Lcom/android/camera/device/CameraDeviceOpener;

    .line 322
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraOpener:Lcom/android/camera/device/CameraDeviceOpener;

    .line 323
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    .line 324
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 325
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceClosing:Z

    .line 326
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 335
    :cond_0
    if-eqz v2, :cond_1

    .line 336
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 338
    :cond_1
    return-void

    .line 326
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final disconnect(Z)V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 177
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    .line 178
    if-eqz v0, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    invoke-virtual {v2, v0}, Lcom/android/camera/device/CameraDeviceState;->removeListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 184
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->invokeDisconnectAsync(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 186
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-eqz p1, :cond_3

    .line 1306
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1307
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceClosing:Z

    if-nez v0, :cond_2

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceClosing:Z

    .line 1309
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->closeRealCameraDevice()V

    .line 1310
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->openAsync()V

    .line 1312
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :goto_0
    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1312
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->closeAsyncAndMaybeOpen()V

    goto :goto_0
.end method

.method private final invokeDisconnectAsync(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/device/CameraDeviceManagerV2Impl$1;

    invoke-direct {v1, p1}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$1;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method private final onRealCameraDeviceClosed$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUP35EPKM6P9F8DGMQPBIC54M8EQQ94KLC___(Lcom/google/android/apps/camera/device/CameraId;I)V
    .locals 5

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 345
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->closeRealCameraDevice()V

    .line 351
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v3, p1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 356
    iget-boolean v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isStarted:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isPausing:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {v2, p1}, Lcom/google/android/apps/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    .line 365
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->log:Lcom/android/camera/debug/Logger;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x36

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Camera device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to open! Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    new-instance v2, Lcom/android/camera/device/CameraOpenException;

    invoke-direct {v2, p2}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    .line 370
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    :goto_0
    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 372
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->openAsync()V

    goto :goto_0

    .line 372
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private final openAsync()V
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceOpening:Z

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceOpening:Z

    .line 250
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/device/CameraDeviceManagerV2Impl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$2;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final openRealCameraDevice()V
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/AppLifetime;->isVisibleLifetimeClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraId:Lcom/google/android/apps/camera/device/CameraId;

    if-nez v0, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 267
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraDeviceOpenerFactory:Lcom/android/camera/device/CameraDeviceOpenerFactory;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/device/CameraDeviceOpenerFactory;->create(Ljava/lang/String;)Lcom/android/camera/device/CameraDeviceOpener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraOpener:Lcom/android/camera/device/CameraDeviceOpener;

    .line 268
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->cameraOpener:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-virtual {v0}, Lcom/android/camera/device/CameraDeviceOpener;->start()Lcom/android/camera/device/CameraDeviceState;

    move-result-object v0

    .line 269
    new-instance v3, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;

    invoke-direct {v3, p0, v2}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$RealCameraDeviceListener;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;Lcom/google/android/apps/camera/device/CameraId;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/device/CameraDeviceState;->addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 270
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    invoke-virtual {v0, v3}, Lcom/android/camera/device/CameraDeviceState;->addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 272
    iput-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 273
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->visibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceState;

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    .line 274
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->activeCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v0, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isRealDeviceOpening:Z

    .line 278
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final visibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/AppLifetime;->getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final disconnectAsync()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->disconnect(Z)V

    .line 159
    return-void
.end method

.method public final disconnectSync()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->disconnect(Z)V

    .line 164
    return-void
.end method

.method public final onAppPause()V
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isPausing:Z

    .line 211
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAppResume()V
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isPausing:Z

    .line 204
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAppStart()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isStarted:Z

    .line 218
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAppStop()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isStarted:Z

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->isPausing:Z

    .line 226
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final open(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$NoOpCameraDeviceListener;

    invoke-direct {v0, p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$NoOpCameraDeviceListener;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->open(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 111
    return-void
.end method

.method public final open(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 7

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraDeviceManager#open"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 119
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    .line 123
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->visibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    new-instance v4, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    invoke-direct {v4, p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;-><init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V

    invoke-interface {v0, v4}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    .line 124
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    invoke-virtual {v0, p2}, Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;->addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 125
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 129
    if-eqz v3, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    invoke-virtual {v0, v3}, Lcom/android/camera/device/CameraDeviceState;->removeListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 136
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->invokeDisconnectAsync(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 139
    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    if-nez v0, :cond_4

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->log:Lcom/android/camera/debug/Logger;

    const-string v3, "Opening new Camera: "

    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->openAsync()V

    .line 150
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 153
    return-void

    .line 140
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 142
    :cond_4
    :try_start_4
    invoke-virtual {v2, p1}, Lcom/google/android/apps/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->log:Lcom/android/camera/debug/Logger;

    const-string v3, "Attaching to already open Camera: "

    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->realCameraState:Lcom/android/camera/device/CameraDeviceState;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->virtualCameraState:Lcom/android/camera/device/CameraDeviceManagerV2Impl$VirtualCameraDeviceState;

    invoke-virtual {v0, v2}, Lcom/android/camera/device/CameraDeviceState;->addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    goto :goto_1

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->log:Lcom/android/camera/debug/Logger;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Closing camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and opening camera: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->closeAsyncAndMaybeOpen()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method
