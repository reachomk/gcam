.class final Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;
.super Ljava/lang/Object;
.source "SmartMeteringControllerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;
.implements Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;
    }
.end annotation


# instance fields
.field private cachedMeteringAeResults:Lcom/google/googlex/gcam/AeResults;

.field private cachedMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

.field private closed:Z

.field private currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

.field private currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

.field private final eagerSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

.field private final lazySmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

.field private final lock:Ljava/lang/Object;

.field private openMeteringLockCount:I

.field private pendingMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

.field private final processorLock:Ljava/lang/Object;

.field private final smartMeteringLoopStarter:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "SMManager"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 144
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->smartMeteringLoopStarter:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    .line 145
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->eagerSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    .line 146
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lazySmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->processorLock:Ljava/lang/Object;

    .line 149
    iput-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->closed:Z

    .line 150
    iput v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    .line 151
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->cachedMeteringAeResults:Lcom/google/googlex/gcam/AeResults;

    .line 152
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->cachedMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 153
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 154
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 155
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    return v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ78DNMST3IDTM6OPBI95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8P9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    return v0
.end method

.method static synthetic access$202$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ78DNMST3IDTM6OPBI95MN0R1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    return p1
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ78DNMST3IDTM6OPBI95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8P9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->pendingMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->stopLoop()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->startLoop(Z)V

    return-void
.end method

.method private final startLoop(Z)V
    .locals 4

    .prologue
    .line 212
    new-instance v1, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 214
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->processorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    if-eqz p1, :cond_0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->eagerSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    .line 217
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->smartMeteringLoopStarter:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    .line 218
    invoke-virtual {v0, v1, v3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->start(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 219
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_1
    iget-boolean v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->closed:Z

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 224
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    :goto_1
    return-void

    .line 216
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lazySmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 226
    :cond_1
    :try_start_3
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 227
    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 228
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private final stopLoop()V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 246
    monitor-exit v1

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 253
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final throwIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "SmartMeteringController already closed"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->closed:Z

    .line 331
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 332
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 333
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 334
    sget v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    iput v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 335
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 339
    :cond_0
    return-void

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final currentMode$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRJDLGN4T3DCLQ6ASJ9DPJIUKRDC5P78JB5EHIN4QBECT6MUP357C______()I
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    monitor-exit v1

    return v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getLatestViewfinderFrame()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->processorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;->getLatestViewfinderFrame()Lcom/google/common/base/Optional;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 164
    :try_start_0
    iget v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    sget v3, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v2, v3, :cond_0

    move v3, v0

    .line 1179
    :goto_0
    iget-object v5, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1180
    :try_start_1
    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->closed:Z

    if-eqz v2, :cond_1

    .line 1181
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v1

    .line 164
    goto :goto_0

    .line 1183
    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    sget v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    :goto_2
    iput v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->pendingMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 1187
    iget v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    if-lez v2, :cond_4

    .line 1188
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    if-nez v2, :cond_3

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1191
    monitor-exit v5

    goto :goto_1

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 166
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1183
    :cond_2
    :try_start_5
    sget v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1188
    goto :goto_3

    .line 1194
    :cond_4
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    iget v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->pendingMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v0, v1, :cond_5

    .line 1195
    monitor-exit v5

    goto :goto_1

    .line 1198
    :cond_5
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    if-eqz v0, :cond_6

    .line 1199
    invoke-direct {p0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->stopLoop()V

    .line 1202
    :cond_6
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->pendingMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    iput v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 1203
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    sget v1, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v0, v1, :cond_7

    .line 1204
    monitor-exit v5

    goto :goto_1

    .line 1207
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->startLoop(Z)V

    .line 1208
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final startCapture(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;J)Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->throwIfClosed()V

    .line 288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1261
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 1262
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1264
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 1265
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1266
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1272
    if-eqz v2, :cond_0

    .line 1274
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->throwIfClosed()V

    .line 294
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentMeteringMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    sget v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v0, v2, :cond_1

    .line 295
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    .line 296
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 322
    :goto_0
    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1266
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 301
    :cond_1
    :try_start_6
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    if-lez v0, :cond_2

    .line 302
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    .line 303
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->cachedMeteringAeResults:Lcom/google/googlex/gcam/AeResults;

    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->cachedMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    monitor-exit v1

    goto :goto_0

    .line 305
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 309
    iget-object v6, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->processorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 310
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    const-string v1, "Must start loop before invoking startCapture."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->smartMeteringLoopStarter:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->sendFilteredFrame(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;J)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->currentSmartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;->startCapture()Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 315
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 317
    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 318
    :try_start_9
    invoke-direct {p0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->throwIfClosed()V

    .line 319
    iget v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->openMeteringLockCount:I

    .line 320
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/AeResults;

    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->cachedMeteringAeResults:Lcom/google/googlex/gcam/AeResults;

    .line 321
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->cachedMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 322
    new-instance v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/AeResults;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v0, v2

    goto :goto_0

    .line 315
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 323
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method
