.class public final Lcom/google/android/apps/lightcycle/sensor/SensorReader;
.super Ljava/lang/Object;
.source "SensorReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accelFilterCoefficient:F

.field private acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private angularVelocitySqrRad:F

.field private camProvider:Lcom/android/camera/app/LegacyCameraProvider;

.field private ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

.field private filterInitialized:Z

.field private filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private geomagnetic:[F

.field private gyroBias:[F

.field private gyroLastTimestamp:J

.field private imuOrientationDeg:F

.field private lastGlMatrixFromEkf:[D

.field private numGyroSamples:I

.field private rotationAccumulator:[F

.field private running:Z

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorThread:Landroid/os/HandlerThread;

.field private sensorVelocityCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private tForm:[F

.field private useEkf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SensorReader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/LegacyCameraProvider;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    .line 40
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 43
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 44
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    .line 46
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->accelFilterCoefficient:F

    .line 49
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->geomagnetic:[F

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    .line 53
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    .line 54
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    .line 55
    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    .line 58
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    .line 59
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->tForm:[F

    .line 62
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    .line 65
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorVelocityCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    .line 70
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    .line 71
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->lastGlMatrixFromEkf:[D

    .line 510
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;-><init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->camProvider:Lcom/android/camera/app/LegacyCameraProvider;

    .line 77
    return-void

    .line 54
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->updateAccelerometerState(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->geomagnetic:[F

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/lightcycle/sensor/SensorReader;F)F
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    return p1
.end method

.method static synthetic access$800$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN6PBEEDNN4BQJCLN76RRIA9IM2P35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/camera/util/Callback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorVelocityCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->updateGyroState(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static get3x3Matrix([F)[F
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 449
    aget v1, p0, v2

    aput v1, v0, v2

    .line 450
    aget v1, p0, v3

    aput v1, v0, v3

    .line 451
    aget v1, p0, v4

    aput v1, v0, v4

    .line 452
    const/4 v1, 0x3

    aget v2, p0, v5

    aput v2, v0, v1

    .line 453
    aget v1, p0, v6

    aput v1, v0, v5

    .line 454
    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v0, v6

    .line 455
    const/4 v1, 0x6

    const/16 v2, 0x8

    aget v2, p0, v2

    aput v2, v0, v1

    .line 456
    const/4 v1, 0x7

    const/16 v2, 0x9

    aget v2, p0, v2

    aput v2, v0, v1

    .line 457
    const/16 v1, 0x8

    const/16 v2, 0xa

    aget v2, p0, v2

    aput v2, v0, v1

    .line 458
    return-object v0
.end method

.method private final updateAccelerometerState(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 479
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 481
    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    .line 492
    :goto_0
    return-void

    .line 483
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->accelFilterCoefficient:F

    .line 484
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 485
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v4, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 487
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v4, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 489
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v3, v3, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    goto :goto_0
.end method

.method private final updateGyroState(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 498
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 501
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 502
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x2

    aget v3, v1, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    aput v0, v1, v2

    .line 503
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    .line 504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    .line 507
    return-void

    .line 504
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final enableEkf(Z)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    .line 189
    return-void
.end method

.method public final getAndResetGyroData()[F
    .locals 4

    .prologue
    .line 392
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1406
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1407
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1408
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1409
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    .line 398
    monitor-exit p0

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAngularVelocitySquaredRad()F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    return v0
.end method

.method public final getAzimuthInDeg()I
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 341
    new-array v0, v8, [F

    .line 342
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 1113
    new-array v3, v5, [F

    iget v4, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    aput v4, v3, v6

    iget v4, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    aput v4, v3, v7

    const/4 v4, 0x2

    iget v2, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    aput v2, v3, v4

    .line 345
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->geomagnetic:[F

    .line 342
    invoke-static {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 351
    new-array v1, v8, [F

    .line 352
    invoke-static {v0, v7, v5, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 356
    new-array v0, v5, [F

    .line 357
    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 360
    aget v0, v0, v6

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final getEkfEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    return v0
.end method

.method public final getFilterOutput()[F
    .locals 11

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v8, 0x10

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->getGLMatrix()[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->lastGlMatrixFromEkf:[D

    .line 425
    :cond_0
    new-array v0, v8, [F

    move v2, v1

    .line 426
    :goto_0
    if-ge v2, v8, :cond_1

    .line 427
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->lastGlMatrixFromEkf:[D

    aget-wide v6, v5, v2

    double-to-float v5, v6

    aput v5, v0, v2

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/high16 v2, 0x42b40000    # 90.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 432
    new-array v5, v8, [F

    .line 435
    invoke-static {v5, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 436
    iget v7, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 437
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->tForm:[F

    move v4, v1

    move v6, v1

    move-object v7, v0

    move v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->tForm:[F

    return-object v0
.end method

.method public final getHeadingDegrees()D
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getImuOrientationDegrees()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    return v0
.end method

.method public final getNumGyroSamples()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    return v0
.end method

.method public final resetGyroBias()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 249
    return-void
.end method

.method public final setGyroBias([F)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    aget v1, p1, v2

    aput v1, v0, v2

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    aget v1, p1, v3

    aput v1, v0, v3

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    aget v1, p1, v4

    aput v1, v0, v4

    .line 374
    return-void
.end method

.method public final setHeadingDegrees(D)V
    .locals 7

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 205
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 206
    add-double v0, p1, v4

    .line 208
    :goto_0
    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 209
    sub-double/2addr v0, v4

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->setHeadingDegrees(D)V

    .line 212
    return-void

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method

.method public final setSensorVelocityCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorVelocityCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 468
    return-void
.end method

.method public final start$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THMURJ6D5JIUHRJCLP7CQB3CLPKGPBCE1IN4EP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TPMARJJDTP2UKR5DPPMUSIICLGM8PBI7C______(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 88
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    return-object p0

    .line 91
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->camProvider:Lcom/android/camera/app/LegacyCameraProvider;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->camProvider:Lcom/android/camera/app/LegacyCameraProvider;

    .line 97
    invoke-interface {v3}, Lcom/android/camera/app/LegacyCameraProvider;->getFirstBackCameraId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/camera/app/LegacyCameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    .line 102
    const-string v1, "Model is "

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    :goto_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Nexus 7"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->useGyroSensorDelayFastestForPanorama()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->TAG:Ljava/lang/String;

    const-string v1, "Using GServices Override SENSOR_DELAY_FASTEST for Gyro"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 122
    :goto_2
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 125
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;

    const-string v3, "sensor thread"

    invoke-direct {v0, p0, v3, v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;-><init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorThread:Landroid/os/HandlerThread;

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->resetGyroBias()V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->reset()V

    goto :goto_0

    .line 102
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v0

    .line 119
    goto :goto_2
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorThread:Landroid/os/HandlerThread;

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    :cond_1
    return-void
.end method
