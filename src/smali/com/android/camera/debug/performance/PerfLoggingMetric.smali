.class final Lcom/android/camera/debug/performance/PerfLoggingMetric;
.super Ljava/lang/Object;
.source "PerfLoggingMetric.java"

# interfaces
.implements Lcom/android/camera/debug/performance/Metric;


# instance fields
.field private final clock:Lcom/google/android/apps/camera/util/time/MillisecondClock;

.field private final expectedTime:J

.field private final lock:Ljava/lang/Object;

.field private startTime:J

.field private started:Z

.field private stopped:Z

.field private final writer:Lcom/android/camera/debug/Writer;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Writer;Lcom/google/android/apps/camera/util/time/MillisecondClock;J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->started:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->stopped:Z

    .line 32
    iput-object p1, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->writer:Lcom/android/camera/debug/Writer;

    .line 33
    iput-object p2, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->clock:Lcom/google/android/apps/camera/util/time/MillisecondClock;

    .line 34
    iput-wide p3, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->expectedTime:J

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->lock:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->started:Z

    if-eqz v0, :cond_0

    .line 42
    monitor-exit v1

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->started:Z

    .line 45
    iget-object v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->clock:Lcom/google/android/apps/camera/util/time/MillisecondClock;

    invoke-interface {v0}, Lcom/google/android/apps/camera/util/time/MillisecondClock;->getTimeMs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->startTime:J

    .line 46
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final stop()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 52
    iget-object v1, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->stopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->started:Z

    if-nez v0, :cond_2

    .line 54
    :cond_0
    monitor-exit v1

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->stopped:Z

    .line 57
    iget-object v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->clock:Lcom/google/android/apps/camera/util/time/MillisecondClock;

    invoke-interface {v0}, Lcom/google/android/apps/camera/util/time/MillisecondClock;->getTimeMs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->startTime:J

    sub-long/2addr v2, v4

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-wide v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->expectedTime:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->writer:Lcom/android/camera/debug/Writer;

    const-string v1, "Performance warning. Expected: %d; Actual: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/camera/debug/performance/PerfLoggingMetric;->expectedTime:J

    .line 63
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    .line 62
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lcom/android/camera/debug/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
