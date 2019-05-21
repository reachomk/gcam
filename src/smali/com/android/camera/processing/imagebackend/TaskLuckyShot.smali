.class public final Lcom/android/camera/processing/imagebackend/TaskLuckyShot;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskLuckyShot.java"


# instance fields
.field private final beforeMetricCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskLuckyShot;",
            ">;"
        }
    .end annotation
.end field

.field private final luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

.field private final luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

.field private final metric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;Lcom/android/camera/session/SessionBase;Lcom/google/android/apps/camera/util/Callback;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;ILcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;",
            "Lcom/android/camera/session/SessionBase;",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskLuckyShot;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            "I",
            "Lcom/android/camera/stats/LuckyShotMetaDataBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    sget v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->CRITICAL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V

    .line 67
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    .line 68
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->beforeMetricCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 69
    iput-object p7, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->metric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    .line 71
    iput-object p9, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 72
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->beforeMetricCallback:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {v0, p0}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 157
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;-><init>()V

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->startNs:J

    .line 159
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->metric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-interface {v1, v2}, Lcom/android/camera/processing/imagebackend/LuckyShotMetric;->score(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->endNs:J

    .line 163
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    invoke-virtual {v2, v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->addScoreCalculation(Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->session:Lcom/android/camera/session/SessionBase;

    iget-wide v4, v1, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;->score:D

    .line 166
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->updateScore(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;D)Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;

    move-result-object v2

    .line 169
    iget-object v0, v1, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;->luckyShotFrameInfoBuilderOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    iget-object v0, v1, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;->luckyShotFrameInfoBuilderOptional:Lcom/google/common/base/Optional;

    .line 171
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;

    .line 170
    invoke-virtual {v3, v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->addLuckyShotFrameInfoToBurst(Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;)V

    .line 178
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;->getImageToProcess()Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-virtual {v2}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;->getImageToProcess()Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    .line 181
    :cond_1
    return-void
.end method
