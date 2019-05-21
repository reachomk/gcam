.class final Lcom/android/camera/camcorder/CamcorderManagerImpl$1;
.super Ljava/lang/Object;
.source "CamcorderManagerImpl.java"

# interfaces
.implements Lcom/google/common/base/Function;


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
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/concurrent/CancellationException;",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderManagerImpl;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Ljava/util/concurrent/CancellationException;)Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;
    .locals 3

    .prologue
    .line 401
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openCamcorder canceled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$100(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$200(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;->this$0:Lcom/android/camera/camcorder/CamcorderManagerImpl;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-static {v0, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl;->access$202(Lcom/android/camera/camcorder/CamcorderManagerImpl;Lcom/android/camera/camcorder/CamcorderManagerImpl$State;)Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 406
    :cond_0
    throw p1

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0, p1}, Lcom/android/camera/camcorder/CamcorderManagerImpl$1;->apply(Ljava/util/concurrent/CancellationException;)Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v0

    return-object v0
.end method
