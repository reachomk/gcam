.class public final Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;
.super Ljava/lang/Object;
.source "MediaRecorderPreparerImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/MediaRecorderPreparer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camcorderAudioEncoderProfile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASI1ELI6IRQ5DPHMUP35E9874RR6D5M6AEO_:Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

.field private final camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

.field private final camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final intentFileDescriptorOptional:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final maxDurationSeconds:I

.field private final maxFileSizeLimitBytes:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxTorchDurationSeconds:I

.field private final mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

.field private final mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

.field private final observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final optionalLocationProvider:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentInputSurfaceOptional:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

.field private final videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;

.field private final videoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "MediaRecPreparer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/android/camera/storage/StorageSpaceChecker;Lcom/android/camera/camcorder/io/VideoFileGenerator;IIZLcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;",
            "Lcom/android/camera/camcorder/CamcorderDeviceCallback;",
            "Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
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
            "IIZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderAudioEncoderProfile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASI1ELI6IRQ5DPHMUP35E9874RR6D5M6AEO_:Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

    .line 86
    iput-object p2, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    .line 87
    iput-object p3, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 88
    iput-object p4, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 89
    iput-object p5, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    .line 90
    iput-object p7, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    .line 91
    iput-object p8, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->videoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;

    .line 92
    iput-object p9, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->optionalLocationProvider:Lcom/google/common/base/Optional;

    .line 93
    iput-object p10, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->persistentInputSurfaceOptional:Lcom/google/common/base/Optional;

    .line 94
    iput-object p11, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    .line 95
    iput-object p12, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;

    .line 96
    iput p13, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->maxDurationSeconds:I

    .line 97
    iput p14, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->maxTorchDurationSeconds:I

    .line 98
    iput-object p6, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    .line 100
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->intentFileDescriptorOptional:Lcom/google/common/base/Optional;

    .line 101
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->maxFileSizeLimitBytes:Lcom/google/common/base/Optional;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/android/camera/camcorder/MediaStorageCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->maxTorchDurationSeconds:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->maxDurationSeconds:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->maxFileSizeLimitBytes:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->optionalLocationProvider:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/android/camera/camcorder/CamcorderDeviceCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/android/camera/camcorder/io/VideoFileGenerator;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->videoFileGenerator:Lcom/android/camera/camcorder/io/VideoFileGenerator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    return-object v0
.end method

.method static synthetic access$500$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5TMMAP39C4NKQPB4D5GL4PB3DTP68PBIA1P6AS31E9IN4IBDE1M3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GBLCHKMUHBECDNM8PBIA1P6UPJ9DHIJM___(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderAudioEncoderProfile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASI1ELI6IRQ5DPHMUP35E9874RR6D5M6AEO_:Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->intentFileDescriptorOptional:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->persistentInputSurfaceOptional:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->videoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method


# virtual methods
.method public final prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->TAG:Ljava/lang/String;

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/StorageSpaceChecker;->checkSpace(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;-><init>(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)V

    iget-object v2, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final usePersistentSurface()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->persistentInputSurfaceOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 337
    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->isSlowMotion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 336
    goto :goto_0
.end method
