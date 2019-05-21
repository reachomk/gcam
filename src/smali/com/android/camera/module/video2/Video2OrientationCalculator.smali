.class public final Lcom/android/camera/module/video2/Video2OrientationCalculator;
.super Ljava/lang/Object;
.source "Video2OrientationCalculator.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final concurrentStateVideoOrientation:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceOrientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

.field private isOrientationLocked:Z

.field private final lock:Ljava/lang/Object;

.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/burst/OrientationLockController;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;-><init>(Lcom/android/camera/module/video2/Video2OrientationCalculator;)V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->deviceOrientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    .line 45
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 46
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 47
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 49
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 51
    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->calculateVideoOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->concurrentStateVideoOrientation:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->lock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->isOrientationLocked:Z

    .line 55
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->deviceOrientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/OrientationLockController;->addDeviceOrientationListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/video2/Video2OrientationCalculator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/video2/Video2OrientationCalculator;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->isOrientationLocked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/google/android/apps/camera/util/layout/Orientation;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->calculateVideoOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/video2/Video2OrientationCalculator;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->concurrentStateVideoOrientation:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method private final calculateVideoOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 106
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/camera/util/ImageRotationCalculator;->getImageRotation(IIZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->deviceOrientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/OrientationLockController;->removeDeviceOrientationListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    .line 61
    return-void
.end method

.method public final getOrientationObservable()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->concurrentStateVideoOrientation:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final lock()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->isOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 81
    monitor-exit v1

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->isOrientationLocked:Z

    .line 84
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final unlock()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->isOrientationLocked:Z

    if-nez v0, :cond_0

    .line 96
    monitor-exit v1

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->isOrientationLocked:Z

    .line 99
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->concurrentStateVideoOrientation:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 100
    invoke-interface {v2}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->calculateVideoOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 101
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
