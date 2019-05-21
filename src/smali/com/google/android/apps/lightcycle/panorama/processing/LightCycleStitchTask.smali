.class public final Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;
.super Ljava/lang/Object;
.source "LightCycleStitchTask.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTask;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

.field private finishedCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final outputFile:Ljava/io/File;

.field private final processingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionPath:Ljava/lang/String;

.field private final stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

.field private volatile suspended:Z

.field private final title:Ljava/lang/String;

.field private final waitLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "LightCycleStTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->waitLock:Ljava/util/concurrent/Semaphore;

    .line 34
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->suspended:Z

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->processingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .line 46
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->sessionPath:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->outputFile:Ljava/io/File;

    .line 48
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->title:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->panoramaMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->processingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->waitIfSuspended()V

    return-void
.end method

.method private final waitIfSuspended()V
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->suspended:Z

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->waitLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final getSession()Lcom/android/camera/session/SessionBase;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method public final process(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/16 v1, 0xb

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->processingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->waitIfSuspended()V

    .line 58
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->createNewStitchingSession()I

    move-result v2

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->outputFile:Ljava/io/File;

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 61
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v3, v8}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    .line 64
    new-instance v3, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask$1;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;JLjava/io/File;)V

    invoke-static {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setProgressCallback(ILcom/google/android/apps/lightcycle/panorama/ProgressCallback;)V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 92
    sget-object v3, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->TAG:Ljava/lang/String;

    const-string v6, "Rendering panorama from source images at "

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->sessionPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->renderNextSession(I)Z

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->loadMetadataFromFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 99
    invoke-static {v10}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->getRealFieldOfView(Ljava/util/Map;)F

    move-result v0

    .line 101
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v2, v3, :cond_6

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_6

    move v6, v7

    .line 106
    :goto_1
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x428c0000    # 70.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    if-eqz v6, :cond_7

    :cond_1
    move v9, v7

    .line 110
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v4

    .line 111
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "stitch time (milliseconds) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x5

    .line 115
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v2, v3, :cond_8

    move v2, v7

    .line 128
    :goto_3
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->title:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x3a83126f    # 0.001f

    long-to-float v11, v12

    mul-float/2addr v5, v11

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->lightcycleCaptureDoneEvent(IILjava/lang/String;Lcom/android/camera/exif/ExifInterface;F)V

    .line 134
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    move v8, v7

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->outputFile:Ljava/io/File;

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->sessionPath:Ljava/lang/String;

    .line 137
    invoke-static {v0, v10, v1, v9, v8}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->writeMetadataIntoJpegFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZZ)V

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->processingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->processingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->finish()V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {v0, p0}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 148
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 101
    goto/16 :goto_1

    :cond_7
    move v9, v8

    .line 106
    goto :goto_2

    .line 118
    :cond_8
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->VERTICAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v2, v3, :cond_9

    .line 120
    const/4 v2, 0x2

    goto :goto_3

    .line 121
    :cond_9
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->FISHEYE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v2, v3, :cond_a

    .line 123
    const/4 v2, 0x4

    goto :goto_3

    .line 124
    :cond_a
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->WIDE_ANGLE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v2, v3, :cond_b

    .line 126
    const/4 v2, 0x3

    goto :goto_3

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    move v2, v8

    move v1, v0

    goto :goto_3
.end method

.method public final declared-synchronized resume()V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->suspended:Z

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->waitLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 189
    return-void
.end method

.method public final declared-synchronized suspend()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->waitLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;->suspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
