.class public interface abstract Lcom/android/camera/camcorder/CamcorderManager;
.super Ljava/lang/Object;
.source "CamcorderManager.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;
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
.end method

.method public abstract getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
.end method

.method public abstract openCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZIILcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method

.method public abstract openHfrCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA955666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZII)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method
