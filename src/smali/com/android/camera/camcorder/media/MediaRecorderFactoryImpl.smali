.class public final Lcom/android/camera/camcorder/media/MediaRecorderFactoryImpl;
.super Ljava/lang/Object;
.source "MediaRecorderFactoryImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/MediaRecorderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "MediaRecFtyImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMediaRecorderPreparer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI85QM8QBF8LN66RR4CLP50SJFCPKMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASI4CLR6IOR58DGMOR32C5HMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4LJ9CHIMUHBECDNM8PBIA1P6UPJ9DHIJMJ3AC5R62BRLEHKMOBR3DTN66TBIE9IMST1F8LS6AORLEHNN4EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TO74RROF4NMQPB4D5GIUJB5CHKM2KJ5CDNN4P35E9874RROF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQJEHNN4OB7CL9N0OB3CL1MGPB3DDIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BR9DSNLCQB4CLNKCQBCCL3MARJ5E9GN8RRI7D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UJB5CHKM2KRKDTP62PR58DGMOR32C5HMMEQQ9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUJB5CHKM2KJ5CDNN4P35E9874PBGC5P6ASHR(Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/storage/StorageSpaceChecker;Lcom/android/camera/camcorder/io/VideoFileGenerator;IILcom/android/camera/camcorder/MediaStorageCallback;ZLcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/android/camera/camcorder/media/MediaRecorderPreparer;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;",
            "Lcom/android/camera/camcorder/CamcorderDeviceCallback;",
            "Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/storage/StorageSpaceChecker;",
            "Lcom/android/camera/camcorder/io/VideoFileGenerator;",
            "II",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
            "Z",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/camera/camcorder/media/MediaRecorderPreparer;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p14

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/storage/StorageSpaceChecker;Lcom/android/camera/camcorder/io/VideoFileGenerator;IIZLcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    return-object v0
.end method

.method public final createMediaRecorderProxy()Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;-><init>(Landroid/media/MediaRecorder;)V

    return-object v0
.end method
