.class final Lcom/android/camera/camcorder/CamcorderManagerImpl$2;
.super Ljava/lang/Object;
.source "CamcorderManagerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderManagerImpl;->openCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZIILcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
        "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
        "Lcom/android/camera/camcorder/CamcorderDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

.field private synthetic val$aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$aeExposureCompensationScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$afModeIsContinuous:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

.field private synthetic val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private synthetic val$concurrentStateAeMeteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$concurrentStateAfMeteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$concurrentStateScalerCropRegion:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$filteredObservableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

.field private synthetic val$observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$observableZoomRatio:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private synthetic val$optionalLocationProvider:Lcom/google/common/base/Optional;

.field private synthetic val$optionalSnapshotSize:Lcom/google/common/base/Optional;

.field private synthetic val$selectedCamcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

.field private synthetic val$settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

.field private synthetic val$zoomedCropRegion:Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/android/gms/internal/zzxg$zza;)V
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$selectedCamcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    iput-object p4, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    iput-object p5, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iput-object p6, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$concurrentStateAeMeteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p7, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$concurrentStateAfMeteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p8, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$concurrentStateScalerCropRegion:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p9, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    iput-object p10, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iput-object p11, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$aeExposureCompensationScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iput-object p12, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iput-object p13, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$afModeIsContinuous:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p14, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$filteredObservableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableZoomRatio:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$zoomedCropRegion:Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$optionalLocationProvider:Lcom/google/common/base/Optional;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$optionalSnapshotSize:Lcom/google/common/base/Optional;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDeviceProxy and PreparedMediaRecorder are ready."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$100(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 423
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$200(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v1, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CamcorderManager has been closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v27

    .line 476
    :goto_0
    return-object v1

    .line 428
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$200(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v1, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-static {v1, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$202(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/android/camera/camcorder/CamcorderManagerImpl$State;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

    .line 433
    invoke-static {v1}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v19

    .line 436
    new-instance v3, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    .line 437
    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$300(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/google/android/apps/camera/async/HandlerExecutor;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v1}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorImpl;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/async/HandlerExecutor;)V

    .line 440
    new-instance v7, Lcom/android/camera/one/v2/core/Nexus5FrameServerModule;

    invoke-direct {v7}, Lcom/android/camera/one/v2/core/Nexus5FrameServerModule;-><init>()V

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$selectedCamcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$concurrentStateAeMeteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$concurrentStateAfMeteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$concurrentStateScalerCropRegion:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$aeExposureCompensationScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$afModeIsContinuous:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$filteredObservableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableZoomRatio:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$zoomedCropRegion:Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$optionalLocationProvider:Lcom/google/common/base/Optional;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$optionalSnapshotSize:Lcom/google/common/base/Optional;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

    move-object/from16 v26, v0

    move-object/from16 v5, p1

    move-object/from16 v25, p2

    .line 445
    invoke-static/range {v1 .. v26}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI9LGMSOB7CLP4IRBGDGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E9B6IP35DT2MSORFCHIN4K3IDTJ6IR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUGR1DLIN4OA3C5O78TBICL9MASRJD5NMSGRICLGN8RRI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUGR1DLIN4OA3C5O78TBICL96ASBLCLPN8GJLD5M68PBI8PGM6T3FE9SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQ3C5MMASJ18HINCQB3CL874RROF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR4CLR6IOR55T1M2RB5E9GKIP1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NK6OBGEHQN4PAICLONAPBJEH66ISRK8DP6AOBKDTP3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T1MURJ3ELP74PBEEH9N8OBKCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF8DNMSORLE9P6ARJKADQ62T357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQ3DTN66TBIE9IMST2JEHGN8P9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T6MAP39C596AORFE9I6ASIGE9IN0OBICLP3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR7DTNMER355THMURBDDTN2UOJ1EDIIUJRGEHKMURJ1DGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUK3ICLO62SJ5CH6MAP39C596AORFE9I6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8HINCQB3CL4MQS3C7C______(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/google/android/gms/internal/zzxg$zza;)Lcom/android/camera/camcorder/CamcorderDeviceImpl;

    move-result-object v2

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$500(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$500(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->val$cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v27

    goto/16 :goto_0

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 473
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    check-cast p2, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$2;->apply(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
