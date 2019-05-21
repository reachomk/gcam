.class final Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;
.super Ljava/lang/Object;
.source "ViewfinderJankLogger.java"

# interfaces
.implements Lcom/android/camera/one/v2/stats/ViewfinderFrameSequencer$SequentialFrameProcessor;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private lastGoodDeltaMs:D

.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide v0, 0x4040800000000000L    # 33.0

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    .line 30
    const-string v0, "FrameJank"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->log:Lcom/android/camera/debug/Logger;

    .line 31
    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V
    .locals 10

    .prologue
    const-wide v8, 0x4040800000000000L    # 33.0

    .line 36
    iget-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    cmpl-double v0, p2, v8

    if-lez v0, :cond_0

    .line 38
    iget-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    sub-double v0, p2, v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    div-double/2addr v0, v2

    .line 39
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->log:Lcom/android/camera/debug/Logger;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x92

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "JANK! Time between frames ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms) increased by "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% over the expected delta ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 53
    :cond_0
    cmpl-double v0, p2, v8

    if-lez v0, :cond_1

    .line 54
    iget-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    .line 62
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget-wide v2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iput-wide p2, p0, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger;->lastGoodDeltaMs:D

    goto :goto_0
.end method
