.class public final Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;
.super Ljava/lang/Object;
.source "VideoIntentContextImpl.java"

# interfaces
.implements Lcom/android/camera/module/videointent/state/VideoIntentContext;


# instance fields
.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private final appController:Lcom/android/camera/app/AppController;

.field private final camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private final cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

.field private final cameraThread:Landroid/os/HandlerThread;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final flashSetting:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final intent:Landroid/content/Intent;

.field private final locationManager:Lcom/android/camera/location/LocationProvider;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

.field private final moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final previewAspectRatio:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/util/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceSurfaceTextureFactory:Lcom/android/camera/module/ResourceSurfaceTextureFactory;

.field private final resources:Landroid/content/res/Resources;

.field private final video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

.field private final video2Settings:Lcom/android/camera/module/video2/Video2Settings;

.field private final videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

.field private final videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

.field private videoUri:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

.field private final whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Lcom/android/camera/module/videointent/VideoIntentModuleUI;Ljava/lang/String;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/ResourceSurfaceTextureFactory;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/error/FatalErrorHandler;Landroid/content/res/Resources;Landroid/content/ContentResolver;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/CaptureLayoutHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/camera/module/videointent/VideoIntentModuleUI;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/CameraManager;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/module/ResourceSurfaceTextureFactory;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/settings/CameraFacingSetting;",
            "Lcom/android/camera/settings/ResolutionSetting;",
            "Lcom/android/camera/app/AppController;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/camera/module/video2/Video2Settings;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/device/CameraDeviceManager;",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/android/camera/module/video2/Video2FileSaver;",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->intent:Landroid/content/Intent;

    .line 196
    iput-object p2, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    .line 198
    iput-object p4, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 199
    iput-object p5, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->context:Landroid/content/Context;

    .line 200
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 202
    iput-object p7, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 203
    iput-object p8, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->locationManager:Lcom/android/camera/location/LocationProvider;

    .line 204
    iput-object p9, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 205
    iput-object p10, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->resourceSurfaceTextureFactory:Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    .line 207
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    .line 209
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 210
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 211
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 212
    iput-object p12, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 213
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->appController:Lcom/android/camera/app/AppController;

    .line 214
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 215
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->resources:Landroid/content/res/Resources;

    .line 216
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoCaptureIntentModule.CameraHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraThread:Landroid/os/HandlerThread;

    .line 217
    iget-object v1, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    new-instance v1, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->previewAspectRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 220
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 221
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 222
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    .line 223
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoUri:Lcom/google/common/base/Optional;

    .line 224
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    .line 225
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->flashSetting:Lcom/google/android/apps/camera/async/Observable;

    .line 226
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 227
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 228
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    .line 229
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 230
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 231
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 232
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 233
    return-void
.end method

