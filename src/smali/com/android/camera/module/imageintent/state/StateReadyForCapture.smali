.class public final Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateReadyForCapture.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final eventCameraBusyHandler$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BRJEHGN8P9F95MM2PR595N78PBEEH2NCPBEEH462RJ4DHIN4EO_:Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
        }
    .end annotation
.end field

.field private final eventCameraReadyHandler$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BRJEHGN8P9F95MM2PR595N78PBEEH2NCPBEEH462RJ4DHIN4EO_:Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
        }
    .end annotation
.end field

.field private isCountingDown:Z

.field private isDecodingPicture:Z

.field private isTakingPicture:Z

.field private final pictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

.field private final resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;",
            ">;"
        }
    .end annotation
.end field

.field private shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

.field private stateLifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "StateReadyCap"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/imageintent/state/ImageIntentState;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 569
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->eventCameraBusyHandler$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BRJEHGN8P9F95MM2PR595N78PBEEH2NCPBEEH462RJ4DHIN4EO_:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 586
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$18;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$18;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->eventCameraReadyHandler$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BRJEHGN8P9F95MM2PR595N78PBEEH2NCPBEEH462RJ4DHIN4EO_:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 603
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$19;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$19;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->pictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 617
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getFileNamer()Lcom/android/camera/storage/FileNamer;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getFilesProxy()Lcom/android/camera/storage/FilesProxy;

    move-result-object v4

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v5

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getShotFailureHandler()Lcom/android/camera/error/ShotFailureHandler;

    move-result-object v6

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v7

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v8

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getLocationProvider()Lcom/android/camera/location/LocationProvider;

    move-result-object v9

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v10

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getAndroidServices()Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-result-object v11

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getGridLinesProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v12

    move-object v0, p2

    move-object/from16 v1, p3

    .line 85
    invoke-static/range {v0 .. v12}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->create$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQICLJ46RRLDPQ44OBJCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA9IMCGRFELN78GJ1EDIJMJ31DPI74RR9CGNM6RREEHIMST1F8DNMST35F1Q3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T36IR359PGMQPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQ6D5M6ASQGE9NNGU9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJB1D5N58Q3ICLGM8EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR5E9P6USHFADK6UT26C5KMOTBICL462RJ4DHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355THM2S3KELP6ABQ3C5O78TBICL6MUP3LDHIL6RRLDPI50R31F5IN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TKMQOB7CLKMST35DPQ2UIBDC5JMAIBEEHIMST2DDTI7AR35AL4JMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUR3FCDGN8QBFDONKORR3C5Q6IRREA1P6UTJ9CHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBRCC5SMUTBK5T7N4QB5DPQ62T39DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMIRJACLHN8BR1E1O2UGBECHP6UQB4ADIN4TJ9CDIN6EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA9IMCGRFELN78GJ1EDIJM___(Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;Landroid/content/Context;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/module/imageintent/ImageIntentModuleUI;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isCountingDown:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isTakingPicture:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isDecodingPicture:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    .line 1125
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1133
    const-class v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1136
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$2;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1158
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1161
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$3;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1173
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1176
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$4;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1183
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1186
    const-class v0, Lcom/android/camera/module/imageintent/event/EventCameraBusy;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->eventCameraBusyHandler$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BRJEHGN8P9F95MM2PR595N78PBEEH2NCPBEEH462RJ4DHIN4EO_:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1189
    const-class v0, Lcom/android/camera/module/imageintent/event/EventCameraReady;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->eventCameraReadyHandler$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BRJEHGN8P9F95MM2PR595N78PBEEH2NCPBEEH462RJ4DHIN4EO_:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1192
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1255
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1258
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1269
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1272
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1301
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnSwitchCameraButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1304
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$8;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$8;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1317
    const-class v1, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1320
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1350
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1353
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1381
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1384
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1407
    const-class v1, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1410
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1450
    const-class v1, Lcom/android/camera/module/imageintent/event/EventCameraQuickExpose;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1453
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 1472
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnCancelShutterButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isTakingPicture:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isTakingPicture:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isDecodingPicture:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isDecodingPicture:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->onFocusStateUpdated(Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->stateLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isCountingDown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isCountingDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->takePictureNow(Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private final onFocusStateUpdated(Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;)V
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    .line 560
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 562
    :pswitch_0
    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final takePictureNow(Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->isTakingPicture:Z

    .line 120
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->pictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    .line 121
    return-void
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 5

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v1

    .line 478
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->stateLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 480
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getOneCameraState$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ1ADQ62T357C______()Lcom/google/android/gms/internal/zzaih;

    move-result-object v0

    .line 482
    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->stateLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 484
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaih;->getReadyState()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    new-instance v4, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$14;

    invoke-direct {v4, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$14;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 485
    invoke-interface {v3, v4, v1}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    .line 482
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 497
    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->stateLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 499
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaih;->getAutoFocusStateTransition()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v3, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$15;

    invoke-direct {v3, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$15;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    .line 500
    invoke-interface {v0, v3, v1}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 497
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 513
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 514
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 515
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 516
    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSessionManager;->addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 519
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLeave()V
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewTapListener()Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/wirers/PreviewTapListener;->clearListener()V

    .line 548
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewLongPressListener()Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->clearListener()V

    .line 550
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 551
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 552
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 553
    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 555
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->stateLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 556
    return-void
.end method
