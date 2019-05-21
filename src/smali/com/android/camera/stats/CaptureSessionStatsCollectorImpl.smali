.class public Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;
.super Ljava/lang/Object;
.source "CaptureSessionStatsCollectorImpl.java"

# interfaces
.implements Lcom/android/camera/stats/CaptureSessionStatsCollector;


# instance fields
.field protected activeSensorSize:Landroid/graphics/Rect;

.field protected captureSessionTrace:Lcom/android/camera/stats/CaptureSessionTrace;

.field protected captureTimeMillis:J

.field protected dirtyLensProbability:Ljava/lang/Float;

.field protected exifInterface:Lcom/android/camera/exif/ExifInterface;

.field protected faceProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected filename:Ljava/lang/String;

.field protected flashSetting:Ljava/lang/String;

.field protected gridLinesOn:Ljava/lang/Boolean;

.field protected hDRPlusSetting:Ljava/lang/String;

.field protected isFlash:Ljava/lang/Boolean;

.field protected isFrontFacing:Ljava/lang/Boolean;

.field protected isHdr:Ljava/lang/Boolean;

.field protected lensFocusDistance:Ljava/lang/Float;

.field protected luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

.field protected meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

.field protected mode:Ljava/lang/Integer;

.field protected timerSeconds:Ljava/lang/Float;

.field protected touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

.field protected final usageStatistics:Lcom/android/camera/stats/UsageStatistics;

.field protected volumeButtonShutter:Ljava/lang/Boolean;

.field protected zoom:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureTimeMillis:J

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFrontFacing:Ljava/lang/Boolean;

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isHdr:Ljava/lang/Boolean;

    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFlash:Ljava/lang/Boolean;

    .line 37
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->zoom:Ljava/lang/Float;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureSessionTrace:Lcom/android/camera/stats/CaptureSessionTrace;

    .line 60
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/UsageStatistics;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureTimeMillis:J

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFrontFacing:Ljava/lang/Boolean;

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isHdr:Ljava/lang/Boolean;

    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFlash:Ljava/lang/Boolean;

    .line 37
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->zoom:Ljava/lang/Float;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureSessionTrace:Lcom/android/camera/stats/CaptureSessionTrace;

    .line 68
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 69
    return-void
.end method

.method private photoCaptureEvent(I)V
    .locals 24

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->getElapsedRealTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureTimeMillis:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToSecondsFloat(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isValidForPhotoCaptureEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->mode:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->exifInterface:Lcom/android/camera/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFrontFacing:Ljava/lang/Boolean;

    .line 143
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isHdr:Ljava/lang/Boolean;

    .line 144
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFlash:Ljava/lang/Boolean;

    .line 145
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->zoom:Ljava/lang/Float;

    .line 146
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->flashSetting:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->hDRPlusSetting:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->gridLinesOn:Ljava/lang/Boolean;

    .line 149
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->timerSeconds:Ljava/lang/Float;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->volumeButtonShutter:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->faceProxies:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->lensFocusDistance:Ljava/lang/Float;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->activeSensorSize:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->dirtyLensProbability:Ljava/lang/Float;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    move-object/from16 v22, v0

    move/from16 v23, p1

    .line 139
    invoke-virtual/range {v2 .. v23}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;Lcom/android/camera/exif/ExifInterface;ZZZFLjava/lang/String;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Lcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Float;Landroid/graphics/Rect;Ljava/lang/Float;Lcom/android/camera/stats/LuckyShotMetaDataBuilder;Lcom/google/common/logging/nano/eventprotos$MeteringData;I)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public decorateAtTimeCaptureRequest(ILjava/lang/String;ZZFLjava/lang/String;Ljava/lang/String;ZFLcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Boolean;Landroid/graphics/Rect;Lcom/google/common/logging/nano/eventprotos$MeteringData;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->mode:Ljava/lang/Integer;

    .line 102
    iput-object p2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->filename:Ljava/lang/String;

    .line 103
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFrontFacing:Ljava/lang/Boolean;

    .line 104
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isHdr:Ljava/lang/Boolean;

    .line 105
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->zoom:Ljava/lang/Float;

    .line 106
    iput-object p6, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->flashSetting:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->hDRPlusSetting:Ljava/lang/String;

    .line 108
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->gridLinesOn:Ljava/lang/Boolean;

    .line 109
    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->timerSeconds:Ljava/lang/Float;

    .line 110
    iput-object p10, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 111
    iput-object p11, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->volumeButtonShutter:Ljava/lang/Boolean;

    .line 112
    iput-object p12, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->activeSensorSize:Landroid/graphics/Rect;

    .line 113
    iput-object p13, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    .line 114
    return-void
.end method

.method public decorateAtTimeOfCaptureRequestAvailable(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 7

    .prologue
    .line 73
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 74
    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->faceProxies:Ljava/util/List;

    .line 83
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->lensFocusDistance:Ljava/lang/Float;

    .line 84
    return-void

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->faceProxies:Ljava/util/List;

    .line 78
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 79
    iget-object v4, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->faceProxies:Ljava/util/List;

    .line 1020
    new-instance v5, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v3

    invoke-direct {v5, v6, v3}, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;-><init>(Landroid/graphics/Rect;I)V

    .line 79
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->exifInterface:Lcom/android/camera/exif/ExifInterface;

    .line 119
    return-void
.end method

.method public getActiveSensorSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->activeSensorSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getElapsedRealTime()J
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->faceProxies:Ljava/util/List;

    return-object v0
.end method

.method public getIsFlash()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFlash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMeteringData()Lcom/google/common/logging/nano/eventprotos$MeteringData;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    return-object v0
.end method

.method public getSessionTrace()Lcom/android/camera/stats/CaptureSessionTrace;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureSessionTrace:Lcom/android/camera/stats/CaptureSessionTrace;

    return-object v0
.end method

.method public isCompleteForPhotoCaptureEvent()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->mode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->exifInterface:Lcom/android/camera/exif/ExifInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFrontFacing:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isHdr:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->zoom:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->flashSetting:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->hDRPlusSetting:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->gridLinesOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->timerSeconds:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->volumeButtonShutter:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForPhotoCaptureEvent()Z
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->mode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markProcessingTimeStart()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->getElapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureTimeMillis:J

    .line 124
    return-void
.end method

.method public photoCaptureDoneEvent()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->photoCaptureEvent(I)V

    .line 129
    return-void
.end method

.method public photoCaptureFailedEvent(I)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->photoCaptureEvent(I)V

    .line 134
    return-void
.end method

.method public setDirtyLensProbability(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->dirtyLensProbability:Ljava/lang/Float;

    .line 196
    return-void
.end method

.method public setIsFlash(Z)V
    .locals 1

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->isFlash:Ljava/lang/Boolean;

    .line 231
    return-void
.end method

.method public setLuckyShotStats(Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 201
    return-void
.end method

.method public setSessionTrace(Lcom/android/camera/stats/CaptureSessionTrace;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;->captureSessionTrace:Lcom/android/camera/stats/CaptureSessionTrace;

    .line 206
    return-void
.end method