.method public static create$51662RJ4E9NMIP1FCDNMST35DPQ2UIBEEHIMST1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNMIRJKCLN78BQMD5I6ARQ9DPQ6ARJK9LNM8TBCCLAKIEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FD1GN4P3NC5P6ABR3C5MMASJ168NK6OBDCLP62JB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OADC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMORR3C5Q6IRRE5T66UOR1EHKMURIGE9NNCQB4CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UR31F5NNAT1F9TP6IPBEEHGN8QBFDP6M2RJ1CTIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T96ASRFELP66PAJELP6COB3CLA6AU3KELP6AHJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUOR1E1Q7ASJ55T1M2S3KELP6AJBFCHQMOPAJDTQMSP2GDHGNIPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F85O70GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR5E9P6USHF8PGN8OBC8LP74RRI91GMSP3CCLP3MJ31DPI74RR9CGNM6RREEHIMST1FE9IN6BQICLPMUTBICDIN6EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLN78KJ5EDNMOTJ5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPIADIN8T39DPJN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NNCQB5ETJ6IRJ4CLP2ULJ9CLRMCQBECHIN4KR9F9IL6PBCCLHN8RRI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6ATJ9CDIIUGR1DLIN4OA4CLR6IOR59LGMSOB7CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMIRJACLHN8BR1E1O2UGBECHP6UQB4ADIN4TJ9CDIN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCI6D5M6AKR1EPIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQDCLI6IOAJEHNN4OB7CL1M2R3CC9GM6QPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLQ78QBECTPIULR8D5Q6AGJ1DHGMSOR5ADIN8T39DPJJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95THMURJKE9NMOR35E8NLCQB4CLNK6OBDCDNN4P35E926ATJ9CDIL6T31EHIM6Q31E9Q3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95THMURJKE9NMOR35E8NLCQB4CLNKIRJKCLN78KRKC5Q6AOR8C5P78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBRCD5J6AT39DLIIUGB3EHKNCQBKF566IPJ5EHKMQP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IKOOBPDTQN8I35DHO6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUQBEEHIMST1FEDQ62T355TB6IP35DT4MST35DPQ46RREEHINGT1R(Landroid/content/Intent;Lcom/android/camera/module/videointent/VideoIntentModuleUI;Ljava/lang/String;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/ResourceSurfaceTextureFactory;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/app/AppController;Lcom/android/camera/error/FatalErrorHandler;Landroid/content/res/Resources;Landroid/content/ContentResolver;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/camcorder/CamcorderManager;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/CaptureLayoutHelper;)Lcom/android/camera/module/videointent/state/VideoIntentContext;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/camera/module/videointent/VideoIntentModuleUI;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/CameraManager;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/module/ResourceSurfaceTextureFactory;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/app/AppController;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/module/video2/Video2Settings;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/device/CameraDeviceManager;",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/module/video2/Video2FileSaver;",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ")",
            "Lcom/android/camera/module/videointent/state/VideoIntentContext;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v17, Lcom/android/camera/settings/CameraFacingSetting;

    move-object/from16 v0, v17

    move-object/from16 v1, p14

    move-object/from16 v2, p10

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/settings/CameraFacingSetting;-><init>(Landroid/content/res/Resources;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V

    .line 123
    new-instance v18, Lcom/android/camera/settings/ResolutionSetting;

    move-object/from16 v0, v18

    move-object/from16 v1, p10

    move-object/from16 v2, p6

    move-object/from16 v3, p16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/settings/ResolutionSetting;-><init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 125
    new-instance v4, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v19, p12

    move-object/from16 v20, p21

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    move-object/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p19

    move-object/from16 v27, p20

    move-object/from16 v28, p22

    move-object/from16 v29, p23

    move-object/from16 v30, p24

    move-object/from16 v31, p25

    move-object/from16 v32, p26

    move-object/from16 v33, p27

    move-object/from16 v34, p28

    move-object/from16 v35, p29

    move-object/from16 v36, p30

    move-object/from16 v37, p31

    invoke-direct/range {v4 .. v37}, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;-><init>(Landroid/content/Intent;Lcom/android/camera/module/videointent/VideoIntentModuleUI;Ljava/lang/String;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/ResourceSurfaceTextureFactory;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/error/FatalErrorHandler;Landroid/content/res/Resources;Landroid/content/ContentResolver;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/CaptureLayoutHelper;)V

    return-object v4
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 238
    return-void
.end method

.method public final getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    return-object v0
.end method

.method public final getAeController$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TG____()Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    return-object v0
.end method

.method public final getAndroidServices()Lcom/google/android/apps/camera/inject/app/AndroidServices;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    return-object v0
.end method

.method public final getAppController()Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method public final getCamcorderManager()Lcom/android/camera/camcorder/CamcorderManager;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    return-object v0
.end method

.method public final getCameraDeviceManager()Lcom/android/camera/device/CameraDeviceManager;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    return-object v0
.end method

.method public final getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    return-object v0
.end method

.method public final getCaptureLayoutHelper()Lcom/android/camera/ui/CaptureLayoutHelper;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    return-object v0
.end method

.method public final getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEvScrollingState$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final getFatalErrorHandler()Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method public final getFlashSetting()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->flashSetting:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getLocationProvider()Lcom/android/camera/location/LocationProvider;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->locationManager:Lcom/android/camera/location/LocationProvider;

    return-object v0
.end method

.method public final getMainThread()Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method public final getMediaStorageCallback()Lcom/android/camera/camcorder/MediaStorageCallback;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    return-object v0
.end method

.method public final getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    return-object v0
.end method

.method public final getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v0
.end method

.method public final getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method public final getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/util/AspectRatio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->previewAspectRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final getResourceSurfaceTextureFactory()Lcom/android/camera/module/ResourceSurfaceTextureFactory;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->resourceSurfaceTextureFactory:Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getUri()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoUri:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getVideo2FileSaver()Lcom/android/camera/module/video2/Video2FileSaver;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    return-object v0
.end method

.method public final getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    return-object v0
.end method

.method public final getVideoCamcorderDeviceStatechart()Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    return-object v0
.end method

.method public final getVideoIntentStatechart()Lcom/android/camera/ui/controller/VideoIntentStatechart;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    return-object v0
.end method

.method public final getViewfinderSizeSelector()Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    return-object v0
.end method

.method public final getWhiteBalanceSetting()Lcom/android/camera/settings/WhiteBalanceSetting;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    return-object v0
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoUri:Lcom/google/common/base/Optional;

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->videoUri:Lcom/google/common/base/Optional;

    goto :goto_0
.end method
