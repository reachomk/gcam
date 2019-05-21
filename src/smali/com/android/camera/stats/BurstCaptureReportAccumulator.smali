.class public Lcom/android/camera/stats/BurstCaptureReportAccumulator;
.super Ljava/lang/Object;
.source "BurstCaptureReportAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;
    }
.end annotation


# instance fields
.field private captureButtonPress:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

.field private final listener:Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureButtonPress:Lcom/google/common/base/Optional;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 50
    iput-object p1, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->listener:Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;

    .line 51
    return-void
.end method

.method private sendAndReset()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->listener:Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;

    iget-object v1, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-interface {v0, v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;->sendReport(Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 134
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureButtonPress:Lcom/google/common/base/Optional;

    .line 135
    return-void
.end method

.method private sendLogSequenceError()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->logSequenceError:Z

    .line 142
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendAndReset()V

    .line 143
    return-void
.end method


# virtual methods
.method public markButtonReleaseTime()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendLogSequenceError()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureButtonPress:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureButtonPress:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->buttonHoldDurationMs:F

    goto :goto_0
.end method

.method public markLongPressDetection()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureButtonPress:Lcom/google/common/base/Optional;

    .line 147
    return-void
.end method

.method public startFailedInvalidState()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendLogSequenceError()V

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 94
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    .line 95
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInvalidState:Z

    .line 96
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendAndReset()V

    goto :goto_0
.end method

.method public startFailedNotEnoughBuffers()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendLogSequenceError()V

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 77
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    .line 78
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInsufficientBuffers:Z

    .line 79
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendAndReset()V

    goto :goto_0
.end method

.method public startFailedWithException()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendLogSequenceError()V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 109
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    .line 110
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedWithException:Z

    .line 111
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendAndReset()V

    goto :goto_0
.end method

.method public startedSuccessfully()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendLogSequenceError()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 65
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    goto :goto_0
.end method

.method public stopped(Z)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendLogSequenceError()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->captureReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    iput-boolean p1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->stopSucceeded:Z

    .line 126
    invoke-direct {p0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->sendAndReset()V

    goto :goto_0
.end method
