.class public Lcom/android/camera/stats/CaptureSessionTrace;
.super Ljava/lang/Object;
.source "CaptureSessionTrace.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private capturePersistedTimeNs:J

.field private captureStartTimeNs:J

.field private final clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private mediumThumbTimeNs:J

.field private processingCompleteTimeNs:J

.field private processingStartedTimeNs:J

.field private scoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

.field private selectionEndTimeNs:J

.field private selectionStartTimeNs:J

.field private sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

.field private tinyThumbTimeNs:J

.field private final usageStatistics:Lcom/android/camera/stats/UsageStatistics;

.field private wasCaptureStarted:Z

.field private wasFinalEventLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "CaptureTrace"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    .line 35
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 36
    iput-object p2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 37
    return-void
.end method


# virtual methods
.method public onCaptureCanceled(II)V
    .locals 7

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    if-nez v0, :cond_1

    .line 123
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureCanceled invoked before capture was started!"

    .line 124
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_1
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    if-eqz v0, :cond_3

    .line 128
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureCanceled invoked after final event was logged!"

    .line 129
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :cond_3
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureCanceled "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    .line 135
    iget-object v1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    iget-object v4, p0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/stats/UsageStatistics;->onCaptureCanceled(JLcom/android/camera/session/CaptureSession$SessionType;II)V

    goto :goto_1

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCaptureDeleted()V
    .locals 4

    .prologue
    .line 176
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureDeleted "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCaptureFailed(II)V
    .locals 7

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    if-nez v0, :cond_1

    .line 145
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureFailed invoked before capture was started!"

    .line 146
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_1
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    if-eqz v0, :cond_3

    .line 150
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureFailed invoked after final event was logged!"

    .line 151
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_3
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureFailed "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    .line 157
    iget-object v1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    iget-object v4, p0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/stats/UsageStatistics;->onCaptureFailed(JLcom/android/camera/session/CaptureSession$SessionType;II)V

    goto :goto_1

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCaptureFinalized()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    if-nez v0, :cond_1

    .line 167
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureFinalized invoked without the final result being set!"

    .line 168
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_1
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureFinalized "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCapturePersisted(II)V
    .locals 24

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    if-nez v2, :cond_1

    .line 92
    sget-object v3, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v4, "onCapturePersisted invoked before capture was started!"

    .line 93
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_0
    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_1
    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    if-eqz v2, :cond_3

    .line 97
    sget-object v3, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v4, "onCapturePersisted invoked after final event was logged!"

    .line 98
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    :goto_2
    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_3
    sget-object v3, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v4, "onCapturePersisted "

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/stats/CaptureSessionTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/stats/CaptureSessionTrace;->capturePersistedTimeNs:J

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/stats/CaptureSessionTrace;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/stats/CaptureSessionTrace;->tinyThumbTimeNs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/stats/CaptureSessionTrace;->mediumThumbTimeNs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/stats/CaptureSessionTrace;->processingStartedTimeNs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/stats/CaptureSessionTrace;->processingCompleteTimeNs:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/stats/CaptureSessionTrace;->selectionStartTimeNs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/stats/CaptureSessionTrace;->selectionEndTimeNs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionTrace;->scoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/stats/CaptureSessionTrace;->capturePersistedTimeNs:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    move-object/from16 v21, v0

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-virtual/range {v3 .. v23}, Lcom/android/camera/stats/UsageStatistics;->onCapturePersisted(JJJJJJJ[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;JLcom/android/camera/session/CaptureSession$SessionType;II)V

    goto/16 :goto_1

    .line 102
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCaptureStartCommitted(II)V
    .locals 7

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    if-nez v0, :cond_1

    .line 59
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStartCommitted invoked before capture was started!"

    .line 60
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_1
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasFinalEventLogged:Z

    if-eqz v0, :cond_3

    .line 64
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStartCommitted invoked after final event was logged!"

    .line 65
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_3
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStartCommitted "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    iget-object v4, p0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/stats/UsageStatistics;->onCaptureStartCommitted(JLcom/android/camera/session/CaptureSession$SessionType;II)V

    goto :goto_1

    .line 69
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCaptureStarted(Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 4

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    if-eqz v0, :cond_1

    .line 42
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStarted invoked after stated event was logged!"

    .line 43
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_1
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStarted "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->wasCaptureStarted:Z

    .line 49
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    .line 50
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 51
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    iget-object v1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/stats/UsageStatistics;->onCaptureStarted(JLcom/android/camera/session/CaptureSession$SessionType;)V

    goto :goto_1

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onLuckyShotSessionMetadataReceived(Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->getTimestampStartLuckyShotSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->selectionStartTimeNs:J

    .line 199
    invoke-virtual {p1}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->getTimestampDoneLuckyShotSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->selectionEndTimeNs:J

    .line 200
    invoke-virtual {p1}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->getLuckyShotScoreCalculations()[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->scoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    .line 201
    return-void
.end method

.method public onMediumThumb()V
    .locals 4

    .prologue
    .line 85
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onMediumThumb "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->mediumThumbTimeNs:J

    .line 87
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReprocessingFinished(JJ)V
    .locals 1

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/android/camera/stats/CaptureSessionTrace;->processingStartedTimeNs:J

    .line 182
    iput-wide p3, p0, Lcom/android/camera/stats/CaptureSessionTrace;->processingCompleteTimeNs:J

    .line 183
    return-void
.end method

.method public onTinyThumb()V
    .locals 4

    .prologue
    .line 79
    sget-object v1, Lcom/android/camera/stats/CaptureSessionTrace;->TAG:Ljava/lang/String;

    const-string v2, "onTinyThumb "

    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionTrace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionTrace;->tinyThumbTimeNs:J

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "CaptureStartTimeNs"

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->captureStartTimeNs:J

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "TinyThumbTimeNs"

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->tinyThumbTimeNs:J

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "MediumThumbTimeNs"

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->mediumThumbTimeNs:J

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "CapturePersistedTimeNs"

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->capturePersistedTimeNs:J

    .line 191
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "SessionType"

    iget-object v2, p0, Lcom/android/camera/stats/CaptureSessionTrace;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method
