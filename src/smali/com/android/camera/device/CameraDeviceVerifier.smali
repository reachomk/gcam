.class public final Lcom/android/camera/device/CameraDeviceVerifier;
.super Ljava/lang/Object;
.source "CameraDeviceVerifier.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

.field private final lock:Ljava/lang/Object;

.field private pendingResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final usageStatistics:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "CamDeviceVerify"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/device/CameraDeviceVerifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/apps/camera/async/HandlerFactory;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 52
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceVerifier;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 53
    iput-object p3, p0, Lcom/android/camera/device/CameraDeviceVerifier;->handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

    .line 54
    iput-object p4, p0, Lcom/android/camera/device/CameraDeviceVerifier;->executor:Ljava/util/concurrent/Executor;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->lock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/device/CameraDeviceVerifier;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceVerifier;->pollUntilAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/device/CameraDeviceVerifier;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/device/CameraDeviceVerifier;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->pendingResult:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/device/CameraDeviceVerifier;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->pendingResult:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method private final pollUntilAvailable()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    sget-object v2, Lcom/android/camera/device/CameraDeviceVerifier;->TAG:Ljava/lang/String;

    const-string v4, "Attempting to reconnect to the camera service with a 7000ms timeout in 200ms increments."

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 142
    :try_start_0
    new-instance v6, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v6}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 143
    :try_start_1
    new-instance v2, Lcom/android/camera/device/CameraDeviceVerifier$2;

    invoke-direct {v2, v5}, Lcom/android/camera/device/CameraDeviceVerifier$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 155
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v7, "PollUntilReconnect"

    .line 156
    invoke-static {v6, v7}, Lcom/google/android/apps/camera/async/HandlerFactory;->create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v7

    .line 155
    invoke-virtual {v4, v2, v7}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    move v4, v1

    .line 159
    :goto_0
    const/16 v7, 0x23

    if-ge v4, v7, :cond_1

    .line 160
    iget-object v7, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    .line 161
    if-eqz v7, :cond_0

    array-length v7, v7

    if-lez v7, :cond_0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    sget-object v5, Lcom/android/camera/device/CameraDeviceVerifier;->TAG:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v4, v4, 0xc8

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x45

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Camera Manager reconnect attempted and succeeded after ~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ms"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/android/camera/device/CameraDeviceVerifier;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/stats/UsageStatistics;->openDeviceRetryEvent(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 175
    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 184
    :goto_1
    return v0

    .line 170
    :cond_0
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    :try_start_4
    invoke-static {v8, v9, v7}, Ljava/lang/Thread;->sleep(JI)V

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_1
    sget-object v0, Lcom/android/camera/device/CameraDeviceVerifier;->TAG:Ljava/lang/String;

    const-string v4, "Camera Manager reconnect failed, or there are no cameras on this device."

    invoke-static {v0, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/camera/stats/UsageStatistics;->openDeviceRetryEvent(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 175
    :try_start_5
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_2
    :goto_2
    move v0, v1

    .line 184
    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    :catchall_0
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    throw v0
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception v0

    .line 176
    :goto_6
    :try_start_9
    sget-object v3, Lcom/android/camera/device/CameraDeviceVerifier;->TAG:Ljava/lang/String;

    const-string v4, "Camera Manager reconnect failed, or there are no cameras on this device."

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/UsageStatistics;->openDeviceRetryEvent(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 180
    if-eqz v2, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_2

    .line 175
    :catch_2
    move-exception v4

    :try_start_a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 180
    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v2, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_4
    throw v0

    .line 180
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    .line 175
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 142
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method private pollUntilCameraAvailable()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceVerifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceVerifier;->pendingResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-nez v2, :cond_0

    .line 88
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->pendingResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 89
    const/4 v0, 0x1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceVerifier;->pendingResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/device/CameraDeviceVerifier$1;

    invoke-direct {v1, p0}, Lcom/android/camera/device/CameraDeviceVerifier$1;-><init>(Lcom/android/camera/device/CameraDeviceVerifier;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    :cond_1
    return-object v2

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final checkCamerasExist()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceVerifier;->pollUntilCameraAvailable()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method
