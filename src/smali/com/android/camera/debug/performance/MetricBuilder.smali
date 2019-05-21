.class public final Lcom/android/camera/debug/performance/MetricBuilder;
.super Ljava/lang/Object;
.source "MetricBuilder.java"


# instance fields
.field private final isNoOp:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/android/camera/debug/performance/MetricBuilder;->isNoOp:Z

    .line 19
    return-void
.end method


# virtual methods
.method public final startMetric(Ljava/lang/String;J)Lcom/android/camera/debug/performance/Metric;
    .locals 4

    .prologue
    .line 39
    .line 1049
    iget-boolean v0, p0, Lcom/android/camera/debug/performance/MetricBuilder;->isNoOp:Z

    if-eqz v0, :cond_0

    .line 1050
    new-instance v0, Lcom/android/camera/debug/performance/NoOpMetric;

    invoke-direct {v0}, Lcom/android/camera/debug/performance/NoOpMetric;-><init>()V

    .line 40
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/debug/performance/Metric;->start()V

    .line 41
    return-object v0

    .line 1052
    :cond_0
    new-instance v0, Lcom/android/camera/debug/performance/PerfLoggingMetric;

    invoke-static {p1}, Lcom/android/camera/debug/DebugModule;->w(Ljava/lang/String;)Lcom/android/camera/debug/Writer;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v2}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/android/camera/debug/performance/PerfLoggingMetric;-><init>(Lcom/android/camera/debug/Writer;Lcom/google/android/apps/camera/util/time/MillisecondClock;J)V

    goto :goto_0
.end method
