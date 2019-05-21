.class final Lcom/android/camera/camcorder/CamcorderManagerImpl;
.super Ljava/lang/Object;
.source "CamcorderManagerImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;
.implements Lcom/android/camera/camcorder/CamcorderManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camcorder/CamcorderManagerImpl$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final camcorderCharacteristicsFactory:Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;

.field private final camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

.field private final camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

.field private final cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

.field private characteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/camcorder/CamcorderCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final handler:Landroid/os/Handler;

.field private final handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

.field private final lock:Ljava/lang/Object;

.field private final mediaRecorderFactory:Lcom/android/camera/camcorder/media/MediaRecorderFactory;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private openedDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/camcorder/CamcorderDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentInputSurfaceFactory:Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

.field private state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

.field private final storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

.field private final variableFpsRangeChooser:Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

.field private final videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "CdrMgrImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;Lcom/android/camera/camcorder/media/CamcorderProfileFactory;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Landroid/os/HandlerThread;Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;Lcom/android/camera/camcorder/media/MediaRecorderFactory;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;Lcom/android/camera/storage/StorageSpaceChecker;Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;Lcom/android/camera/camcorder/io/VideoFileGenerator;)V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->openedDeviceMap:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->characteristicsMap:Ljava/util/Map;

    .line 167
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ApiHelper;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 168
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderCharacteristicsFactory:Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;

    .line 169
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 170
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 171
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 172
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamer;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 173
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/CameraFileUtil;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    .line 174
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    .line 175
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    .line 176
    invoke-static {p10}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/MediaRecorderFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->mediaRecorderFactory:Lcom/android/camera/camcorder/media/MediaRecorderFactory;

    .line 177
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraManager;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 178
    invoke-static {p12}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->persistentInputSurfaceFactory:Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

    .line 179
    invoke-static {p13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/StorageSpaceChecker;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    .line 180
    invoke-static/range {p14 .. p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->variableFpsRangeChooser:Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

    .line 181
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/io/VideoFileGenerator;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;

    .line 184
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 185
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/google/android/apps/camera/async/HandlerExecutor;

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 187
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/android/camera/camcorder/CamcorderManagerImpl$State;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/google/android/apps/camera/async/HandlerExecutor;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI9LGMSOB7CLP4IRBGDGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E9B6IP35DT2MSORFCHIN4K3IDTJ6IR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUGR1DLIN4OA3C5O78TBICL9MASRJD5NMSGRICLGN8RRI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUGR1DLIN4OA3C5O78TBICL96ASBLCLPN8GJLD5M68PBI8PGM6T3FE9SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQ3C5MMASJ18HINCQB3CL874RROF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR4CLR6IOR55T1M2RB5E9GKIP1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NK6OBGEHQN4PAICLONAPBJEH66ISRK8DP6AOBKDTP3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T1MURJ3ELP74PBEEH9N8OBKCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF8DNMSORLE9P6ARJKADQ62T357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQ3DTN66TBIE9IMST2JEHGN8P9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T6MAP39C596AORFE9I6ASIGE9IN0OBICLP3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR7DTNMER355THMURBDDTN2UOJ1EDIIUJRGEHKMURJ1DGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUK3ICLO62SJ5CH6MAP39C596AORFE9I6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8HINCQB3CL4MQS3C7C______(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/google/android/gms/internal/zzxg$zza;)Lcom/android/camera/camcorder/CamcorderDeviceImpl;
    .locals 33

    .prologue
    .line 99
    .line 1784
    new-instance v27, Lcom/android/camera/camcorder/camera/PreviewStarter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera/camcorder/camera/PreviewStarter;-><init>(Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Lcom/google/android/apps/camera/async/HandlerExecutor;)V

    .line 1791
    new-instance v4, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v8, p21

    move-object/from16 v9, p25

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;-><init>(Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Lcom/google/android/apps/camera/async/HandlerExecutor;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/gms/internal/zzxg$zza;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V

    .line 1801
    new-instance v7, Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    invoke-direct {v7}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;-><init>()V

    .line 1887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v5}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v5}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 1802
    :goto_0
    if-eqz v5, :cond_4

    .line 1803
    new-instance v31, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl;-><init>(Lcom/google/android/apps/camera/aaa/AfStateMonitor;)V

    .line 1808
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v5}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v5}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1809
    :cond_1
    new-instance v8, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    const-string v5, "CamcorderEx"

    const/4 v6, 0x1

    .line 1811
    invoke-static {v5, v6}, Lcom/google/android/apps/camera/async/Futures2;->newScheduledThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    const-wide/16 v10, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v8, v5, v10, v11, v6}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 1814
    new-instance v5, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    move-object v6, v4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v5 .. v14}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;-><init>(Lcom/android/camera/camcorder/camera/AfRequestSender;Lcom/google/android/apps/camera/aaa/AfStateMonitor;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)V

    .line 1840
    :goto_2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v26

    .line 1841
    invoke-virtual/range {p23 .. p23}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1842
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    .line 1855
    invoke-virtual/range {p23 .. p23}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/util/Size;

    move-object/from16 v8, p3

    move-object/from16 v14, p22

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    .line 1844
    invoke-static/range {v8 .. v18}, Lcom/android/camera/camcorder/camera/CamcorderCameraModule;->getSnapshotTaker(Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Landroid/os/Handler;Lcom/google/android/apps/camera/async/HandlerExecutor;Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;Lcom/google/common/base/Optional;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/util/Size;)Lcom/android/camera/camcorder/camera/SnapshotTaker;

    move-result-object v4

    .line 1843
    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v26

    .line 1859
    :cond_2
    new-instance v8, Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    move-object/from16 v18, v0

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    move-object/from16 v25, p20

    move-object/from16 v28, p9

    move-object/from16 v29, p0

    move-object/from16 v30, p24

    move-object/from16 v32, v7

    invoke-direct/range {v8 .. v32}, Lcom/android/camera/camcorder/CamcorderDeviceImpl;-><init>(Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/FileNamer;Lcom/google/android/apps/camera/async/HandlerExecutor;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/one/v2/core/ResponseListener;Lcom/google/android/apps/camera/aaa/AfStateMonitor;)V

    .line 99
    return-object v8

    .line 1887
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1804
    :cond_4
    new-instance v31, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;-><init>(Lcom/google/android/apps/camera/aaa/AfStateMonitor;)V

    goto/16 :goto_1

    .line 1826
    :cond_5
    new-instance v6, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    const-string v5, "CamcorderEx"

    const/4 v8, 0x1

    .line 1828
    invoke-static {v5, v8}, Lcom/google/android/apps/camera/async/Futures2;->newScheduledThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    const-wide/16 v8, 0x8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v6, v5, v8, v9, v10}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 1831
    new-instance v5, Lcom/android/camera/camcorder/camera/AfScannerImpl;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v5, v4, v6, v0, v1}, Lcom/android/camera/camcorder/camera/AfScannerImpl;-><init>(Lcom/android/camera/camcorder/camera/AfRequestSender;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V

    goto/16 :goto_2
.end method

.method static synthetic access$500(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->openedDeviceMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Manager has been closed"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    monitor-exit v1

    .line 210
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 198
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "close"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->openedDeviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderDevice;

    .line 202
    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderDevice;->close()V

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 209
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/device/CameraId;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCharacteristics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v0, v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Manager has been closed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    monitor-exit v2

    .line 238
    :goto_0
    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->characteristicsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->characteristicsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderCharacteristicsFactory:Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;

    .line 234
    invoke-virtual {v0, p1}, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->createCamcorderCharacterisitics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->characteristicsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v0
.end method

.method public final onDeviceClosed(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->openedDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final openCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZIILcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Lcom/android/camera/camcorder/CamcorderDeviceCallback;",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;ZZZZII",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "openCamcorder"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    move-object/from16 v40, v0

    monitor-enter v40

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->openedDeviceMap:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "immediateFailedFuture: The camera was already opened. cameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v3, Lcom/android/camera/camcorder/CamcorderAccessException;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CamcorderDevice has been opened: cameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/camcorder/CamcorderAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v40

    .line 497
    :goto_0
    return-object v3

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 277
    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v36

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    sget-object v4, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v3, v4}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "immediateFailedFuture: The state is not READY. mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CamcorderManagerImpl mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v40

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v3

    monitor-exit v40
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 285
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 288
    invoke-static/range {p12 .. p12}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v9

    .line 292
    invoke-static/range {p3 .. p3}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    move-result-object v3

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 294
    move-object/from16 v0, p4

    invoke-interface {v4, v0, v3}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->getProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v3

    .line 295
    if-nez v3, :cond_2

    .line 296
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "immediateFailedFuture: No supported CamcorderProfile"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v3, Lcom/android/camera/camcorder/CamcorderAccessException;

    const-string v4, "no supported CamcorderProfile"

    invoke-direct {v3, v4}, Lcom/android/camera/camcorder/CamcorderAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v40

    goto/16 :goto_0

    .line 300
    :cond_2
    sget-object v4, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Selected CamcorderProfileProxy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 303
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v4, v3, v0, v1}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;->createCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v6

    .line 307
    sget-object v4, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x27

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Selected CamcorderVideoEncoderProfile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 309
    invoke-interface {v4, v3}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;->createCamcorderAudioProfile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRGE9NNGU9FDLIM8QB15T1M2RB3DTP68PBIA1P6UPJ9DHIL0SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GBLCHKMUHBECDNM8PBIA1P6UPJ9DHIJM___$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBRDCLI6IO9F8DGMQORFE9I6ASIGE9NMCQBCCL874RROF4TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP42TB4D5NKARJ3DTI6ASIGE9NMCQBCCKTG____(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

    move-result-object v4

    .line 312
    new-instance v25, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 313
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 314
    new-instance v35, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;

    move-object/from16 v0, v35

    move-object/from16 v1, p13

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 318
    new-instance v39, Lcom/google/android/gms/internal/zzxg$zza;

    invoke-direct/range {v39 .. v39}, Lcom/google/android/gms/internal/zzxg$zza;-><init>()V

    .line 319
    new-instance v23, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 320
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 321
    new-instance v24, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 322
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 323
    new-instance v21, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;)V

    .line 326
    new-instance v22, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->mediaRecorderFactory:Lcom/android/camera/camcorder/media/MediaRecorderFactory;

    invoke-interface {v3}, Lcom/android/camera/camcorder/media/MediaRecorderFactory;->createMediaRecorderProxy()Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    move-result-object v8

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->persistentInputSurfaceFactory:Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

    .line 335
    invoke-interface {v3}, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;->createPersistentInputSurface()Lcom/google/common/base/Optional;

    move-result-object v12

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->mediaRecorderFactory:Lcom/android/camera/camcorder/media/MediaRecorderFactory;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;

    move-object/from16 v5, p2

    move-object/from16 v10, p14

    move-object/from16 v11, p16

    move/from16 v15, p22

    move/from16 v16, p23

    move-object/from16 v17, p7

    move/from16 v18, p21

    move-object/from16 v19, p6

    move-object/from16 v20, p24

    .line 339
    invoke-interface/range {v3 .. v20}, Lcom/android/camera/camcorder/media/MediaRecorderFactory;->createMediaRecorderPreparer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI85QM8QBF8LN66RR4CLP50SJFCPKMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASI4CLR6IOR58DGMOR32C5HMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4LJ9CHIMUHBECDNM8PBIA1P6UPJ9DHIJMJ3AC5R62BRLEHKMOBR3DTN66TBIE9IMST1F8LS6AORLEHNN4EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TO74RROF4NMQPB4D5GIUJB5CHKM2KJ5CDNN4P35E9874RROF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQJEHNN4OB7CL9N0OB3CL1MGPB3DDIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BR9DSNLCQB4CLNKCQBCCL3MARJ5E9GN8RRI7D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UJB5CHKM2KRKDTP62PR58DGMOR32C5HMMEQQ9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUJB5CHKM2KJ5CDNN4P35E9874PBGC5P6ASHR(Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/storage/StorageSpaceChecker;Lcom/android/camera/camcorder/io/VideoFileGenerator;IILcom/android/camera/camcorder/MediaStorageCallback;ZLcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    move-result-object v26

    .line 359
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getControlAeTargetFpsRange()Ljava/util/List;

    move-result-object v4

    .line 360
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x20

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "available AE target FPS ranges: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->variableFpsRangeChooser:Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

    .line 363
    invoke-virtual {v3, v4}, Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;->chooseVariableFpsRange(Ljava/util/List;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 365
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    .line 367
    :goto_2
    new-instance v5, Landroid/util/Range;

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getCaptureFrameRate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getCaptureFrameRate()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 370
    new-instance v11, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;

    invoke-direct {v11, v5, v4, v3}, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;-><init>(Landroid/util/Range;Lcom/google/common/base/Optional;Z)V

    .line 373
    new-instance v16, Lcom/google/android/apps/camera/async/ConcurrentState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 374
    new-instance v10, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    move-object/from16 v17, p11

    move-object/from16 v18, v9

    move-object/from16 v19, v35

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    invoke-direct/range {v10 .. v22}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;-><init>(Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;ZZZ)V

    .line 391
    invoke-interface/range {v26 .. v26}, Lcom/android/camera/camcorder/media/MediaRecorderPreparer;->prepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 394
    const-class v4, Ljava/util/concurrent/CancellationException;

    new-instance v5, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;-><init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;)V

    .line 395
    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Lcom/google/common/util/concurrent/Futures;->catching(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 413
    new-instance v17, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;

    move-object/from16 v18, p0

    move-object/from16 v19, p14

    move-object/from16 v20, v6

    move-object/from16 v21, v10

    move-object/from16 v22, p4

    move-object/from16 v27, p8

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v30, v16

    move-object/from16 v31, p11

    move-object/from16 v32, v9

    move-object/from16 v33, p13

    move-object/from16 v34, p15

    move-object/from16 v37, p16

    move-object/from16 v38, p17

    invoke-direct/range {v17 .. v39}, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;-><init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/android/gms/internal/zzxg$zza;)V

    move-object/from16 v0, v17

    invoke-static {v4, v3, v0}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 481
    new-instance v4, Lcom/android/camera/camcorder/CamcorderManagerImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/camcorder/CamcorderManagerImpl$3;-><init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 497
    monitor-exit v40
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 361
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 365
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public final openHfrCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA955666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZII)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Lcom/android/camera/camcorder/CamcorderDeviceCallback;",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;ZZZZII)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "openCamcorder"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->lock:Ljava/lang/Object;

    move-object/from16 v40, v0

    monitor-enter v40

    .line 528
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->openedDeviceMap:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "immediateFailedFuture: The camera was already opened. cameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v3, Lcom/android/camera/camcorder/CamcorderAccessException;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CamcorderDevice has been opened: cameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/camcorder/CamcorderAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v40

    .line 743
    :goto_0
    return-object v3

    .line 534
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 535
    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v36

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    sget-object v4, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v3, v4}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 538
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "immediateFailedFuture: The state is not READY. mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CamcorderManagerImpl mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v40

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v3

    monitor-exit v40
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 543
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->state:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 546
    invoke-static/range {p12 .. p12}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v9

    .line 550
    invoke-static/range {p3 .. p3}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    move-result-object v3

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 552
    move-object/from16 v0, p4

    invoke-interface {v4, v0, v3}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->getHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v3

    .line 553
    if-nez v3, :cond_2

    .line 554
    sget-object v3, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "immediateFailedFuture: No supported CamcorderProfile"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v3, Lcom/android/camera/camcorder/CamcorderAccessException;

    const-string v4, "no supported CamcorderProfile"

    invoke-direct {v3, v4}, Lcom/android/camera/camcorder/CamcorderAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v40

    goto/16 :goto_0

    .line 558
    :cond_2
    sget-object v4, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Selected CamcorderProfileProxy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 561
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v4, v3, v0, v1}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;->createCamcorderHfrVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v6

    .line 565
    sget-object v4, Lcom/android/camera/camcorder/CamcorderManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x27

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Selected CamcorderVideoEncoderProfile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 567
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v3}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;->createCamcorderHfrAudioProfile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRGE9NNGU9FDLIM8QB15T1M2RB3DTP68PBIA1P6UPJ9DHIL0SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GBLCHKMUHBECDNM8PBIA1P6UPJ9DHIJM___(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

    move-result-object v4

    .line 570
    new-instance v25, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 571
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 572
    new-instance v35, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;

    move-object/from16 v0, v35

    move-object/from16 v1, p13

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 576
    new-instance v39, Lcom/google/android/gms/internal/zzxg$zza;

    invoke-direct/range {v39 .. v39}, Lcom/google/android/gms/internal/zzxg$zza;-><init>()V

    .line 577
    new-instance v23, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 578
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 579
    new-instance v24, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 580
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 581
    new-instance v21, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;)V

    .line 584
    new-instance v22, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->mediaRecorderFactory:Lcom/android/camera/camcorder/media/MediaRecorderFactory;

    invoke-interface {v3}, Lcom/android/camera/camcorder/media/MediaRecorderFactory;->createMediaRecorderProxy()Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    move-result-object v8

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->persistentInputSurfaceFactory:Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

    .line 593
    invoke-interface {v3}, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;->createPersistentInputSurface()Lcom/google/common/base/Optional;

    move-result-object v12

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->mediaRecorderFactory:Lcom/android/camera/camcorder/media/MediaRecorderFactory;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl;->videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;

    .line 614
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v20

    move-object/from16 v5, p2

    move-object/from16 v10, p14

    move-object/from16 v11, p16

    move/from16 v15, p22

    move/from16 v16, p23

    move-object/from16 v17, p7

    move/from16 v18, p21

    move-object/from16 v19, p6

    .line 597
    invoke-interface/range {v3 .. v20}, Lcom/android/camera/camcorder/media/MediaRecorderFactory;->createMediaRecorderPreparer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI85QM8QBF8LN66RR4CLP50SJFCPKMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASI4CLR6IOR58DGMOR32C5HMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4LJ9CHIMUHBECDNM8PBIA1P6UPJ9DHIJMJ3AC5R62BRLEHKMOBR3DTN66TBIE9IMST1F8LS6AORLEHNN4EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TO74RROF4NMQPB4D5GIUJB5CHKM2KJ5CDNN4P35E9874RROF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQJEHNN4OB7CL9N0OB3CL1MGPB3DDIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BR9DSNLCQB4CLNKCQBCCL3MARJ5E9GN8RRI7D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UJB5CHKM2KRKDTP62PR58DGMOR32C5HMMEQQ9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUJB5CHKM2KJ5CDNN4P35E9874PBGC5P6ASHR(Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/storage/StorageSpaceChecker;Lcom/android/camera/camcorder/io/VideoFileGenerator;IILcom/android/camera/camcorder/MediaStorageCallback;ZLcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    move-result-object v26

    .line 616
    new-instance v11, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule;

    invoke-direct {v11, v6}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule;-><init>(Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;)V

    .line 619
    new-instance v16, Lcom/google/android/apps/camera/async/ConcurrentState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 620
    new-instance v10, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    move-object/from16 v17, p11

    move-object/from16 v18, v9

    move-object/from16 v19, v35

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    invoke-direct/range {v10 .. v22}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;-><init>(Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;ZZZ)V

    .line 637
    invoke-interface/range {v26 .. v26}, Lcom/android/camera/camcorder/media/MediaRecorderPreparer;->prepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 640
    const-class v4, Ljava/util/concurrent/CancellationException;

    new-instance v5, Lcom/android/camera/camcorder/CamcorderManagerImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/camcorder/CamcorderManagerImpl$4;-><init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;)V

    .line 641
    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Lcom/google/common/util/concurrent/Futures;->catching(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 658
    new-instance v17, Lcom/android/camera/camcorder/CamcorderManagerImpl$5;

    move-object/from16 v18, p0

    move-object/from16 v19, p14

    move-object/from16 v20, v6

    move-object/from16 v21, v10

    move-object/from16 v22, p4

    move-object/from16 v27, p8

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v30, v16

    move-object/from16 v31, p11

    move-object/from16 v32, v9

    move-object/from16 v33, p13

    move-object/from16 v34, p15

    move-object/from16 v37, p16

    move-object/from16 v38, p17

    invoke-direct/range {v17 .. v39}, Lcom/android/camera/camcorder/CamcorderManagerImpl$5;-><init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/android/gms/internal/zzxg$zza;)V

    move-object/from16 v0, v17

    invoke-static {v4, v3, v0}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 727
    new-instance v4, Lcom/android/camera/camcorder/CamcorderManagerImpl$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/camcorder/CamcorderManagerImpl$6;-><init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 743
    monitor-exit v40
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
