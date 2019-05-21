.class final Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;
.super Ljava/lang/Object;
.source "ViewfinderJankRecorder.java"

# interfaces
.implements Lcom/android/camera/one/v2/stats/ViewfinderFrameSequencer$SequentialFrameProcessor;


# instance fields
.field private lastGoodDeltaMs:D

.field private final viewfinderJankSession:Lcom/android/camera/stats/ViewfinderJankSession;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/ViewfinderJankSession;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide v0, 0x4040800000000000L    # 33.0

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->viewfinderJankSession:Lcom/android/camera/stats/ViewfinderJankSession;

    .line 27
    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V
    .locals 8

    .prologue
    const-wide v6, 0x4040800000000000L    # 33.0

    .line 32
    iget-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_0

    cmpl-double v0, p2, v6

    if-lez v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    sub-double v0, p2, v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    div-double/2addr v0, v2

    .line 35
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->viewfinderJankSession:Lcom/android/camera/stats/ViewfinderJankSession;

    iget-wide v4, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/ViewfinderJankSession;->recordSlowFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V

    .line 40
    :cond_0
    cmpl-double v0, p2, v6

    if-lez v0, :cond_1

    .line 41
    iget-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    .line 49
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget-wide v2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    iput-wide p2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder;->lastGoodDeltaMs:D

    goto :goto_0
.end method
