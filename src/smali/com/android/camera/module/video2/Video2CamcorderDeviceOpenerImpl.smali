.class public final Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;
.super Ljava/lang/Object;
.source "Video2CamcorderDeviceOpenerImpl.java"

# interfaces
.implements Lcom/android/camera/module/video2/Video2CamcorderDeviceOpener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final aspectRatio:Lcom/android/camera/util/AspectRatio;

.field private final bottomBarUICallback:Lcom/android/camera/module/BottomBarUICallback;

.field private final camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

.field private final camcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

.field private final camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManagerV2;

.field private final cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final concurrentStateCaptureRate:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final focusController:Lcom/android/camera/ui/focus/FocusController;

.field private final focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private final locationManager:Lcom/android/camera/location/LocationProvider;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

.field private final observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private final previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

.field private final video2HardwareSpec$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI91GN4P3NC5P6AKRGCLHJM___:Lcom/google/android/apps/camera/inject/app/SystemServicesModule;

.field private final video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field private final video2Settings:Lcom/android/camera/module/video2/Video2Settings;

.field private final video2Sound:Lcom/android/camera/module/video2/Video2Sound;

.field private final videoBottomBarUISpecProviderFactory:Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;

.field private final videoFileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

.field private final videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

.field private final videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

.field private final videoSnapshotSizePicker:Lcom/android/camera/module/video2/VideoSnapshotSizePicker;

.field private final viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

