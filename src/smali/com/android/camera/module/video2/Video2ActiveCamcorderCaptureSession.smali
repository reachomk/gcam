.class public final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

.field private final camcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final facing:Lcom/android/camera/one/OneCamera$Facing;

.field private final iOExecutor:Ljava/util/concurrent/Executor;

.field private final localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private final screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

.field private final startDelayExecutor:Ljava/util/concurrent/Executor;

.field private state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

.field private final utcClock:Lcom/google/android/apps/camera/util/time/UtcClock;

.field private final video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

.field private final video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field private final video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

.field private final video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

.field private final video2Sound:Lcom/android/camera/module/video2/Video2Sound;

.field private final videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

.field private final videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "Vid2ActiveCdrCapSes"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSession;Ljava/util/concurrent/Executor;Lcom/android/camera/one/OneCamera$Facing;Ljava/util/concurrent/Executor;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/UtcClock;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/module/video2/Video2Sound;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 116
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->camcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    .line 117
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->startDelayExecutor:Ljava/util/concurrent/Executor;

    .line 118
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->facing:Lcom/android/camera/one/OneCamera$Facing;

    .line 119
    iput-object p4, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->iOExecutor:Ljava/util/concurrent/Executor;

    .line 120
    iput-object p5, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 121
    iput-object p6, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 122
    iput-object p7, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->utcClock:Lcom/google/android/apps/camera/util/time/UtcClock;

    .line 123
    iput-object p8, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 124
    iput-object p9, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 125
    iput-object p10, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    .line 126
    iput-object p11, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 127
    iput-object p12, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    .line 128
    iput-object p13, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 129
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    .line 130
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    .line 131
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    .line 132
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    .line 133
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 134
    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E91M2S3KELP6AKR5EDPMIRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF6996AORFE9I6IRJ785P78QB6C5HN8SPR55B0____(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/google/android/gms/common/internal/zzf$zza;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->commitSnapshots$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF6996AORFE9I6IRJ785P78QB6C5HN8SPR55B0____(Lcom/google/android/gms/common/internal/zzf$zza;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/google/android/apps/camera/util/time/UtcClock;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->utcClock:Lcom/google/android/apps/camera/util/time/UtcClock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method static synthetic access$1200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E91M2S3KELP6AKR5EDPMIRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55B0____(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->recordingDidSucceed$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55B0____(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2Sound;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/camcorder/CamcorderCaptureSession;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->camcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->recordingDidStop()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method private final declared-synchronized commitSnapshots$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF6996AORFE9I6IRJ785P78QB6C5HN8SPR55B0____(Lcom/google/android/gms/common/internal/zzf$zza;)V
    .locals 5

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderSnapshotList:Ljava/util/List;

    .line 439
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;

    .line 443
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->facing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->logSnapshotCapture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIADN62S3JD1NN8EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GI8HJ1CDKMSPPR55B0____(Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 444
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    invoke-virtual {v2, v0}, Lcom/android/camera/module/video2/Video2FileSaver;->insertVideoSnapshot$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIADN62S3JD1NN8EP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3M___(Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v3, v0}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    .line 447
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v2, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not insert video snapshot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " into MediaStore"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 452
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private final recordingDidStop()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 489
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->unlock()V

    .line 490
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    .line 491
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->didStopRecording()V

    .line 492
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Sound;->restoreRingerState()V

    .line 493
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Sound;->playStopVideoRecordingSound()V

    .line 494
    return-void
.end method

.method private final recordingDidSucceed$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55B0____(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)V
    .locals 4

    .prologue
    .line 455
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "recordingDidSucceed: videoFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->facing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;->logVideoCapture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62926C5HMIRJ77CKLC___(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 461
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video2/Video2FileSaver;->saveFile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEO_(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    .line 468
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2016
    new-instance v2, Lcom/android/camera/data/Metadata$Builder;

    invoke-direct {v2}, Lcom/android/camera/data/Metadata$Builder;-><init>()V

    .line 2017
    invoke-static {v2, v1}, Lcom/android/camera/data/VideoRotationMetadataLoader;->loadRotationMetadata(Lcom/android/camera/data/Metadata$Builder;Ljava/lang/String;)Z

    .line 2018
    invoke-virtual {v2}, Lcom/android/camera/data/Metadata$Builder;->build()Lcom/android/camera/data/Metadata;

    move-result-object v1

    .line 467
    invoke-interface {v0, v1}, Lcom/android/camera/data/FilmstripItem;->setMetadata(Lcom/android/camera/data/Metadata;)V

    .line 471
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "Failed to update media store. ContentResolver.insert() returns null."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/gms/common/internal/zzf$zza;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    sget-object v4, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 347
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STOPPING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 350
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ModuleUI;->showCaptureUI(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->stopRecording(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$5;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 358
    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 372
    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$6;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->iOExecutor:Ljava/util/concurrent/Executor;

    .line 373
    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$7;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 430
    monitor-exit v2

    return-object v0

    :cond_0
    move v0, v1

    .line 346
    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    .line 138
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-eq v0, v1, :cond_0

    .line 142
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 143
    monitor-exit v2

    .line 173
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->stopRecording(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zza;

    .line 153
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    invoke-direct {p0, v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->recordingDidSucceed$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55B0____(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)V

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->iOExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/google/android/gms/common/internal/zzf$zza;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ModuleUI;->showCaptureUI(Z)V

    .line 169
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->recordingDidStop()V

    .line 172
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 173
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "failed to close current recording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final onMaxDurationReached()V
    .locals 3

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$2;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 191
    return-void
.end method

.method public final onMaxFileSizeReached()V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$3;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 224
    return-void
.end method

.method public final onPauseButtonClicked()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 258
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->onPauseButtonClicked()V

    .line 262
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onResumeButtonClicked()V
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 267
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->onResumeButtonClicked()V

    .line 271
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onShutterButtonClicked()V
    .locals 4

    .prologue
    .line 230
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 231
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STARTING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    monitor-exit v1

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 244
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 241
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    sget-object v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    if-ne v0, v2, :cond_1

    .line 1275
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    :try_start_2
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STARTING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->state:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 1277
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->TAG:Ljava/lang/String;

    const-string v3, "startRecording"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeAlwaysOn()V

    .line 1279
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 1280
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->lock()V

    .line 1281
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Sound;->playStartVideoRecordingSound()V

    .line 1282
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->showRecordingUI()V

    .line 1287
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->startDelayExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;

    invoke-direct {v3, p0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$4;-><init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1341
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final onSnapshotButtonClicked()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 249
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->activeCamcorderRecordingSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->onSnapshotButtonClicked()V

    .line 253
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
