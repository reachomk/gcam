.class public final Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;
.super Ljava/lang/Object;
.source "ResourceCaptureToolsImpl.java"

# interfaces
.implements Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final androidContext:Landroid/content/Context;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final headingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private final locationProvider:Lcom/android/camera/location/LocationProvider;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final pictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private final resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ResCapTools"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/hardware/HeadingSensor;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/content/Context;Lcom/android/camera/storage/FileNamer;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/imageintent/ImageIntentModuleUI;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/hardware/HeadingSensor;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Landroid/content/Context;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/module/imageintent/ImageIntentModuleUI;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$2;

    invoke-direct {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$2;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->pictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 101
    iput-object p1, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 102
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 103
    iput-object p2, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 104
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 105
    iput-object p3, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 106
    iput-object p4, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 107
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 108
    iput-object p5, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 110
    iput-object p6, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->androidContext:Landroid/content/Context;

    .line 111
    iput-object p7, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 112
    iput-object p8, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 113
    iput-object p9, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    .line 114
    iput-object p10, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->locationProvider:Lcom/android/camera/location/LocationProvider;

    .line 115
    iput-object p11, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 117
    iput-object p12, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/module/imageintent/ImageIntentModuleUI;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    return-object v0
.end method

.method public static create$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQICLJ46RRLDPQ44OBJCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA9IMCGRFELN78GJ1EDIJMJ31DPI74RR9CGNM6RREEHIMST1F8DNMST35F1Q3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T36IR359PGMQPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQ6D5M6ASQGE9NNGU9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJB1D5N58Q3ICLGM8EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR5E9P6USHFADK6UT26C5KMOTBICL462RJ4DHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355THM2S3KELP6ABQ3C5O78TBICL6MUP3LDHIL6RRLDPI50R31F5IN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TKMQOB7CLKMST35DPQ2UIBDC5JMAIBEEHIMST2DDTI7AR35AL4JMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUR3FCDGN8QBFDONKORR3C5Q6IRREA1P6UTJ9CHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBRCC5SMUTBK5T7N4QB5DPQ62T39DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMIRJACLHN8BR1E1O2UGBECHP6UQB4ADIN4TJ9CDIN6EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA9IMCGRFELN78GJ1EDIJM___(Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;Landroid/content/Context;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/module/imageintent/ImageIntentModuleUI;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/error/ShotFailureHandler;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/module/imageintent/ImageIntentModuleUI;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Lcom/android/camera/session/CaptureSessionManagerImpl;

    new-instance v3, Lcom/google/android/apps/camera/async/Futures2;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/Futures2;-><init>()V

    .line 66
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/camera/session/SessionStorageManagerImpl;->create(Landroid/content/Context;Lcom/android/camera/storage/FilesProxy;)Lcom/android/camera/session/SessionStorageManager;

    move-result-object v4

    new-instance v7, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v7}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/session/CaptureSessionManagerImpl;-><init>(Lcom/android/camera/session/CaptureSessionFactory;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    .line 70
    new-instance v7, Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    .line 71
    new-instance v3, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;-><init>(Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/hardware/HeadingSensor;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/content/Context;Lcom/android/camera/storage/FileNamer;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/imageintent/ImageIntentModuleUI;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/google/android/apps/camera/async/Observable;)V

    .line 85
    new-instance v2, Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-direct {v2, v3}, Lcom/google/android/apps/camera/async/RefCountBase;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V

    return-object v2
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 124
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 126
    return-void
.end method

.method public final getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method public final getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method public final getResourceOpenedCamera()Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method public final getResourceSurfaceTexture()Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method public final playCountDownSound(I)V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_FINAL_SECOND_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_INCREMENT_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    goto :goto_0
.end method

.method public final playCountDownStartSound()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_START_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 216
    return-void
.end method

.method public final takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 21

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$1;-><init>(Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/storage/FileNamer;->generateImageName(J)Ljava/lang/String;

    move-result-object v4

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->locationProvider:Lcom/android/camera/location/LocationProvider;

    invoke-interface {v5}, Lcom/android/camera/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 170
    invoke-interface {v6, v4, v2, v3, v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession$5166KOBMC4NMOOBECSNL6T3ID5N6EEQA9HGMSP3IDTKM8BRCDTHM2T39DTN2UJ3FCDGN8QBFDOTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;

    move-result-object v20

    .line 171
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getPictureSize()Lcom/android/camera/util/Size;

    move-result-object v2

    sget-object v3, Lcom/android/camera/session/CaptureSession$SessionType;->IMAGE_INTENT:Lcom/android/camera/session/CaptureSession$SessionType;

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lcom/android/camera/session/StackableSession;->startEmpty(Lcom/android/camera/util/Size;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 173
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v2}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getZoom()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v2}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->OFF:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->getIndex()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v10, 0x1

    .line 178
    :goto_0
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    const/16 v3, 0x13

    .line 181
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    .line 186
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCaptureSetting()Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    invoke-virtual {v8}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCaptureSetting()Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/one/OneCameraCaptureSetting;->hdrPlusSetting()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-virtual {v9}, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->encodeSettingsString()Ljava/lang/String;

    move-result-object v9

    .line 189
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;->getCountDownDuration()I

    move-result v11

    int-to-float v11, v11

    .line 190
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;->getTouchPointInsideShutterButton()Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    move-result-object v12

    const/4 v13, 0x0

    .line 192
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v14

    const/4 v15, 0x0

    .line 179
    invoke-interface/range {v2 .. v15}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZZFLjava/lang/String;Ljava/lang/String;ZFLcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Boolean;Landroid/graphics/Rect;Lcom/google/common/logging/nano/eventprotos$MeteringData;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v2}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 196
    new-instance v8, Lcom/google/android/gms/googlehelp/internal/common/zzd;

    .line 198
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 199
    invoke-interface {v3}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->androidContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->pictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 203
    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v14

    if-eqz v2, :cond_2

    .line 205
    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v15

    .line 206
    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move/from16 v16, v7

    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/googlehelp/internal/common/zzd;-><init>(Ljava/lang/String;ILjava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$PictureSaverCallback;ILcom/android/camera/one/OneCamera$Facing;FFZ)V

    .line 210
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v8, v0}, Lcom/android/camera/one/OneCamera;->takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O94A1K6UT3F8DGN0T3LE9IL0OBIC5MMAT35E9PJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKKOORFDKNMERRFCTM6ABR3DTMMQRRE5TQN8QBC5THMURJ3ELP74PBEEGNKOQBJEHIMSOB2DHIKCTBKELP6AEO_(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 211
    return-void

    .line 176
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 182
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 206
    :cond_2
    sget-object v15, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_2
.end method
