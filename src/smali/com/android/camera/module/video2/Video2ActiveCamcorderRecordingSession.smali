.class public final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderRecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

.field private final camcorderSnapshotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ">;"
        }
    .end annotation
.end field

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final resumeDelayedExecutor:Ljava/util/concurrent/Executor;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

.field private final updateElapsedTimeRunnable:Ljava/lang/Runnable;

.field private final utcClock:Lcom/google/android/apps/camera/util/time/UtcClock;

.field private final video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "Vid2ActiveCdrRecSes"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderRecordingSession;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/UtcClock;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
    .locals 7

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderSnapshotList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->lock:Ljava/lang/Object;

    .line 50
    const-string v0, "Video2Ex"

    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Futures2;->newScheduledThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    new-instance v0, Lcom/google/android/apps/camera/async/DelayedExecutor;

    const-string v1, "Video2Ex"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/async/DelayedExecutor;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->resumeDelayedExecutor:Ljava/util/concurrent/Executor;

    .line 55
    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->updateElapsedTimeRunnable:Ljava/lang/Runnable;

    .line 92
    sget v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    .line 101
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    .line 102
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 103
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->utcClock:Lcom/google/android/apps/camera/util/time/UtcClock;

    .line 104
    iput-object p4, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    .line 105
    iput-object p5, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 107
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$2;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/camcorder/CamcorderRecordingSession;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E996AORFE9I6IRJ7ADIN6SR9DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCI1CDQ6ITJ58DGMQORFE9I6ASIICLHMUSJ4D5N6EKR5EDPMIRRE4H9N8OBKCKTG____(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    return v0
.end method

.method static synthetic access$202$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E996AORFE9I6IRJ7ADIN6SR9DTN3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9FEPKM8PBF68NLCQB4CLNJ4GB3EHKNCPA3C5MM6RRICHIN4KJ5CDNN4P39DPJL6PBJEDKMURH4ADQ62T357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABRMD5I6ARPI5TB6IP35DSP42ORKD5R6AGR1DLHMUSJ4CLP54PB3DTP68QBECT9MASRJD5NMS92JEHGN8P9R(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/google/android/apps/camera/util/time/UtcClock;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->utcClock:Lcom/google/android/apps/camera/util/time/UtcClock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ModuleUI;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->updateElapsedTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderSnapshotList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onPauseButtonClicked()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-ne v0, v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->pause()V

    .line 208
    sget v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING_PAUSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    .line 209
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v2, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_PAUSE:I

    invoke-virtual {v0, v2}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 211
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

.method public final onResumeButtonClicked()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_START:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->resumeDelayedExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public final onSnapshotButtonClicked()V
    .locals 5

    .prologue
    .line 155
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->TAG:Ljava/lang/String;

    const-string v1, "onSnapshotButtonClicked"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 157
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING_PAUSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-ne v0, v2, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2ModuleUI;->setSnapshotButtonClickEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    .line 164
    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->takeSnapshot$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E99MSOBGEDK6UT26ELQ7ASJ5ECTG____()Lcom/android/camera/one/v2/command/CommandExecutorModule;

    move-result-object v0

    .line 166
    iget-object v2, v0, Lcom/android/camera/one/v2/command/CommandExecutorModule;->imageExposedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$4;

    invoke-direct {v3, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$4;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V

    iget-object v4, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v2, v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 179
    iget-object v0, v0, Lcom/android/camera/one/v2/command/CommandExecutorModule;->camcorderSnapshotFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;

    invoke-direct {v2, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0, v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 201
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final stopRecording(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/gms/common/internal/zzf$zza;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->STOPPED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->STOPPING_RECORDING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-ne v0, v2, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "state is not RECORDING"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 137
    :goto_0
    return-object v0

    .line 127
    :cond_1
    sget v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->STOPPING_RECORDING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 132
    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 137
    :goto_1
    new-instance v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$3;

    invoke-direct {v2, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$3;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->camcorderRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSession;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method
