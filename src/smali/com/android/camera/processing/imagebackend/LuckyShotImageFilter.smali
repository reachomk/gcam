.class public final Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;
.super Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;
.source "LuckyShotImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;,
        Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bestImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

.field private bestImageSession:Lcom/android/camera/session/SessionBase;

.field private bestLuckyScore:D

.field private final computeCallbackOptional:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "LkyShtImgFltr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/processing/imagebackend/ImageConsumer;Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;Lcom/google/common/base/Optional;Ljava/lang/String;ZLcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageConsumer;",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/camera/stats/LuckyShotMetaDataBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p5}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;-><init>(Lcom/android/camera/processing/imagebackend/ImageConsumer;Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;Z)V

    .line 120
    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 121
    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImageSession:Lcom/android/camera/session/SessionBase;

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestLuckyScore:D

    .line 124
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->computeCallbackOptional:Lcom/google/common/base/Optional;

    .line 125
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 126
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithStandardFactory(Lcom/android/camera/processing/imagebackend/ImageBackend;Ljava/util/concurrent/Executor;Lcom/google/common/base/Optional;Lcom/google/android/apps/camera/util/Callback;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;Z)Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;",
            ">;",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskLuckyShot;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            "Z)",
            "Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;"
        }
    .end annotation

    .prologue
    .line 169
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-instance v5, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    new-instance v0, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-direct {v5, v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    .line 1223
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;-><init>(Lcom/android/camera/processing/imagebackend/ImageTaskManager;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/util/Callback;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V

    .line 1226
    new-instance v6, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    move-object v7, p0

    move-object v8, v0

    move-object v9, p2

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;-><init>(Lcom/android/camera/processing/imagebackend/ImageConsumer;Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;Lcom/google/common/base/Optional;Ljava/lang/String;ZLcom/android/camera/stats/LuckyShotMetaDataBuilder;)V

    .line 1236
    invoke-virtual {v0, v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->setLuckyShotImageFilter(Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;)V

    .line 169
    return-object v6
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    invoke-virtual {v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->markCloseSession()V

    .line 189
    invoke-super {p0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized processFilteredResult$5166KOBMC4NNAT39DGNL6PBK7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEP9AO______(Ljava/util/Set;Lcom/android/camera/session/StackableSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;",
            "Lcom/android/camera/session/StackableSession;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 332
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->TAG:Ljava/lang/String;

    .line 335
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x68

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Filtered Image future failed to return a single image. There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " images.  No Image produced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 341
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->TAG:Ljava/lang/String;

    .line 344
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x58

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Filtered Image return multiple images. There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " images.  No Image produced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lucky Shot Filter returned multiple images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    invoke-virtual {v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->markSelectionDone()V

    .line 350
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 353
    invoke-virtual {v1}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->getTimestampDoneLuckyShotSession()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 354
    invoke-virtual {v1}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->getTimestampStartLuckyShotSession()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "LS calculation session time (ms)= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-interface {p2}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_3

    .line 359
    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getSessionTrace()Lcom/android/camera/stats/CaptureSessionTrace;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureSessionTrace;->onLuckyShotSessionMetadataReceived(Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->computeCallbackOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->computeCallbackOptional:Lcom/google/common/base/Optional;

    .line 368
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;

    .line 370
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 369
    invoke-interface {v0, v1, p2, v2}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;->saveLuckyShot$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNKIRB1CTIL8RQGE9NM6PBJECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDQ62T3J5T67AORBF59MGRRK9LIN8OA4C5Q62GJLD5M68PBI7CKLC___(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/StackableSession;Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    invoke-virtual {v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->markStartSession()V

    .line 183
    invoke-super {p0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final startWithFutureListener$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTG____(Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/StackableSession;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;-><init>(Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;Lcom/android/camera/session/StackableSession;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 290
    return-object v0
.end method

.method public final bridge synthetic submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V

    return-void
.end method

.method public final declared-synchronized updateScore(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;D)Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;
    .locals 3

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestLuckyScore:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    .line 309
    :cond_0
    new-instance v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImageSession:Lcom/android/camera/session/SessionBase;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V

    .line 310
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 311
    iput-wide p3, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestLuckyScore:D

    .line 312
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->bestImageSession:Lcom/android/camera/session/SessionBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$ImageSessionPairing;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
