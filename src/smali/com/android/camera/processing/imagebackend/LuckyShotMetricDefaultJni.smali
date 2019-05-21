.class final Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;
.super Ljava/lang/Object;
.source "LuckyShotMetricDefaultJni.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/LuckyShotMetric;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "LSDefaultMetricJni"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 28
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 29
    return-void
.end method


# virtual methods
.method public final score(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 38
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v6

    .line 39
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "LuckyShotScore"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/android/camera/processing/imagebackend/LuckyShotScorer;->scoreDefault(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)D

    move-result-wide v8

    .line 41
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 42
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "LS metric (default) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-wide/16 v0, 0x0

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->TAG:Ljava/lang/String;

    const-string v1, "invalid metric value from LS metric calculation."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v10

    .line 47
    sget-object v0, Lcom/android/camera/processing/imagebackend/LuckyShotMetricDefaultJni;->TAG:Ljava/lang/String;

    sub-long v2, v10, v6

    const-wide/32 v12, 0xf4240

    div-long/2addr v2, v12

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x2a

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "LS calculation time = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v12, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;

    new-instance v0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;

    sget-object v1, Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;->LUCKY_SHOT_DEFAULT_METRIC:Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

    const/4 v2, -0x1

    double-to-float v3, v8

    sub-long v6, v10, v6

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;-><init>(Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;IFFFJ)V

    invoke-direct {v12, v8, v9, v0}, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;-><init>(DLcom/android/camera/stats/LuckyShotFrameInfoBuilder;)V

    return-object v12
.end method
