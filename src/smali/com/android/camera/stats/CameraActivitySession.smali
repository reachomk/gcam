.class public Lcom/android/camera/stats/CameraActivitySession;
.super Lcom/android/camera/stats/InstrumentationSession;
.source "CameraActivitySession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityFirstPreviewFrameReceivedNs:J

.field private activityInitializedNs:J

.field private activityOnCreateEndNs:J

.field private activityOnCreateStartNs:J

.field private activityOnResumeEndNs:J

.field private activityOnResumeStartNs:J

.field private activityOnStartStartNs:J

.field private final cameraAppSession:Lcom/android/camera/stats/CameraAppSession;

.field private isColdStart:Z

.field private shutterButtonFirstDrawNs:J

.field private shutterButtonFirstEnabledNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "CamActivitySession"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/CameraActivitySession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/CameraAppSession;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 1

    .prologue
    .line 159
    const-string v0, "CameraActivity"

    invoke-direct {p0, p2, v0}, Lcom/android/camera/stats/InstrumentationSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/android/camera/stats/CameraActivitySession;->cameraAppSession:Lcom/android/camera/stats/CameraAppSession;

    .line 162
    return-void
.end method

.method public static provider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/android/camera/stats/CameraActivitySession$1;

    invoke-direct {v0}, Lcom/android/camera/stats/CameraActivitySession$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public buildLaunchReport()Lcom/google/common/logging/nano/eventprotos$LaunchReport;
    .locals 3

    .prologue
    .line 168
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$LaunchReport;-><init>()V

    .line 172
    iget-boolean v0, p0, Lcom/android/camera/stats/CameraActivitySession;->isColdStart:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    :goto_0
    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->controlNanoTime:J

    .line 174
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityFirstPreviewFrameReceivedNs:J

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->previewFrameNanoTime:J

    .line 175
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityInitializedNs:J

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cameraActivityInitializedNanoTime:J

    .line 176
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstDrawNanoTime:J

    .line 177
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    iput-wide v0, v2, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstEnabledNanoTime:J

    .line 179
    sget-object v0, Lcom/android/camera/stats/CameraActivitySession;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/stats/CameraActivitySession;->dumpStats(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/stats/CameraActivitySession;->isColdStart:Z

    .line 183
    return-object v2

    .line 172
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    goto :goto_0
.end method

.method public dumpStats(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x2e

    const/16 v4, 0x2c

    .line 192
    if-nez p1, :cond_0

    .line 193
    sget-object p1, Lcom/android/camera/stats/CameraActivitySession;->TAG:Ljava/lang/String;

    .line 196
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "activityOnCreateStartNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "activityOnCreateEndNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "activityOnStartStartNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "activityOnResumeStartNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeEndNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "activityOnResumeEndNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityFirstPreviewFrameReceivedNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "activityFirstPreviewFrameReceivedNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "shutterButtonFirstDrawNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "shutterButtonFirstEnabledNs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/android/camera/stats/CameraActivitySession;->isColdStart:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "isColdstart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public getActivityInitializedNs()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityInitializedNs:J

    return-wide v0
.end method

.method public getActivityOnCreateEndNs()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    return-wide v0
.end method

.method public getActivityOnCreateStartNs()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    return-wide v0
.end method

.method public getActivityOnResumeEndNs()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeEndNs:J

    return-wide v0
.end method

.method public getActivityOnResumeStartNs()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    return-wide v0
.end method

.method public getActivityOnStartStartNs()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    return-wide v0
.end method

.method public getIsColdStart()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/camera/stats/CameraActivitySession;->isColdStart:Z

    return v0
.end method

.method public getShutterButtonFirstDrawNs()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    return-wide v0
.end method

.method public getShutterButtonFirstEnabledNs()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    return-wide v0
.end method

.method public recordActivityOnCreateEnd()V
    .locals 6

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    .line 69
    const-string v1, "OnCreate"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    iget-wide v4, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;JJ)V

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordActivityOnCreateStart()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/camera/stats/CameraActivitySession;->isColdStart:Z

    .line 53
    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    .line 55
    const-string v1, "App OnCreate"

    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->cameraAppSession:Lcom/android/camera/stats/CameraAppSession;

    .line 57
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraAppSession;->getAppOnCreateStart()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->cameraAppSession:Lcom/android/camera/stats/CameraAppSession;

    .line 58
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraAppSession;->getAppOnCreateEnd()J

    move-result-wide v4

    move-object v0, p0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;JJ)V

    .line 59
    const-string v1, "App OnCreate End"

    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->cameraAppSession:Lcom/android/camera/stats/CameraAppSession;

    .line 61
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraAppSession;->getAppOnCreateEnd()J

    move-result-wide v2

    const-string v4, "Activity OnCreate Start"

    iget-wide v5, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    move-object v0, p0

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;JLjava/lang/String;J)V

    .line 64
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordActivityOnResumeEnd()V
    .locals 6

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeEndNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeEndNs:J

    .line 89
    const-string v1, "OnResume"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    iget-wide v4, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeEndNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;JJ)V

    .line 91
    :cond_0
    return-void
.end method

.method public recordActivityOnResumeStart()V
    .locals 7

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    .line 82
    const-string v1, "OnCreate End"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    const-string v4, "OnResume Start"

    iget-wide v5, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;JLjava/lang/String;J)V

    .line 84
    :cond_0
    return-void
.end method

.method public recordActivityOnStartStart()V
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    .line 75
    const-string v0, "OnStart"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;J)V

    .line 77
    :cond_0
    return-void
.end method

.method public recordTimeToCameraActivityInitialized()V
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityInitializedNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityInitializedNs:J

    .line 96
    const-string v0, "CameraActivity Initialized"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->activityInitializedNs:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;J)V

    .line 97
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordTimeToShutterButtonFirstDraw()V
    .locals 4

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    .line 102
    const-string v0, "Shutter button first draw"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;J)V

    .line 104
    :cond_0
    return-void
.end method

.method public recordTimeToShutterButtonFirstEnabled()V
    .locals 4

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/stats/CameraActivitySession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    .line 109
    const-string v0, "Shutter button first enabled"

    iget-wide v2, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/stats/CameraActivitySession;->debug(Ljava/lang/String;J)V

    .line 111
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateStartNs:J

    .line 41
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnCreateEndNs:J

    .line 42
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnStartStartNs:J

    .line 43
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeStartNs:J

    .line 44
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityOnResumeEndNs:J

    .line 45
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityFirstPreviewFrameReceivedNs:J

    .line 46
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->activityInitializedNs:J

    .line 47
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstDrawNs:J

    .line 48
    iput-wide v0, p0, Lcom/android/camera/stats/CameraActivitySession;->shutterButtonFirstEnabledNs:J

    .line 49
    return-void
.end method
