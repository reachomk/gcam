.class public final Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "SimpleMeteringResponseListener.java"


# instance fields
.field private final brightnessConcurrentState:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final filter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

.field private final meteringMetric:Lcom/android/camera/one/v2/smartmetering/MeteringMetric;

.field private mostRecentFrameNumber:J


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/smartmetering/MeteringMetric;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->meteringMetric:Lcom/android/camera/one/v2/smartmetering/MeteringMetric;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->filter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    .line 29
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v1, -0x40800000    # -1.0f

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->brightnessConcurrentState:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->mostRecentFrameNumber:J

    .line 32
    return-void
.end method


# virtual methods
.method public final getBrightnessObservable()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->brightnessConcurrentState:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 40
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->mostRecentFrameNumber:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->filter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->shouldAccept(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->meteringMetric:Lcom/android/camera/one/v2/smartmetering/MeteringMetric;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/smartmetering/MeteringMetric;->score(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)F

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->brightnessConcurrentState:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 43
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->mostRecentFrameNumber:J

    .line 45
    :cond_0
    return-void
.end method
