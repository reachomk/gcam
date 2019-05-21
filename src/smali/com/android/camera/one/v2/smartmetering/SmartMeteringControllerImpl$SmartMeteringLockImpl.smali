.class final Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;
.super Ljava/lang/Object;
.source "SmartMeteringControllerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartMeteringLockImpl"
.end annotation


# instance fields
.field private closed:Z

.field private final meteringAeResults:Lcom/google/googlex/gcam/AeResults;

.field private final meteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

.field private synthetic this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->meteringAeResults:Lcom/google/googlex/gcam/AeResults;

    .line 45
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->meteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->closed:Z

    .line 47
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$000(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 65
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->closed:Z

    if-eqz v2, :cond_1

    .line 66
    monitor-exit v3

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->closed:Z

    .line 69
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$110(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I

    .line 70
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$100(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I

    move-result v2

    if-nez v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ78DNMST3IDTM6OPBI95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8P9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$202$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ78DNMST3IDTM6OPBI95MN0R1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;I)I

    .line 72
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ78DNMST3IDTM6OPBI95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8P9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)I

    move-result v2

    .line 74
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    sget v3, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v2, v3, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$400(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;)V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 82
    :cond_2
    sget v3, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v2, v3, :cond_3

    .line 83
    :goto_2
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;->access$500(Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public final getMeteringAeResults()Lcom/google/googlex/gcam/AeResults;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->meteringAeResults:Lcom/google/googlex/gcam/AeResults;

    return-object v0
.end method

.method public final getMeteringMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringControllerImpl$SmartMeteringLockImpl;->meteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    return-object v0
.end method
