.class public Lcom/android/camera/stats/ViewfinderJankSession;
.super Lcom/android/camera/stats/InstrumentationSession;
.source "ViewfinderJankSession.java"


# static fields
.field private static final LARGE_JANK_FACTOR:F = 5.0f

.field private static final MEDIUM_JANK_FACTOR:F = 1.5f

.field private static final RECORD_FULL_FRAME_FACTOR:F = 1.5f

.field private static final SMALL_JANK_FACTOR:F = 0.5f

.field private static final STARTUP_FRAME_MAX:I = 0x1e


# instance fields
.field private final badFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delay150PctCount:I

.field private delay500PctCount:I

.field private delay50PctCount:I

.field private firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

.field private lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

.field private final lock:Ljava/lang/Object;

.field private final startupFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$FrameInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "PreviewSmoothness"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/stats/InstrumentationSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Ljava/lang/String;)V

    .line 34
    iput v1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay50PctCount:I

    .line 35
    iput v1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay150PctCount:I

    .line 36
    iput v1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay500PctCount:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->lock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->startupFrames:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->badFrames:Ljava/util/List;

    .line 57
    return-void
.end method

.method private buildFrameInfoProto(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)Lcom/google/common/logging/nano/eventprotos$FrameInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 164
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$FrameInfo;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeNs:J

    .line 166
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeSensorNs:J

    .line 167
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->frameNumber:J

    .line 169
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 170
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToMicrosInt(J)I

    move-result v0

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorFrameDurationUs:I

    .line 176
    :cond_0
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToMicrosInt(J)I

    move-result v0

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorExposureDurationUs:I

    .line 180
    :cond_1
    cmpl-double v0, p2, v6

    if-lez v0, :cond_2

    .line 181
    invoke-static {p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToMicrosInt(D)I

    move-result v0

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->observedDurationUs:I

    .line 184
    :cond_2
    cmpl-double v0, p4, v6

    if-lez v0, :cond_3

    .line 185
    invoke-static {p4, p5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToMicrosInt(D)I

    move-result v0

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->previousDurationUs:I

    .line 188
    :cond_3
    return-object v2
.end method

.method public static provider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/ViewfinderJankSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/stats/ViewfinderJankSession$1;

    invoke-direct {v0}, Lcom/android/camera/stats/ViewfinderJankSession$1;-><init>()V

    return-object v0
.end method

.method private recordFrameAdded(Lcom/google/common/logging/nano/eventprotos$FrameInfo;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-nez v0, :cond_0

    .line 194
    iput-object p1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 197
    return-void
.end method


# virtual methods
.method buildPreviewSmoothnessProto()Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;
    .locals 3

    .prologue
    .line 146
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;-><init>()V

    .line 148
    iget v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay50PctCount:I

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay50PctCount:I

    .line 149
    iget v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay150PctCount:I

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay150PctCount:I

    .line 150
    iget v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay500PctCount:I

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay500PctCount:I

    .line 152
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->badFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/stats/ViewfinderJankSession;->badFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 153
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->startupFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/stats/ViewfinderJankSession;->startupFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 155
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 156
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 158
    return-object v1
.end method

.method public getBadFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$FrameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->badFrames:Ljava/util/List;

    return-object v0
.end method

.method public getDelay150PctCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay150PctCount:I

    return v0
.end method

.method public getDelay500PctCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay500PctCount:I

    return v0
.end method

.method public getDelay50PctCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay50PctCount:I

    return v0
.end method

.method public getFirstFrame()Lcom/google/common/logging/nano/eventprotos$FrameInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    return-object v0
.end method

.method public getLastFrame()Lcom/google/common/logging/nano/eventprotos$FrameInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    return-object v0
.end method

.method public getStartupFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$FrameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->startupFrames:Ljava/util/List;

    return-object v0
.end method

.method public recordSlowFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    .line 119
    sub-double v0, p2, p4

    div-double/2addr v0, p4

    .line 121
    iget-object v2, p0, Lcom/android/camera/stats/ViewfinderJankSession;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v0, v4

    if-ltz v3, :cond_0

    .line 123
    :try_start_0
    iget v3, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay50PctCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay50PctCount:I

    .line 126
    :cond_0
    cmpl-double v3, v0, v6

    if-ltz v3, :cond_1

    .line 127
    iget v3, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay150PctCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay150PctCount:I

    .line 130
    :cond_1
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v3, v0, v4

    if-ltz v3, :cond_2

    .line 131
    iget v3, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay500PctCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/stats/ViewfinderJankSession;->delay500PctCount:I

    .line 134
    :cond_2
    cmpl-double v0, v0, v6

    if-ltz v0, :cond_3

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/stats/ViewfinderJankSession;->buildFrameInfoProto(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->badFrames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-direct {p0, v0}, Lcom/android/camera/stats/ViewfinderJankSession;->recordFrameAdded(Lcom/google/common/logging/nano/eventprotos$FrameInfo;)V

    .line 139
    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordStartupFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/camera/stats/ViewfinderJankSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/ViewfinderJankSession;->startupFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/stats/ViewfinderJankSession;->buildFrameInfoProto(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/android/camera/stats/ViewfinderJankSession;->startupFrames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0, v0}, Lcom/android/camera/stats/ViewfinderJankSession;->recordFrameAdded(Lcom/google/common/logging/nano/eventprotos$FrameInfo;)V

    .line 105
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