.field private final whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "Vid2CdrDevOpener"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/device/CameraDeviceManagerV2;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/module/FocusPointNormalizer;Ljava/util/concurrent/Executor;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/location/LocationProvider;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/ui/PreviewOverlay;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/module/video2/VideoSnapshotSizePicker;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/module/video2/Video2Sound;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/module/BottomBarUICallback;",
            "Lcom/android/camera/camcorder/CamcorderDeviceCallback;",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/android/camera/device/CameraDeviceManagerV2;",
            "Lcom/android/camera/settings/CameraFacingSetting;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/ui/focus/FocusController;",
            "Lcom/android/camera/module/FocusPointNormalizer;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/camcorder/MediaStorageCallback;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/data/PhotoItemFactory;",
            "Lcom/android/camera/ui/PreviewOverlay;",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            "Lcom/android/camera/data/VideoItemFactory;",
            "Lcom/android/camera/module/video2/VideoSnapshotSizePicker;",
            "Lcom/android/camera/module/video2/Video2FileSaver;",
            "Lcom/google/android/apps/camera/inject/app/SystemServicesModule;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            "Lcom/android/camera/module/video2/Video2Settings;",
            "Lcom/android/camera/module/video2/Video2Sound;",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;",
            "Lcom/android/camera/data/VideoRotationMetadataLoader;",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lcom/android/camera/util/AspectRatio;->of16x9()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 155
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 156
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 157
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->bottomBarUICallback:Lcom/android/camera/module/BottomBarUICallback;

    .line 158
    iput-object p4, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    .line 159
    iput-object p5, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 160
    iput-object p6, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManagerV2;

    .line 161
    iput-object p7, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    .line 162
    iput-object p8, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 163
    iput-object p9, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 164
    iput-object p10, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    .line 165
    iput-object p11, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 166
    iput-object p12, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 167
    iput-object p13, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->locationManager:Lcom/android/camera/location/LocationProvider;

    .line 168
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 169
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->concurrentStateCaptureRate:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 170
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;

    .line 171
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 172
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 173
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 174
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 175
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    .line 176
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 177
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoSnapshotSizePicker:Lcom/android/camera/module/video2/VideoSnapshotSizePicker;

    .line 178
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoFileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    .line 179
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2HardwareSpec$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI91GN4P3NC5P6AKRGCLHJM___:Lcom/google/android/apps/camera/inject/app/SystemServicesModule;

    .line 180
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 181
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 182
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    .line 183
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 184
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 185
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoBottomBarUISpecProviderFactory:Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;

    .line 186
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    .line 187
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    .line 188
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 189
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 190
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 191
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 192
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 193
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/camcorder/CamcorderDeviceCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF691M2RB3DTP68PBI8HINCQB3CL7N0PBECLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UR31F5NNAT1F9TP6IPBEEHGN8QBFDP6M2RJ1CTIN4EO_(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/burst/OrientationLockController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/data/PhotoItemFactory;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/PreviewOverlay;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/util/activity/ScreenOnController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/data/VideoItemFactory;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2FileSaver;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoFileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    return-object v0
.end method

.method static synthetic access$1700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF691M2RB3DTP68PBI8HINCQB3CL7N0PBECLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9FEPKM8PBF68NLCQB4CLNJ4J3FCTJMASHR(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2Sound;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/viewfinder/Viewfinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2Settings;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/data/VideoRotationMetadataLoader;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->focusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/FocusPointNormalizer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF691M2RB3DTP68PBI8HINCQB3CL7N0PBECLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP31EHGIUJ3FCDGMOHJ9DHMN6T3ID5O48OBKC50M8OBGEHIN4EO_(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    return-object v0
.end method


# virtual methods
.method public final openCamcorderDevice(Lcom/android/camera/module/video2/Video2ModuleUI;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    const-string v3, "openCamcorderDevice"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    .line 203
    invoke-virtual {v2}, Lcom/android/camera/settings/CameraFacingSetting;->getCameraFacingAllowingModeSwitch()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v33

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, v33

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v11

    .line 206
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v12

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManagerV2;

    new-instance v3, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12, v11}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$1;-><init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/apps/camera/device/CameraId;)V

    invoke-interface {v2, v11, v3}, Lcom/android/camera/device/CameraDeviceManagerV2;->open(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 251
    invoke-interface {v2, v11}, Lcom/android/camera/camcorder/CamcorderManager;->getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v32

    .line 252
    invoke-virtual/range {v32 .. v32}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CamcorderCharacteristics is not available."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 465
    :goto_0
    return-object v2

    .line 258
    :cond_0
    invoke-virtual/range {v32 .. v32}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 260
    invoke-virtual {v5}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v10

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->concurrentStateCaptureRate:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    const/4 v4, 0x0

    .line 266
    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v5, v2, v4}, Lcom/android/camera/module/video2/Video2Settings;->getResolutionSetting(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/camcorder/CamcorderCaptureRate;Z)Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v6

    .line 271
    sget-object v3, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x12

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Video Resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v5, v2, v6}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isVideoResolutionSupported(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 275
    sget-object v3, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x29

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Fallback to 30 FPS. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is not supported."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v4, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 280
    :goto_1
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xe

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Capture Rate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v2, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    invoke-direct {v2, v10, v3}, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 289
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->selectViewfinderSize(Lcom/android/camera/util/AspectRatio;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/util/Size;

    move-result-object v34

    .line 291
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xe

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Preview Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v24

    .line 296
    invoke-virtual {v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const/16 v2, 0x100

    .line 298
    invoke-interface {v10, v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    .line 300
    invoke-static {v4, v6, v2}, Lcom/android/camera/module/video2/VideoSnapshotSizePicker;->chooseVideoSnapshotSize(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Ljava/util/List;)Lcom/google/common/base/Optional;

    move-result-object v24

    .line 302
    invoke-virtual/range {v24 .. v24}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xf

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Snapshot Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    new-instance v36, Lcom/android/camera/module/video2/Video2OrientationCalculator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v10, v2}, Lcom/android/camera/module/video2/Video2OrientationCalculator;-><init>(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/burst/OrientationLockController;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->videoBottomBarUISpecProviderFactory:Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->bottomBarUICallback:Lcom/android/camera/module/BottomBarUICallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2HardwareSpec$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI91GN4P3NC5P6AKRGCLHJM___:Lcom/google/android/apps/camera/inject/app/SystemServicesModule;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 320
    invoke-virtual/range {v24 .. v24}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v9

    .line 313
    invoke-interface/range {v2 .. v9}, Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;->getProvider$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUGJFEHQ6URA2C5P5AIA3C5M6OOJ1CDLJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP46OBGEHQN4PAIC5Q6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GR8C5P62ORKCLP6ISRKD5HN6EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBFA9IN6RRCELQ6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF69462SJ4ETGN4PAJE1IM6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCIJCLQ78QBECTPJMMH99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGJFEHQ6URA2C5P5AIAJE1IM6K3IDTR6IP35E8TG____(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;Z)Lcom/android/camera/ui/BottomBarUISpecProvider;

    move-result-object v3

    .line 1174
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2ModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraAppUI;->showAccessibilityAffordances()V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2HardwareSpec$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI91GN4P3NC5P6AKRGCLHJM___:Lcom/google/android/apps/camera/inject/app/SystemServicesModule;

    .line 327
    invoke-virtual {v7}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule;->isFlashSupported()Z

    move-result v7

    .line 326
    invoke-virtual {v2, v4, v6, v7}, Lcom/android/camera/module/video2/Video2Settings;->isTorchOn(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Z)Z

    move-result v2

    .line 328
    sget-object v7, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Torch Enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v19, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 331
    new-instance v20, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 332
    new-instance v22, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 333
    invoke-static {v2, v7}, Lcom/google/android/apps/camera/aaa/FocusPoint;->at(FF)Lcom/google/android/apps/camera/aaa/FocusPoint;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v23

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    invoke-virtual {v2}, Lcom/android/camera/module/video2/Video2Settings;->shouldRecordLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->locationManager:Lcom/android/camera/location/LocationProvider;

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v23

    .line 341
    :cond_2
    const/4 v2, 0x0

    .line 342
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v7}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 343
    invoke-virtual {v7}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 344
    invoke-virtual {v7}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 345
    invoke-virtual {v7}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 346
    :cond_3
    const/4 v2, 0x1

    .line 348
    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->isSlowMotion()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 349
    const/16 v25, 0x0

    .line 352
    :goto_2
    const/16 v27, 0x0

    .line 354
    invoke-interface {v10}, Lcom/android/camera/one/OneCameraCharacteristics;->isVideoStabilizationSupported()Z

    move-result v2

    .line 355
    if-eqz v2, :cond_5

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    invoke-virtual {v2}, Lcom/android/camera/module/video2/Video2Settings;->isVideoStabilizationEnabled()Z

    move-result v27

    .line 358
    :cond_5
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x22

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Video Stabilization Enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/android/camera/module/video2/Video2Settings;->isH265EncodingEnabled()Z

    .line 361
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "H.265 enabled: false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v26, 0x0

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v33

    if-ne v0, v2, :cond_7

    .line 366
    const/16 v26, 0x1

    .line 369
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 370
    invoke-virtual {v2, v4, v6}, Lcom/android/camera/module/video2/Video2Settings;->getMaxRecordingDurationSeconds(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)I

    move-result v29

    .line 372
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Max Recording Duration (Seconds): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 374
    invoke-virtual {v2, v4, v6}, Lcom/android/camera/module/video2/Video2Settings;->getMaxTorchRecordingDurationSeconds(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)I

    move-result v30

    .line 376
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x33

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Max Torch Recording Duration (Seconds): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getAeLockProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v17

    .line 380
    sget-object v2, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->TAG:Ljava/lang/String;

    const-string v7, "issue an openCamcorder request."

    invoke-static {v2, v7}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 383
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    .line 389
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 391
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 394
    invoke-virtual {v2}, Lcom/android/camera/settings/WhiteBalanceSetting;->getUnderlyingProperty()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v18

    .line 397
    invoke-virtual/range {v36 .. v36}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->getOrientationObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v21

    const/16 v28, 0x0

    .line 407
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v31

    move-object v8, v4

    move-object v10, v6

    .line 383
    invoke-interface/range {v7 .. v31}, Lcom/android/camera/camcorder/CamcorderManager;->openCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZIILcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 434
    :goto_3
    new-instance v7, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v6

    move-object v11, v5

    move-object/from16 v12, v36

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$2;-><init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/module/video2/Video2OrientationCalculator;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v2, v7, v5}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 465
    new-instance v23, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;

    move-object/from16 v24, p0

    move-object/from16 v25, v17

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v32

    move-object/from16 v29, v6

    move-object/from16 v30, v19

    move-object/from16 v31, v20

    move-object/from16 v32, v22

    move-object/from16 v35, p1

    invoke-direct/range {v23 .. v36}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;-><init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/BottomBarUISpecProvider;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/common/base/Optional;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/video2/Video2OrientationCalculator;)V

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    goto/16 :goto_0

    .line 409
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    .line 415
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->mediaStorageCallback:Lcom/android/camera/camcorder/MediaStorageCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 417
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 420
    invoke-virtual {v2}, Lcom/android/camera/settings/WhiteBalanceSetting;->getUnderlyingProperty()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v18

    .line 423
    invoke-virtual/range {v36 .. v36}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->getOrientationObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v21

    const/16 v28, 0x0

    move-object v8, v4

    move-object v10, v6

    .line 409
    invoke-interface/range {v7 .. v30}, Lcom/android/camera/camcorder/CamcorderManager;->openHfrCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA955666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZII)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    goto :goto_3

    :cond_9
    move/from16 v25, v2

    goto/16 :goto_2

    :cond_a
    move-object v4, v2

    goto/16 :goto_1
.end method
