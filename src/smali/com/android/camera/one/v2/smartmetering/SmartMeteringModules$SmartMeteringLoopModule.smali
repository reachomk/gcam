.class public final Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;
.super Ljava/lang/Object;
.source "SmartMeteringModules.java"


# instance fields
.field private final maxMeteringImageCount:I

.field private final meteringFramePeriod:I

.field private final useEagerMetering:Z

.field private final useSmartMeteringForceMode:Z


# direct methods
.method public constructor <init>(ZIZI)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-boolean p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->useEagerMetering:Z

    .line 317
    iput p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->meteringFramePeriod:I

    .line 318
    iput p4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->maxMeteringImageCount:I

    .line 319
    iput-boolean p3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->useSmartMeteringForceMode:Z

    .line 320
    return-void
.end method


# virtual methods
.method public final provideEagerSmartMeteringProcessor(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/hdrplus/HdrPlusSession;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 351
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p4, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 353
    :goto_0
    new-instance v1, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->useSmartMeteringForceMode:Z

    invoke-direct {v1, p2, v0, v2, p3}, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;-><init>(Lcom/android/camera/hdrplus/HdrPlusSession;IZLjava/util/concurrent/ExecutorService;)V

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;

    return-object v0

    :cond_0
    move v0, v1

    .line 352
    goto :goto_0
.end method

.method public final provideLazySmartMeteringProcessor(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 366
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p3, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 367
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 368
    :goto_0
    new-instance v1, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->useSmartMeteringForceMode:Z

    invoke-direct {v1, p2, v0, v2}, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;-><init>(Lcom/android/camera/hdrplus/HdrPlusSession;IZ)V

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;

    return-object v0

    :cond_0
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method public final provideMeteringLoopStarter$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBICLGM8PBI5T6M2RJ1CTIM8IBDC5JMAKJ5C5I6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM6RRICKNKCSJ1DLIL6PBIEPIN4EQCCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNK6OBGEHQN4PAICLPNAR3K8PKMOT35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR3DTMMQRRE5T374OBDCL1MORR3DCTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8PB2ELJIUJ3FCTJMASH48PGM6T3FE9SJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMQRB1DPI2UGR1DLIN4OA3DTMMQOBECH2NGPB3ELQ6USHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79HNMUS2JEHGN4T35E8TG____(Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;Lcom/android/camera/one/v2/common/FrameClock;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ")",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    iget v8, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->meteringFramePeriod:I

    iget v9, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->maxMeteringImageCount:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;Lcom/android/camera/one/v2/common/FrameClock;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/command/CameraCommandExecutor;II)V

    return-object v0
.end method

.method public final provideSmartMeteringManager(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;
    .locals 2

    .prologue
    .line 401
    new-instance v1, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->useEagerMetering:Z

    if-eqz v0, :cond_0

    .line 406
    sget v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    :goto_0
    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;I)V

    .line 401
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    return-object v0

    .line 406
    :cond_0
    sget v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    goto :goto_0
.end method
