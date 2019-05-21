.class public Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Api$ApiOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoOptions"
.end annotation


# instance fields
.field private final usageStatistics:Lcom/android/camera/stats/UsageStatistics;

.field private final video2Settings:Lcom/android/camera/module/video2/Video2Settings;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/module/video2/Video2Settings;)V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 1016
    iput-object p2, p0, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 1017
    return-void
.end method


# virtual methods
.method public logSnapshotCapture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIADN62S3JD1NN8EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GI8HJ1CDKMSPPR55B0____(Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 8

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->filePath:Ljava/io/File;

    .line 1048
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->exifInterface:Lcom/android/camera/exif/ExifInterface;

    iget v4, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->zoomRatio:F

    iget-boolean v5, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->isTorchOn:Z

    iget-wide v6, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->requestProcessingTimeMilliseconds:J

    .line 1053
    invoke-static {v6, v7}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToSeconds(J)J

    move-result-wide v6

    long-to-float v6, v6

    move-object v2, p2

    .line 1047
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/UsageStatistics;->videoSnapshotCaptureDoneEvent(Ljava/lang/String;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/exif/ExifInterface;FZF)V

    .line 1054
    return-void
.end method

.method public logVideoCapture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62926C5HMIRJ77CKLC___(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 15

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    const/4 v2, 0x0

    .line 1028
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v5

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getDuration()J

    move-result-wide v6

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getLength()J

    move-result-wide v8

    .line 1033
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getCaptureFrameRate()I

    move-result v0

    int-to-float v10, v0

    .line 1034
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->isTorchOn()Z

    move-result v11

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 1035
    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Settings;->getGridLinesSetting()Z

    move-result v12

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 1036
    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Settings;->isVideoStabilizationEnabled()Z

    move-result v13

    .line 1037
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getCameraFrameDropCount()I

    move-result v14

    move-object/from16 v4, p2

    .line 1026
    invoke-virtual/range {v1 .. v14}, Lcom/android/camera/stats/UsageStatistics;->videoCaptureDoneEvent(ZLjava/lang/String;Lcom/android/camera/one/OneCamera$Facing;Landroid/util/Size;JJFZZZI)V

    .line 1038
    return-void
.end method
