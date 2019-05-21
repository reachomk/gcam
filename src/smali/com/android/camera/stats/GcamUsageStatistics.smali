.class public Lcom/android/camera/stats/GcamUsageStatistics;
.super Ljava/lang/Object;
.source "GcamUsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;
    }
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field private volatile gcamActiveSensorArray:Landroid/graphics/Rect;

.field private gcamCaptureTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile gcamDoneBurstId:I

.field private volatile gcamDoneExifRef:Lcom/android/camera/exif/ExifInterface;

.field private volatile gcamDoneFileName:Ljava/lang/String;

.field private volatile gcamDoneFront:Z

.field private volatile gcamDoneZoom:F

.field private volatile gcamFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private volatile gcamMeta:Lcom/google/common/logging/nano/eventprotos$GcamStats;

.field private volatile gcamMetaBurstId:I

.field private volatile gcamPhotoMetaData:Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

.field private volatile gcamSizeMeta:Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

.field private volatile gcamTimerSeconds:Ljava/lang/Float;

.field private volatile meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

.field private final usageStatistics:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/UsageStatistics;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMetaBurstId:I

    .line 44
    iput v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneBurstId:I

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamCaptureTimes:Ljava/util/LinkedList;

    .line 84
    iput-object p1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 85
    return-void
.end method

.method private buildGcamStats$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TK68SJGDHQN6BQ7CDGMQKR8DTQ56T31EHPJMAACCDNMQBR7DTNMER355THMURBDDTN2UR3FCTJMIRJ75TN62RJF5TINCPBEEHO74RRKDTPI8HR3C5ML6T31EHPJM___(Lcom/android/camera/settings/ActivitySettingsModule;)Lcom/google/common/logging/nano/eventprotos$GcamStats;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$GcamStats;-><init>()V

    .line 190
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getHdrWasUsed()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->hdrWasUsed:Z

    .line 191
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getAeConfidenceShortExposure()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceShortExposure:F

    .line 192
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getAeConfidenceLongExposure()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceLongExposure:F

    .line 193
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getAeConfidenceSingleExposure()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceSingleExposure:F

    .line 194
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getIdealRangeCompression()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->idealRangeCompression:F

    .line 195
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getActualRangeCompression()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->actualRangeCompression:F

    .line 196
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getFractionOfPixelsFromLongExposure()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->fractionOfPixelsFromLongExposure:F

    .line 197
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getShortExpAdjustmentFactor()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->shortExpAdjustmentFactor:F

    .line 198
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getLongExpAdjustmentFactor()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->longExpAdjustmentFactor:F

    .line 199
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getLogSceneBrightness()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->logSceneBrightness:F

    .line 200
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getMeteringFrameCount()I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->meteringFrameCount:I

    .line 201
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getOriginalPayloadFrameCount()I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameCount:I

    .line 202
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getBaseFrameIndex()I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->baseFrameIndex:I

    .line 203
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getMergedFrameCount()I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->mergedFrameCount:I

    .line 206
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getAverageHeatFrac()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->averageHeatFrac:F

    .line 207
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getOriginalPayloadFrameSharpness()[F

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    .line 211
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getGlobalPixelShiftsX()[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    .line 212
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getGlobalPixelShiftsY()[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    .line 213
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getTimeToShot()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToShot:F

    .line 214
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getTimeToPostview()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToPostview:F

    .line 215
    invoke-virtual {p1}, Lcom/android/camera/settings/ActivitySettingsModule;->getUsedHexagon()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->usedHexagon:Z

    .line 217
    return-object v0
.end method

.method private declared-synchronized sendCaptureDoneEvent()V
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMetaBurstId:I

    iget v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneBurstId:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMetaBurstId:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneBurstId:I

    if-ltz v0, :cond_1

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMetaBurstId:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneBurstId:I

    .line 162
    new-instance v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneFront:Z

    iget-object v3, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneExifRef:Lcom/android/camera/exif/ExifInterface;

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneZoom:F

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamTimerSeconds:Ljava/lang/Float;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setTimerSeconds(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamSizeMeta:Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setVideoMeta(Lcom/google/common/logging/nano/eventprotos$VideoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMeta:Lcom/google/common/logging/nano/eventprotos$GcamStats;

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setGcamMeta(Lcom/google/common/logging/nano/eventprotos$GcamStats;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamCaptureTimes:Ljava/util/LinkedList;

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setProcessingTimeFromGcamCaptureTimes(Ljava/util/LinkedList;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamFaces:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamActiveSensorArray:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setFaces(Ljava/util/List;Landroid/graphics/Rect;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamPhotoMetaData:Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setPhotoMeta(Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setMeteringData(Lcom/google/common/logging/nano/eventprotos$MeteringData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    invoke-virtual {v1, v0}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_1
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public captureComputeEvent()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamCaptureTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamCaptureTimes:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v0}, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->captureComputeEvent(ILcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V

    .line 150
    return-void
.end method

.method public declared-synchronized captureDataReady(ILjava/lang/String;Lcom/android/camera/exif/ExifInterface;ZFLjava/lang/Float;Ljava/lang/Long;Ljava/util/List;Landroid/graphics/Rect;Lcom/google/common/logging/nano/eventprotos$MeteringData;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/camera/exif/ExifInterface;",
            "ZF",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneBurstId:I

    .line 117
    iput-object p2, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneFileName:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneExifRef:Lcom/android/camera/exif/ExifInterface;

    .line 119
    iput-boolean p4, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneFront:Z

    .line 120
    iput p5, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamDoneZoom:F

    .line 121
    iput-object p6, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamTimerSeconds:Ljava/lang/Float;

    .line 122
    iput-object p8, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamFaces:Ljava/util/List;

    .line 123
    iput-object p9, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamActiveSensorArray:Landroid/graphics/Rect;

    .line 124
    iput-object p10, p0, Lcom/android/camera/stats/GcamUsageStatistics;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    .line 125
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamPhotoMetaData:Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

    .line 126
    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamPhotoMetaData:Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

    iput-boolean p11, v0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    .line 127
    if-eqz p7, :cond_0

    .line 128
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamSizeMeta:Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

    .line 129
    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamSizeMeta:Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/stats/GcamUsageStatistics;->sendCaptureDoneEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamSizeMeta:Lcom/google/common/logging/nano/eventprotos$VideoMetaData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHdrPlusShotsInFlight()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamCaptureTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamCaptureTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;

    iget v0, v0, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;->shotsInFlight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized metaStatsReady$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF8THM2RAJD1NN8KRKC5Q76EP9AO______(ILcom/android/camera/settings/ActivitySettingsModule;)V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMetaBurstId:I

    .line 95
    invoke-direct {p0, p2}, Lcom/android/camera/stats/GcamUsageStatistics;->buildGcamStats$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TK68SJGDHQN6BQ7CDGMQKR8DTQ56T31EHPJMAACCDNMQBR7DTNMER355THMURBDDTN2UR3FCTJMIRJ75TN62RJF5TINCPBEEHO74RRKDTPI8HR3C5ML6T31EHPJM___(Lcom/android/camera/settings/ActivitySettingsModule;)Lcom/google/common/logging/nano/eventprotos$GcamStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics;->gcamMeta:Lcom/google/common/logging/nano/eventprotos$GcamStats;

    .line 97
    invoke-direct {p0}, Lcom/android/camera/stats/GcamUsageStatistics;->sendCaptureDoneEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
