.class final Lcom/android/camera/app/CameraActivityControllerImpl;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/camera/app/AppController;
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnBackPressed;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnConfigurationChanged;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyDown;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyUp;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnNewIntent;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnContextItemSelected;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreate;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateContextMenu;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateOptionsMenu;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnDestroy;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnOptionsItemSelected;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPause;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPrepareOptionsMenu;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnResume;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final DOUBLE_TWIST_VIBRATE_PATTERN:[J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aboveFilmstripControlLayout:Landroid/widget/FrameLayout;

.field private final accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

.field private actionBar:Landroid/app/ActionBar;

.field private actionBarMenu:Landroid/view/Menu;

.field private final activityContext:Landroid/content/Context;

.field private final activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

.field private final activityLayout:Lcom/google/android/apps/camera/async/UiObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final activityResources:Landroid/content/res/Resources;

.field private final activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

.field private final activityWindow:Landroid/view/Window;

.field private final activityWindowManager:Landroid/view/WindowManager;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final appUpgrader:Lcom/android/camera/settings/AppUpgrader;

.field private final applicationContext:Landroid/content/Context;

.field private final burstFacade:Lcom/android/camera/burst/BurstFacade;

.field private buttonManager:Lcom/android/camera/ui/ButtonManager;

.field private final camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

.field private final cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;

.field private cameraActivityUi:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

.field private final cameraController:Lcom/android/camera/app/LegacyCameraController;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private final cameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

.field private final cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

.field private cameraFatalError:Z

.field private final cameraIdleListener:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private cameraIdleListenerHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private final cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

.field private cameraUi:Lcom/android/camera/ui/views/CameraUi;

.field private final cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

.field private captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

.field private final captureIndicatorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;"
        }
    .end annotation
.end field

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

.field private final checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private currentMode:Lcom/android/camera/util/CameraMode;

.field private currentModeIndex:I

.field private currentModule:Lcom/android/camera/module/ModuleController;

.field private dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private final dataAdapterListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

.field private doubleTwistSensor:Landroid/hardware/Sensor;

.field private doubleTwistSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

.field private filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

.field private filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

.field private filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

.field private filmstripCoversPreview:Z

.field private final filmstripEnterTimeout:Ljava/lang/Runnable;

.field private filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

.field private final filmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

.field private final filmstripListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS23DTN78PBEEH862RJ5DGI4OQBJEHIMSPBI7C______:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

.field private filmstripViewController:Lcom/android/camera/filmstrip/FilmstripViewController;

.field private filmstripVisible:Z

.field private final flags:Lcom/android/camera/util/flags/Flags;

.field private forceModuleReload:Z

.field private fragmentManager:Landroid/app/FragmentManager;

.field private galleryIntent:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private glideManager:Lcom/android/camera/data/GlideFilmstripManager;

.field private final indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorUpdater:Ljava/util/concurrent/Executor;

.field private final instrumentation:Lcom/android/camera/stats/Instrumentation;

.field private final intent:Landroid/content/Intent;

.field private final intentHandler:Lcom/android/camera/util/activity/IntentHandler;

.field private final intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

.field private isColdStart:Z

.field private isInitialized:Z

.field private isPreviewStopTimeoutExpired:Z

.field private isPreviewStoppedFromOverlay:Z

.field private final isSecureCamera:Z

.field private isStopped:Z

.field private lastLayoutOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final localFilmstripDataAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

.field private localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

.field private final locationManager:Lcom/android/camera/location/LocationProvider;

.field private final mainHandler:Landroid/os/Handler;

.field private final mainLooper:Landroid/os/Looper;

.field private final mainThreadExecutor:Lcom/google/android/apps/camera/async/MainThread;

.field private final memoryQuery:Lcom/android/camera/memory/MemoryQuery;

.field private final metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

.field private final metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

.field private final moduleManager:Lcom/android/camera/module/ModuleManager;

.field private final myFilmstripBottomControlListener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

.field private final nfcInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nfcPushUris:[Landroid/net/Uri;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private openFilmstripOnLaunch:Z

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private overrideNextResumeTransition:Z

.field private panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

.field private final pauseAfterFilmstripEnter:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

.field private pendingDeletion:Z

.field private photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private final photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

.field private final preInitLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private preloader:Lcom/android/camera/widget/Preloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/widget/Preloader",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private final previewAreaRectProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private resetToPreviewOnResume:Z

.field private final screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final settings:Lcom/android/camera/settings/Settings;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;

.field private shouldHideCover:Z

.field private shouldStopPreviewForOverlay:Z

.field private shutterButtonClickEnabledCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private startCurrentModuleOnResume:Z

.field private final storage:Lcom/android/camera/storage/Storage;

.field private toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

.field private final toyboxDrawerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final uiControllerInitializer:Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;

.field private final uiWirer:Lcom/android/camera/ui/wirers/UiWirer;

.field private videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

.field private final viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const-string v0, "CameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    .line 255
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->DOUBLE_TWIST_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x96
        0x4b
        0x96
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/Window;Landroid/content/ContentResolver;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/android/camera/util/activity/IntentHandler;Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/google/android/apps/camera/async/MainThread;Landroid/view/WindowManager;Lcom/android/camera/module/ModuleManager;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/util/activity/SysUiFlagApplier;ZLcom/android/camera/burst/OrientationLockController;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/app/LegacyCameraController;Lcom/android/camera/memory/MemoryQuery;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/Settings;Lcom/android/camera/storage/Storage;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/views/CameraUi;Landroid/app/ActionBar;Ldagger/Lazy;Lcom/android/camera/settings/AppUpgrader;Lcom/android/camera/error/FatalErrorHandler;Lcom/google/android/apps/camera/async/UiObservable;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/util/concurrent/Executor;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/util/AccessibilityUtil;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/util/activity/IntentLauncher;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;Ljavax/inject/Provider;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/google/android/apps/camera/inject/activity/ActivityServices;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;Lcom/android/camera/stats/CameraActivitySession;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/CameraFacingStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;Lcom/android/camera/ui/wirers/UiWirer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/module/PreviewTransformCalculator;Landroid/content/Intent;Lcom/android/camera/util/flags/Flags;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Landroid/view/Window;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/LayoutInflater;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/util/activity/IntentHandler;",
            "Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            "Landroid/app/Activity;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Landroid/view/WindowManager;",
            "Lcom/android/camera/module/ModuleManager;",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            "Lcom/android/camera/util/activity/SysUiFlagApplier;",
            "Z",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/one/OneCameraOpener;",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            "Lcom/android/camera/app/LegacyCameraController;",
            "Lcom/android/camera/memory/MemoryQuery;",
            "Lcom/android/camera/device/CameraDeviceManager;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/settings/Settings;",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            "Lcom/android/camera/ui/views/CameraUi;",
            "Landroid/app/ActionBar;",
            "Ldagger/Lazy",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/android/camera/settings/AppUpgrader;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/android/camera/util/AccessibilityUtil;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/util/activity/IntentLauncher;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            "Lcom/android/camera/data/PhotoItemFactory;",
            "Lcom/android/camera/data/VideoItemFactory;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            ">;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            "Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;",
            "Lcom/android/camera/stats/CameraActivitySession;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            "Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            "Landroid/content/Intent;",
            "Lcom/android/camera/util/flags/Flags;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 300
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->nfcInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->nfcPushUris:[Landroid/net/Uri;

    .line 368
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->forceModuleReload:Z

    .line 369
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFatalError:Z

    .line 370
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripCoversPreview:Z

    .line 372
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    .line 374
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStopTimeoutExpired:Z

    .line 380
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    .line 384
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->pendingDeletion:Z

    .line 385
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    .line 386
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isInitialized:Z

    .line 398
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldHideCover:Z

    .line 402
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->overrideNextResumeTransition:Z

    .line 1802
    new-instance v2, Lcom/android/camera/app/LegacyCameraProviderModule;

    invoke-direct {v2, p0}, Lcom/android/camera/app/LegacyCameraProviderModule;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->myFilmstripBottomControlListener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    .line 2094
    new-instance v2, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$12;

    invoke-direct {v3, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$12;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-direct {v2, v3}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;-><init>(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapterListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 2126
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$13;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$13;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS23DTN78PBEEH862RJ5DGI4OQBJEHIMSPBI7C______:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    .line 2367
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$14;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$14;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripEnterTimeout:Ljava/lang/Runnable;

    .line 2385
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$15;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$15;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListener:Lcom/google/android/apps/camera/async/Updatable;

    .line 2396
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$16;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$16;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    .line 2459
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$18;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$18;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 2738
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$20;

    invoke-direct {v2, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$20;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    .line 480
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    .line 481
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    .line 482
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    .line 483
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Window;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityWindow:Landroid/view/Window;

    .line 484
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 485
    invoke-static/range {p14 .. p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/MainThread;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainThreadExecutor:Lcom/google/android/apps/camera/async/MainThread;

    .line 486
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    .line 487
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainHandler:Landroid/os/Handler;

    .line 488
    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainLooper:Landroid/os/Looper;

    .line 489
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/IntentHandler;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    .line 490
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    .line 491
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityWindowManager:Landroid/view/WindowManager;

    .line 492
    invoke-virtual/range {p11 .. p11}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/FragmentManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fragmentManager:Landroid/app/FragmentManager;

    .line 493
    invoke-static/range {p18 .. p18}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/ScreenOnController;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    .line 494
    invoke-static/range {p19 .. p19}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-static/range {p16 .. p16}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/ModuleManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->moduleManager:Lcom/android/camera/module/ModuleManager;

    .line 496
    invoke-static/range {p17 .. p17}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    .line 497
    invoke-static/range {p12 .. p12}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/lifetime/ActivityLifetime;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 498
    invoke-static/range {p10 .. p10}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    .line 499
    invoke-static/range {p13 .. p13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/ActivityFinishWithReason;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    .line 500
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    .line 501
    invoke-static/range {p21 .. p21}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/OrientationLockController;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 502
    invoke-static/range {p22 .. p22}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 503
    invoke-static/range {p23 .. p23}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static/range {p25 .. p25}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/app/LegacyCameraController;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    .line 505
    invoke-static/range {p48 .. p48}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/AccessibilityUtil;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

    .line 507
    invoke-static/range {p26 .. p26}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/memory/MemoryQuery;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->memoryQuery:Lcom/android/camera/memory/MemoryQuery;

    .line 508
    invoke-static/range {p27 .. p27}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/device/CameraDeviceManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 509
    invoke-static/range {p28 .. p28}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/location/LocationProvider;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->locationManager:Lcom/android/camera/location/LocationProvider;

    .line 510
    invoke-static/range {p29 .. p29}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/settings/SettingsManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 511
    invoke-static/range {p30 .. p30}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/settings/Settings;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settings:Lcom/android/camera/settings/Settings;

    .line 512
    invoke-static/range {p31 .. p31}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/Storage;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->storage:Lcom/android/camera/storage/Storage;

    .line 513
    invoke-static/range {p32 .. p32}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CaptureLayoutHelper;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 514
    invoke-static/range {p34 .. p34}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 515
    invoke-static/range {p33 .. p33}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/session/CaptureSessionManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 516
    invoke-static/range {p35 .. p35}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/viewfinder/Viewfinder;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 517
    invoke-static/range {p39 .. p39}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/settings/AppUpgrader;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->appUpgrader:Lcom/android/camera/settings/AppUpgrader;

    .line 518
    invoke-static/range {p40 .. p40}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/error/FatalErrorHandler;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 519
    invoke-static/range {p41 .. p41}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/UiObservable;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 520
    invoke-static/range {p42 .. p42}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Lifetime;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->preInitLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 521
    invoke-static/range {p43 .. p43}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static/range {p45 .. p45}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/cache/SingleKeyCache;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    .line 523
    invoke-static/range {p46 .. p46}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->indicatorUpdater:Ljava/util/concurrent/Executor;

    .line 524
    invoke-static/range {p47 .. p47}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camcorder/CamcorderManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 525
    invoke-static/range {p37 .. p37}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->actionBar:Landroid/app/ActionBar;

    .line 526
    invoke-static/range {p36 .. p36}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/views/CameraUi;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    .line 527
    invoke-static/range {p38 .. p38}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/Lazy;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraActivityUi:Ldagger/Lazy;

    .line 528
    invoke-static/range {p64 .. p64}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/CameraUiStatechart;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    .line 529
    invoke-static/range {p65 .. p65}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/CaptureStatechart;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    .line 530
    invoke-static/range {p66 .. p66}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/CameraFacingStatechart;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    .line 531
    invoke-static/range {p68 .. p68}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->uiControllerInitializer:Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;

    .line 532
    invoke-static/range {p69 .. p69}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/wirers/UiWirer;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->uiWirer:Lcom/android/camera/ui/wirers/UiWirer;

    .line 533
    invoke-static/range {p67 .. p67}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    .line 534
    invoke-static/range {p24 .. p24}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstFacade;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 535
    invoke-static/range {p49 .. p49}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/ApiHelper;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 536
    invoke-static/range {p50 .. p50}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/IntentLauncher;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

    .line 537
    invoke-static/range {p51 .. p51}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/processing/ProcessingServiceManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 538
    invoke-static/range {p52 .. p52}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/GlideFilmstripManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 539
    invoke-static/range {p53 .. p53}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/PhotoItemFactory;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 540
    invoke-static/range {p54 .. p54}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/VideoItemFactory;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 541
    invoke-static/range {p55 .. p55}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/inject/Provider;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    .line 542
    invoke-static/range {p56 .. p56}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 543
    invoke-static/range {p58 .. p58}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/trace/Trace;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 544
    invoke-static/range {p59 .. p59}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/performance/MetricBuilder;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

    .line 545
    invoke-static/range {p57 .. p57}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 546
    move-object/from16 v0, p60

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    .line 547
    move-object/from16 v0, p61

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;

    .line 548
    invoke-static/range {p62 .. p62}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/inject/Provider;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 549
    invoke-static/range {p63 .. p63}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/inject/Provider;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->toyboxDrawerControllerProvider:Ljavax/inject/Provider;

    .line 550
    invoke-static/range {p70 .. p70}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Observable;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->previewAreaRectProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 551
    move-object/from16 v0, p71

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 552
    move-object/from16 v0, p72

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intent:Landroid/content/Intent;

    .line 553
    const-string v2, "sensor"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sensorManager:Landroid/hardware/SensorManager;

    .line 554
    const-string v2, "open_filmstrip"

    const/4 v3, 0x0

    move-object/from16 v0, p72

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->openFilmstripOnLaunch:Z

    .line 555
    move-object/from16 v0, p73

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->flags:Lcom/android/camera/util/flags/Flags;

    .line 557
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p11

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 558
    new-instance v2, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    const-wide/16 v4, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p44

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->pauseAfterFilmstripEnter:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/CameraAppUI;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/CameraActivitySession;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/google/android/apps/camera/inject/app/AndroidServices;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    return-object v0
.end method

.method static synthetic access$1500()[J
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->DOUBLE_TWIST_VIBRATE_PATTERN:[J

    return-object v0
.end method

.method static synthetic access$1600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    return v0
.end method

.method static synthetic access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/app/CameraActivityControllerImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->startCurrentModuleOnResume:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/app/CameraActivityControllerImpl;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->fileNameFromAdapterAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/app/CameraActivityControllerImpl;I)F
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->fileAgeFromAdapterAtIndex(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->launchEditor(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->launchTinyPlanetEditor(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripViewController:Lcom/android/camera/filmstrip/FilmstripViewController;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/app/CameraActivityControllerImpl;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->showDetailsDialog(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/app/CameraActivityControllerImpl;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->removeItemAt(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/module/ModuleController;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateBottomControlsByData(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->aboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/cache/SingleKeyCache;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateCaptureIndicatorWithFirstFilmstripItem()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateFilmstripBottomBarVisibility()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->cancelPreviewStop()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/app/CameraActivityControllerImpl;Z)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->setFilmstripCoversPreview(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->restartCameraWhenLeavingOverlay()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->fillTemporarySessions()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/app/CameraActivityControllerImpl;)I
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->currentUserInterfaceMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->registerDoubleTwistGestureListener()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/app/CameraActivityControllerImpl;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateUiByData(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->unregisterDoubleTwistGestureListener()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->stopPreviewWhenEnteringFilmstrip()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainThreadExecutor:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/widget/Preloader;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->preloader:Lcom/android/camera/widget/Preloader;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStopTimeoutExpired:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStopTimeoutExpired:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/memory/MemoryQuery;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->memoryQuery:Lcom/android/camera/memory/MemoryQuery;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/burst/BurstFacade;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/google/android/apps/camera/async/Updatable;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListener:Lcom/google/android/apps/camera/async/Updatable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->stopPreviewForOverlay()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/app/CameraActivityControllerImpl;)[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->nfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->storage:Lcom/android/camera/storage/Storage;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/GlideFilmstripManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/VideoItemFactory;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/PhotoItemFactory;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripController;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/app/CameraActivityControllerImpl;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateSessionProgress(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateSessionProgressText(Lcom/android/camera/ui/UiString;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/camera/app/CameraActivityControllerImpl;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/CameraActivityControllerImpl;->indicateCapture(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->showProcessError(Lcom/android/camera/ui/UiString;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFatalError:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFatalError:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/Instrumentation;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripFragment;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/app/CameraActivityControllerImpl;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->openFilmstripOnLaunch:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->openFilmstripOnLaunch:Z

    return v0
.end method

.method private final cancelPreviewStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2360
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2361
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelPreviewStop"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    .line 2363
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStopTimeoutExpired:Z

    .line 2364
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->pauseAfterFilmstripEnter:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 2365
    return-void
.end method

.method private final closeModule(Lcom/android/camera/module/ModuleController;)V
    .locals 1

    .prologue
    .line 3036
    invoke-interface {p1}, Lcom/android/camera/module/ModuleController;->pause()V

    .line 3037
    invoke-interface {p1}, Lcom/android/camera/module/ModuleController;->stop()V

    .line 3038
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->clearModuleUI()V

    .line 3039
    return-void
.end method

.method private final currentUserInterfaceMode()I
    .locals 3

    .prologue
    .line 2952
    const/4 v0, 0x0

    .line 2953
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-ne v1, v2, :cond_0

    .line 2954
    const/4 v0, 0x1

    .line 2956
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne v1, v2, :cond_1

    .line 2957
    const/16 v0, 0x8

    .line 2959
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->REFOCUS:Lcom/android/camera/util/CameraMode;

    if-ne v1, v2, :cond_2

    .line 2960
    const/4 v0, 0x6

    .line 2962
    :cond_2
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->PHOTOSPHERE:Lcom/android/camera/util/CameraMode;

    if-ne v1, v2, :cond_3

    .line 2963
    const/4 v0, 0x5

    .line 2965
    :cond_3
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->PANORAMA:Lcom/android/camera/util/CameraMode;

    if-ne v1, v2, :cond_4

    .line 2966
    const/16 v0, 0xb

    .line 2968
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-eqz v1, :cond_5

    .line 2969
    const/4 v0, 0x2

    .line 2971
    :cond_5
    return v0
.end method

.method private final fileAgeFromAdapterAtIndex(I)F
    .locals 6

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2005
    if-nez v0, :cond_0

    .line 2006
    const/4 v0, 0x0

    .line 2010
    :goto_0
    return v0

    .line 2009
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2010
    const v0, 0x3a83126f    # 0.001f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private final fileNameFromAdapterAtIndex(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 1995
    if-nez v0, :cond_0

    .line 1996
    const-string v0, ""

    .line 2000
    :goto_0
    return-object v0

    .line 1999
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final fillTemporarySessions()V
    .locals 2

    .prologue
    .line 2939
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    if-eqz v0, :cond_0

    .line 2945
    :goto_0
    return-void

    .line 15324
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 2944
    invoke-virtual {v0}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0
.end method

.method private final finishActivityWithIntentResult(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/util/activity/IntentHandler;->setResult(ILandroid/content/Intent;)V

    .line 3051
    const-string v0, "CameraActivityController: Intent completed with a valid result. Closing activity."

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->finishActivityWithReason(Ljava/lang/String;)V

    .line 3053
    return-void
.end method

.method private final getCameraMode()Lcom/android/camera/util/CameraMode;
    .locals 4

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-virtual {v0}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2792
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2793
    sget-object v0, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    .line 2819
    :cond_0
    :goto_0
    return-object v0

    .line 2794
    :cond_1
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2795
    sget-object v0, Lcom/android/camera/util/CameraMode;->VIDEO_INTENT:Lcom/android/camera/util/CameraMode;

    goto :goto_0

    .line 2796
    :cond_2
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2797
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2799
    :cond_3
    sget-object v0, Lcom/android/camera/util/CameraMode;->CAPTURE_INTENT:Lcom/android/camera/util/CameraMode;

    goto :goto_0

    .line 2800
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isColdStart:Z

    if-nez v1, :cond_5

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 2801
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 2802
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2803
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2804
    :cond_5
    sget-object v0, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    .line 2810
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_user_selected_aspect_ratio"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2817
    :cond_6
    sget-object v0, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    goto :goto_0
.end method

.method private final declared-synchronized getGalleryIntent()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2861
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->galleryIntent:Lcom/google/common/base/Optional;

    if-nez v0, :cond_0

    .line 2862
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->galleryIntent:Lcom/google/common/base/Optional;

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->galleryIntent:Lcom/google/common/base/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getPreviewVisibility()I
    .locals 1

    .prologue
    .line 2850
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripCoversPreview:Z

    if-eqz v0, :cond_0

    .line 2851
    const/4 v0, 0x2

    .line 2853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final indicateCapture(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 2684
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-eqz v0, :cond_0

    .line 2713
    :goto_0
    return-void

    .line 2688
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/app/CameraActivityControllerImpl$19;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private final launchEditor(Lcom/android/camera/data/FilmstripItem;)V
    .locals 3

    .prologue
    .line 895
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 898
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 900
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    const v2, 0x7f0a01d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->launchActivityByIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private final launchTinyPlanetEditor(Lcom/android/camera/data/FilmstripItem;)V
    .locals 4

    .prologue
    .line 928
    new-instance v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {v1, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;-><init>(Lcom/android/camera/app/AppController;)V

    .line 929
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 930
    const-string v2, "uri"

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v2, "title"

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v1, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 933
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "tiny_planet"

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method private final modeRequestsV1Camera(Lcom/android/camera/util/CameraMode;)Z
    .locals 2

    .prologue
    .line 1289
    .line 13368
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    .line 1289
    invoke-virtual {p1, v0}, Lcom/android/camera/util/CameraMode;->getModeIndex(Landroid/content/res/Resources;)I

    move-result v0

    .line 1290
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->moduleManager:Lcom/android/camera/module/ModuleManager;

    invoke-interface {v1, v0}, Lcom/android/camera/module/ModuleManager;->getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DetailsDialog;->requestAppForCamera()Z

    move-result v0

    return v0
.end method

.method private final openModule(Lcom/android/camera/module/ModuleController;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2975
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-interface {p1, v0}, Lcom/android/camera/module/ModuleController;->hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V

    .line 15356
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    .line 2977
    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->hideAccessibilityAffordances()V

    .line 2978
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    if-nez v0, :cond_2

    .line 2979
    invoke-interface {p1}, Lcom/android/camera/module/ModuleController;->start()V

    .line 2980
    invoke-interface {p1}, Lcom/android/camera/module/ModuleController;->resume()V

    .line 2984
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shutterButtonClickEnabledCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shutterButtonClickEnabledCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 2986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shutterButtonClickEnabledCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 2989
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->currentUserInterfaceMode()I

    move-result v0

    .line 2992
    if-eq v0, v2, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2994
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2995
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    .line 2997
    invoke-virtual {v2}, Lcom/android/camera/ui/CameraAppUI;->getShutterButtonClickEnabledObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$22;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl$22;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;ILjava/util/concurrent/atomic/AtomicReference;)V

    .line 2996
    invoke-static {v2, v3}, Lcom/google/android/apps/camera/async/Observables;->addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 2995
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3024
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shutterButtonClickEnabledCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 3025
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shutterButtonClickEnabledCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 3031
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updatePreviewVisibility()V

    .line 3033
    :cond_2
    return-void

    .line 3027
    :cond_3
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    .line 3028
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->currentUserInterfaceMode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(II)V

    goto :goto_0
.end method

.method private final registerDoubleTwistGestureListener()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 821
    .line 8374
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 822
    const-string v1, "camera_double_twist_to_flip_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 824
    if-ne v0, v2, :cond_1

    .line 825
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Double twist gesture is enabled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Double twist gesture is disabled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final removeItemAt(I)V
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/FilmstripController;->removeItemAt(I)V

    .line 2717
    return-void
.end method

.method private final resetStartupSettingsForAllModules()V
    .locals 4

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->moduleManager:Lcom/android/camera/module/ModuleManager;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager;->getRegisteredModuleAgents()Ljava/util/List;

    move-result-object v0

    .line 3196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    .line 3198
    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21206
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3201
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_countdown_duration_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    return-void
.end method

.method private final restartCameraWhenLeavingOverlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2318
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2322
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    .line 2323
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    if-eqz v0, :cond_0

    .line 2324
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "restartPreviewWhenLeavingFilmstrip"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->create()Lcom/android/camera/stats/InstrumentationSession;

    .line 2335
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    .line 2336
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->setModuleFromMode(Lcom/android/camera/util/CameraMode;)V

    .line 2337
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    iget v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModeIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraAppUI;->resetBottomControls(Lcom/android/camera/module/ModuleController;I)V

    .line 2338
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->addShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 2339
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->openModule(Lcom/android/camera/module/ModuleController;)V

    .line 2341
    :cond_0
    return-void
.end method

.method private final setFilmstripCoversPreview(Z)V
    .locals 0

    .prologue
    .line 2823
    iput-boolean p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripCoversPreview:Z

    .line 2824
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updatePreviewVisibility()V

    .line 2825
    return-void
.end method

.method private final setModuleFromMode(Lcom/android/camera/util/CameraMode;)V
    .locals 7

    .prologue
    .line 3214
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 3216
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3217
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    .line 3218
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "setModuleFromMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->initialize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3265
    :cond_0
    :goto_0
    return-void

    .line 21368
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    .line 3222
    invoke-virtual {p1, v0}, Lcom/android/camera/util/CameraMode;->getModeIndex(Landroid/content/res/Resources;)I

    move-result v0

    .line 3223
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->moduleManager:Lcom/android/camera/module/ModuleManager;

    invoke-interface {v3, v0}, Lcom/android/camera/module/ModuleManager;->getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 3224
    if-eqz v0, :cond_0

    .line 3228
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->modeRequestsV1Camera(Lcom/android/camera/util/CameraMode;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3229
    sget-object v3, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Closing v1 Camera before using mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/app/LegacyCameraController;->closeCamera(Z)V

    .line 3233
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/DetailsDialog;->getModuleId()I

    move-result v3

    iput v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModeIndex:I

    .line 3234
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    .line 3239
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->createModule()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleController;

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    .line 3240
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, v3}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 3241
    sget-object v0, Lcom/android/camera/util/CameraMode;->REFOCUS:Lcom/android/camera/util/CameraMode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/camera/util/CameraMode;->REFOCUS:Lcom/android/camera/util/CameraMode;

    if-ne v2, v0, :cond_4

    .line 3245
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3247
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p0}, Lcom/android/camera/module/ModuleController;->init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V

    .line 3248
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne v0, v1, :cond_5

    .line 3249
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->setVideoMode()V

    .line 3251
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->isZoomSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setZoomEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3258
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO_HFR:Lcom/android/camera/util/CameraMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PANORAMA:Lcom/android/camera/util/CameraMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTOSPHERE:Lcom/android/camera/util/CameraMode;

    if-ne v0, v1, :cond_7

    .line 3261
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->unregisterDoubleTwistGestureListener()V

    goto/16 :goto_0

    .line 3252
    :catch_0
    move-exception v0

    .line 3253
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3263
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->registerDoubleTwistGestureListener()V

    goto/16 :goto_0

    .line 3252
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private final setupCameraFacingFromIntent()V
    .locals 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-virtual {v0}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/IntentHelper;->intentOverridesCameraFacing(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-virtual {v1}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/IntentHelper;->isIntentForFrontCamera(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/statecharts/StateBase;->setFrontCamera()V

    .line 586
    :cond_1
    if-nez v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    .line 590
    :cond_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v0}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final showDetailsDialog(I)V
    .locals 5

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 3176
    if-nez v0, :cond_1

    .line 3191
    :cond_0
    :goto_0
    return-void

    .line 3179
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMediaDetails()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 3180
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3183
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/MediaDetails;

    invoke-static {v1, v0}, Lcom/android/camera/ui/DetailsDialog;->create(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)Landroid/app/Dialog;

    move-result-object v0

    .line 3184
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3185
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    .line 3187
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->fileNameFromAdapterAtIndex(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 3190
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->fileAgeFromAdapterAtIndex(I)F

    move-result v4

    .line 3186
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    goto :goto_0
.end method

.method private final showProcessError(Lcom/android/camera/ui/UiString;)V
    .locals 2

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/camera/ui/UiString;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->showProgressError(Ljava/lang/CharSequence;)V

    .line 2428
    return-void
.end method

.method private final stopPreviewForOverlay()V
    .locals 2

    .prologue
    .line 2344
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2348
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    if-nez v0, :cond_0

    .line 2349
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreviewForOverlay"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    .line 2351
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->cancelPreviewStop()V

    .line 2352
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->closeModule(Lcom/android/camera/module/ModuleController;)V

    .line 2354
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->showViewfinderCover(Lcom/android/camera/util/CameraMode;)V

    .line 2355
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    invoke-virtual {v0}, Lcom/android/camera/device/CameraDeviceManager;->disconnectAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2357
    :cond_0
    return-void
.end method

.method private final stopPreviewWhenEnteringFilmstrip()V
    .locals 2

    .prologue
    .line 2302
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2304
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    if-nez v0, :cond_0

    .line 2306
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreviewWhenEnteringFilmstrip"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldStopPreviewForOverlay:Z

    .line 2309
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->pauseAfterFilmstripEnter:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripEnterTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2310
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListener:Lcom/google/android/apps/camera/async/Updatable;

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isIdle()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 2312
    :cond_0
    return-void
.end method

.method private final unregisterDoubleTwistGestureListener()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 840
    :cond_0
    return-void
.end method

.method private final updateBottomControlsByData(Lcom/android/camera/data/FilmstripItem;)V
    .locals 4

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes;->canEdit()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setEditButtonVisibility(Z)V

    .line 3121
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes;->canShare()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setShareButtonVisibility(Z)V

    .line 3122
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    .line 3123
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes;->canDelete()Z

    move-result v1

    .line 3122
    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setDeleteButtonVisibility(Z)V

    .line 3126
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes;->isRendering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3127
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMediaDetails()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 3128
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setDetailsButtonVisibility(Z)V

    .line 3135
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 19324
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 3136
    invoke-virtual {v1}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    .line 3138
    invoke-interface {v1, v0}, Lcom/android/camera/session/CaptureSessionManager;->hasErrorMessage(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3139
    invoke-interface {v1, v0}, Lcom/android/camera/session/CaptureSessionManager;->getErrorMessage(Landroid/net/Uri;)Lcom/android/camera/ui/UiString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->showProcessError(Lcom/android/camera/ui/UiString;)V

    .line 3162
    :goto_1
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->usePanoramaViewer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3163
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->PHOTO_SPHERE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 3170
    :goto_2
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/Metadata;->isPanorama360()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setTinyPlanetEnabled(Z)V

    .line 3171
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setViewerButtonState(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)V

    .line 3172
    return-void

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setDetailsButtonVisibility(Z)V

    goto :goto_0

    .line 3141
    :cond_1
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->hideProgressError()V

    .line 3142
    invoke-interface {v1, v0}, Lcom/android/camera/session/CaptureSessionManager;->getSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    .line 3144
    if-eqz v0, :cond_3

    .line 3145
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getProgress()I

    move-result v1

    .line 3147
    if-gez v1, :cond_2

    .line 19417
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->hideProgress()V

    goto :goto_1

    .line 3150
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getProgressMessage()Lcom/android/camera/ui/UiString;

    move-result-object v0

    .line 19421
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/camera/ui/UiString;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->setProgressText(Ljava/lang/CharSequence;)V

    .line 19422
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->hideProgressError()V

    .line 19423
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->showProgress()V

    .line 3151
    invoke-direct {p0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateSessionProgress(I)V

    goto :goto_1

    .line 20417
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->hideProgress()V

    goto :goto_1

    .line 3164
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->hasRgbzData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3165
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    goto :goto_2

    .line 3167
    :cond_5
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    goto :goto_2
.end method

.method private final updateCaptureIndicatorWithFirstFilmstripItem()V
    .locals 2

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->indicatorUpdater:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$11;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$11;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2090
    return-void
.end method

.method private final updateFilmstripBottomBarVisibility()V
    .locals 1

    .prologue
    .line 877
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 878
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 880
    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->hideControls()V

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->showControls()V

    goto :goto_0
.end method

.method private final updatePreviewRendering(I)V
    .locals 1

    .prologue
    .line 2842
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2843
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->pausePreviewRendering()V

    .line 2847
    :goto_0
    return-void

    .line 2845
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->resumePreviewRendering()V

    goto :goto_0
.end method

.method private final updatePreviewVisibility()V
    .locals 3

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    if-nez v0, :cond_0

    .line 2839
    :goto_0
    return-void

    .line 2835
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getPreviewVisibility()I

    move-result v0

    .line 2836
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    .line 15130
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 15131
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraAppUI;->setIndicatorBottomBarWrapperVisible(Z)V

    .line 2837
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updatePreviewRendering(I)V

    .line 2838
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v1, v0}, Lcom/android/camera/module/ModuleController;->onPreviewVisibilityChanged(I)V

    goto :goto_0

    .line 15133
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraAppUI;->setIndicatorBottomBarWrapperVisible(Z)V

    goto :goto_1
.end method

.method private final updateSessionProgress(I)V
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->setProgress(I)V

    .line 2432
    return-void
.end method

.method private final updateSessionProgressText(Lcom/android/camera/ui/UiString;)V
    .locals 2

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/camera/ui/UiString;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->setProgressText(Ljava/lang/CharSequence;)V

    .line 2436
    return-void
.end method

.method private final updateUiByData(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3072
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 3073
    if-nez v1, :cond_1

    .line 3074
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Current data ID not found."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16108
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v4}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setEditButtonVisibility(Z)V

    .line 16109
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v4}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setShareButtonVisibility(Z)V

    .line 16110
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v4}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setDeleteButtonVisibility(Z)V

    .line 16111
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v4}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setDetailsButtonVisibility(Z)V

    .line 16112
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->hideProgressError()V

    .line 16417
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->hideProgress()V

    .line 3101
    :cond_0
    :goto_0
    return-void

    .line 3081
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateBottomControlsByData(Lcom/android/camera/data/FilmstripItem;)V

    .line 3082
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updateFilmstripBottomBarVisibility()V

    .line 3085
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->updateBadgeByData(Lcom/android/camera/data/FilmstripItem;)V

    .line 17219
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    .line 3087
    if-eqz v0, :cond_2

    .line 3091
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v4}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setEditButtonVisibility(Z)V

    .line 3092
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v4}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setShareButtonVisibility(Z)V

    goto :goto_0

    .line 18056
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->nfcInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18439
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "NFC#init"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 18440
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 18441
    if-eqz v2, :cond_3

    .line 18445
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v5, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 18446
    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$17;

    invoke-direct {v3, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$17;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 18453
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 18446
    invoke-virtual {v2, v3, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 18455
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 18060
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 18061
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_4

    .line 18062
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->nfcPushUris:[Landroid/net/Uri;

    aput-object v0, v1, v4

    .line 3098
    :goto_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    goto :goto_0

    .line 18064
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->nfcPushUris:[Landroid/net/Uri;

    aput-object v5, v0, v4

    goto :goto_1
.end method


# virtual methods
.method public final addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1602
    return-void
.end method

.method public final finishActivityWithIntentCanceled()V
    .locals 2

    .prologue
    .line 1342
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->finishActivityWithIntentResult(ILandroid/content/Intent;)V

    .line 1343
    return-void
.end method

.method public final finishActivityWithIntentCompleted(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1337
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->finishActivityWithIntentResult(ILandroid/content/Intent;)V

    .line 1338
    return-void
.end method

.method public final finishActivityWithReason(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/activity/ActivityFinishWithReason;->finish(Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getActivityServices()Lcom/google/android/apps/camera/inject/activity/ActivityServices;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    return-object v0
.end method

.method public final getActivityWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityWindow:Landroid/view/Window;

    return-object v0
.end method

.method public final getActivityWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getButtonManager()Lcom/android/camera/ui/ButtonManager;
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->buttonManager:Lcom/android/camera/ui/ButtonManager;

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Lcom/android/camera/ui/ButtonManager;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ButtonManager;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/controller/CameraFacingStatechart;)V

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->buttonManager:Lcom/android/camera/ui/ButtonManager;

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->buttonManager:Lcom/android/camera/ui/ButtonManager;

    return-object v0
.end method

.method public final getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    return-object v0
.end method

.method public final getCameraFeatureConfig()Lcom/android/camera/one/v2/OneCameraFeatureConfig;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    return-object v0
.end method

.method public final getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    return-object v0
.end method

.method public final getCameraScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    invoke-virtual {v0}, Lcom/android/camera/app/LegacyCameraController;->getCurrentCameraId()Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCheckedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    return-object v0
.end method

.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public final getCurrentMode()Lcom/android/camera/util/CameraMode;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    return-object v0
.end method

.method public final getCurrentModuleController()Lcom/android/camera/module/ModuleController;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    return-object v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getLocationProvider()Lcom/android/camera/location/LocationProvider;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->locationManager:Lcom/android/camera/location/LocationProvider;

    return-object v0
.end method

.method public final getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getModuleScope()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->moduleManager:Lcom/android/camera/module/ModuleManager;

    iget v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModeIndex:I

    invoke-interface {v0, v1}, Lcom/android/camera/module/ModuleManager;->getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 1580
    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getScreenOnController()Lcom/android/camera/util/activity/ScreenOnController;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    return-object v0
.end method

.method public final getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    return-object v0
.end method

.method public final getSettings()Lcom/android/camera/settings/Settings;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settings:Lcom/android/camera/settings/Settings;

    return-object v0
.end method

.method public final getSettingsManager()Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method public final getWeakActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final initialize()Z
    .locals 23

    .prologue
    .line 565
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 566
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->isInitialized:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v2}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isVisibleLifetimeClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 567
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->isInitialized:Z

    .line 3595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "CameraActivityController#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 3596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

    const-string v3, "CameraActivityController#init"

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/debug/performance/MetricBuilder;->startMetric(Ljava/lang/String;J)Lcom/android/camera/debug/performance/Metric;

    move-result-object v22

    .line 3598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "CameraActivityUi#inflate"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraActivityUi:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/android/camera/ui/views/CameraActivityUi;

    .line 3600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "AppUpgrader#upgrade"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->appUpgrader:Lcom/android/camera/settings/AppUpgrader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/settings/AppUpgrader;->upgrade(Lcom/android/camera/settings/SettingsManager;)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->setDefaults(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/camcorder/CamcorderManager;)V

    .line 3603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "UiWirer#wire"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->uiWirer:Lcom/android/camera/ui/wirers/UiWirer;

    invoke-interface {v2}, Lcom/android/camera/ui/wirers/UiWirer;->wire()V

    .line 3605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "UiControllerInitializer#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->uiControllerInitializer:Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;

    invoke-interface {v2}, Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;->initialize()V

    .line 3608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "CameraController#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/camera/app/LegacyCameraController;->setCallbackReceiver(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 3610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    new-instance v3, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/app/LegacyCameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "FilmstripData#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->localFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 3616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V

    .line 3617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapterListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 3620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->fragmentManager:Landroid/app/FragmentManager;

    const v3, 0x7f1100df

    .line 3622
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    .line 3623
    new-instance v5, Lcom/android/camera/one/v2/lifecycle/StartTasks;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/lifecycle/StartTasks;-><init>(Lcom/android/camera/app/AppController;)V

    .line 3625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->initializeData()V

    .line 3626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getBottomPanelController()Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    .line 3627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripBadgeController()Lcom/android/camera/filmstrip/FilmstripBadgeController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    .line 3628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    .line 3630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "FilmstripUi#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    iget-object v7, v3, Lcom/android/camera/ui/views/CameraUi;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/filmstrip/FilmstripFragment;->initializeUi$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB99TH76PBIEPGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESI50R31F5B6IP35DT4MST35DPQ3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP31EHGIUJ3FCDGMOHJ9DHMN6T3ID5O48OBKC50M8OBGEHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRND5I6EPBK5T96UTBECHIM8L38ELMM4RJ1D5M5CQB5ESTIILG_(Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/one/v2/lifecycle/StartTasks;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/widget/RoundedThumbnailView;)V

    .line 3633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripViewController()Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripViewController:Lcom/android/camera/filmstrip/FilmstripViewController;

    .line 3636
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/camera/ui/views/CameraActivityUi;->filmstripContentLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->aboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    .line 3638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "Filmstrip#observers"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3639
    new-instance v2, Lcom/android/camera/data/FilmstripContentObserver;

    invoke-direct {v2}, Lcom/android/camera/data/FilmstripContentObserver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    .line 3640
    new-instance v2, Lcom/android/camera/data/FilmstripContentObserver;

    invoke-direct {v2}, Lcom/android/camera/data/FilmstripContentObserver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    .line 3642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "CameraAppUI#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    .line 3649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->toyboxDrawerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    .line 3650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->myFilmstripBottomControlListener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setListener(Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;)V

    .line 3651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-interface {v2, v3}, Lcom/android/camera/ui/viewfinder/Viewfinder;->setSurfaceDestroyedListener(Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;)V

    .line 3664
    new-instance v2, Lcom/android/camera/ui/CameraAppUI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    iget-object v4, v3, Lcom/android/camera/ui/views/CameraUi;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 3673
    invoke-virtual {v3}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityWindowManager:Landroid/view/WindowManager;

    .line 4731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-static {v3}, Lcom/android/camera/util/IntentHelper;->isCaptureIntent(Lcom/android/camera/util/activity/IntentHandler;)Z

    move-result v12

    .line 3675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->previewAreaRectProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v5, v21

    invoke-direct/range {v2 .. v20}, Lcom/android/camera/ui/CameraAppUI;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/util/AccessibilityUtil;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;ZLcom/android/camera/debug/trace/Trace;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/google/android/apps/camera/async/Observable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    .line 3685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraAppUI;->initialize(Lcom/android/camera/ui/views/CameraUi;)V

    .line 5324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 3689
    invoke-virtual {v2}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v2, v3}, Lcom/android/camera/session/CaptureSessionManager;->addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "PanoramaViewHelper#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3692
    new-instance v3, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;-><init>(Lcom/android/camera/app/AppController;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .line 3693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onCreate()V

    .line 3695
    new-instance v2, Lcom/android/camera/widget/Preloader;

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/widget/Preloader;-><init>(ILcom/android/camera/widget/Preloader$ItemSource;Lcom/android/camera/widget/Preloader$ItemLoader;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->preloader:Lcom/android/camera/widget/Preloader;

    .line 3696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraAppUI;->getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS23DTN78PBEEH862RJ5DGI4OQBJEHIMSPBI7C______:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->setFilmstripListener$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8DNMST35DPQ50OBECLM28J39EDQ6ARJ5E8TIILG_(Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "Settings#config"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3699
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->isColdStart:Z

    .line 3702
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->resetStartupSettingsForAllModules()V

    .line 3703
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->setupCameraFacingFromIntent()V

    .line 3704
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getCameraMode()Lcom/android/camera/util/CameraMode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->setModuleFromMode(Lcom/android/camera/util/CameraMode;)V

    .line 3706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "CameraUi#prepareModuleUi"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/CameraAppUI;->prepareModuleUI(Lcom/android/camera/ui/views/CameraUi;Lcom/android/camera/filmstrip/FilmstripFragment;)V

    .line 3710
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    if-nez v2, :cond_0

    .line 5731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-static {v2}, Lcom/android/camera/util/IntentHelper;->isCaptureIntent(Lcom/android/camera/util/activity/IntentHandler;)Z

    move-result v2

    .line 3710
    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v2}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isVisibleLifetimeClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$2;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestLoad(Lcom/google/android/apps/camera/util/Callback;)V

    .line 3720
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "Advice#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3721
    invoke-static {}, Lcom/android/camera/advice/legacy/AdviceConfig;->instance()Lcom/android/camera/advice/legacy/AdviceConfig;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->flags:Lcom/android/camera/util/flags/Flags;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/advice/legacy/AdviceConfig;->init(Lcom/android/camera/util/flags/Flags;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/v2/OneCameraFeatureConfig;)V

    .line 3723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "MemoryQuery#runMemoryReport"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3724
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$3;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-static {v2}, Lcom/android/camera/util/IntentHelper;->isCaptureIntent(Lcom/android/camera/util/activity/IntentHandler;)Z

    move-result v2

    .line 3738
    if-nez v2, :cond_1

    .line 7219
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    .line 3739
    if-nez v2, :cond_1

    .line 3740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "CaptureIndicator#load"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-virtual {v2}, Lcom/android/camera/storage/cache/SingleKeyCache;->get()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 3743
    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 3744
    :goto_0
    new-instance v4, Lcom/android/camera/app/CameraActivityControllerImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$4;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-static {v3, v4, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 3786
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "ActivityUi#initCallbacks"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    .line 3788
    invoke-virtual {v2}, Lcom/android/camera/ui/views/CameraUi;->getPhotoVideoButton()Lcom/android/camera/ui/PrimaryShutterButton;

    move-result-object v2

    new-instance v3, Lcom/android/camera/app/CameraActivityControllerImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$5;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 3789
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->setOnDrawListener(Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;)V

    .line 3802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "ActivityLifecycle#observe"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 3806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 3807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v2}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 3808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v2}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 3809
    invoke-interface/range {v22 .. v22}, Lcom/android/camera/debug/performance/Metric;->stop()V

    .line 7843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 7844
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 7845
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Double Twist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7846
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensor:Landroid/hardware/Sensor;

    goto :goto_1

    .line 3743
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainThreadExecutor:Lcom/google/android/apps/camera/async/MainThread;

    goto/16 :goto_0

    .line 7850
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_5

    .line 7851
    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$6;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->doubleTwistSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 3813
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->registerDoubleTwistGestureListener()V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;

    invoke-virtual {v2}, Lcom/android/camera/stats/CameraActivitySession;->recordTimeToCameraActivityInitialized()V

    .line 571
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl;->isInitialized:Z

    return v2
.end method

.method public final isSecureCamera()Z
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    return v0
.end method

.method public final isStopped()Z
    .locals 1

    .prologue
    .line 1224
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    return v0
.end method

.method public final launchActivityByIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    .line 1567
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1569
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/activity/IntentLauncher;->unlockAndStartChildActivity(Landroid/content/Intent;)V

    .line 1570
    return-void
.end method

.method public final lockOrientation()V
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 1665
    return-void
.end method

.method public final notifyNewMedia(Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 1746
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1748
    invoke-static {v0}, Lcom/android/camera/data/FilmstripItemUtils;->isMimeTypeImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    .line 1750
    if-nez v0, :cond_1

    .line 1751
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Can\'t find photo data in content resolver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    :goto_0
    return-void

    .line 1755
    :cond_0
    sget-object v1, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown new media with MIME type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", uri:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    :cond_1
    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$9;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$9;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/camera/data/FilmstripItem;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 1779
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/app/CameraActivityControllerImpl$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final onBackPressed()Z
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onBackPressed()Z

    move-result v0

    .line 1192
    if-nez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->onBackPressed()Z

    move-result v0

    .line 1196
    :cond_0
    return v0
.end method

.method public final onCameraDisabled(I)V
    .locals 3

    .prologue
    .line 1498
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Camera disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraDisabledFailure()V

    .line 1500
    return-void
.end method

.method public final onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1466
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    if-eqz v0, :cond_0

    .line 1471
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "received onCameraOpened but activity is stopped, closing Camera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/LegacyCameraController;->closeCamera(Z)V

    .line 1494
    :goto_0
    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->moduleManager:Lcom/android/camera/module/ModuleManager;

    iget v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModeIndex:I

    invoke-interface {v0, v1}, Lcom/android/camera/module/ModuleManager;->getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DetailsDialog;->requestAppForCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/LegacyCameraController;->closeCamera(Z)V

    .line 1479
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera opened but the module shouldn\'t be requesting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    if-eqz v0, :cond_2

    .line 15015
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 15016
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 15017
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1484
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :goto_1
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "invoking onChangeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onChangeCamera()V

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    sget-object v1, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error connecting to camera"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1487
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-interface {v1, v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1490
    :cond_2
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mCurrentModule null, not invoking onCameraAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onConfigurationChanged$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNK6RRECPKMETBIC5Q6IRRE7CKLC___()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->lastLayoutOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    if-eqz v1, :cond_0

    .line 1134
    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->lastLayoutOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 1135
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->lastLayoutOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    invoke-virtual {v1}, Lcom/android/camera/util/layout/NaturalOrientation;->isLandscape()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/ModuleController;->onLayoutOrientationChanged(Z)V

    .line 1137
    :cond_0
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 909
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 910
    const v2, 0x7f1101a2

    if-ne v1, v2, :cond_0

    .line 911
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->myFilmstripBottomControlListener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;->onTinyPlanet()V

    .line 917
    :goto_0
    return v0

    .line 913
    :cond_0
    const v2, 0x7f1101a3

    if-ne v1, v2, :cond_1

    .line 914
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->myFilmstripBottomControlListener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;->onEdit()V

    goto :goto_0

    .line 917
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate$51662RJ4E9NMIP1FDTPIUGJLDPI6OP9R55B0____()V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    .line 1738
    return-void
.end method

.method public final onCreateContextMenu$51662RJ4E9NMIP1FEPKMATPF8DNMST35F1Q4QPBEEKTKOOBECHP6UQB45TR6IPBN5TB6IPBN7D662RJ4E9NMIP1FEPKMATPF8DNMST35F1Q4QPBEEKI46RREEHINGT2DCLN7AIBECPNJMAAM(Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1350
    const v1, 0x7f130001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1351
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1202
    const v1, 0x7f130002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1203
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->actionBarMenu:Landroid/view/Menu;

    .line 1205
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getGalleryIntent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/camera/util/GalleryHelper;->addPhotosShortcutToToolbar(Landroid/content/Context;Landroid/view/Menu;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    .line 1209
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1118
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    invoke-virtual {v0}, Lcom/android/camera/app/LegacyCameraController;->removeCallbackReceiver()V

    .line 1119
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/LegacyCameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 1120
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1121
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12324
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 1122
    invoke-virtual {v0}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onDestroy()V

    .line 1124
    iput-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->buttonManager:Lcom/android/camera/ui/ButtonManager;

    .line 1125
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1$9HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T1M2RB5E9GK2PR5DPQ4COB3EHNN4U948DGMQPBIC50N0Q9R:I

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78HJ1CDQ6USJP4H1M2RB5E9GK2S397CKLC___(I)V

    .line 1126
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO$9HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T1M2RB5E9GK2PR5DPQ4COB3EHNN4U948DGMQPBIC50N0Q9R:I

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78HJ1CDQ6USJP4H1M2RB5E9GK2S397CKLC___(I)V

    .line 1127
    return-void
.end method

.method public final onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 1504
    sget-object v1, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Camera open failure: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    .line 1506
    return-void

    .line 1504
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1510
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Camera open already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1512
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1141
    iget-boolean v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v1, :cond_3

    .line 1142
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/ModuleController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v0

    .line 1146
    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_2

    const/16 v1, 0x52

    if-ne p1, v1, :cond_3

    .line 1147
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x16

    const/16 v2, 0x15

    const/4 v0, 0x1

    .line 1158
    iget-boolean v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v1, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/ModuleController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return v0

    .line 1163
    :cond_1
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    .line 1166
    if-ne p1, v3, :cond_4

    .line 1167
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->showFilmstrip()V

    goto :goto_0

    .line 1171
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1172
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripViewController:Lcom/android/camera/filmstrip/FilmstripViewController;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->goToNextItem()Z

    goto :goto_0

    .line 1174
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1175
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripViewController:Lcom/android/camera/filmstrip/FilmstripViewController;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->goToPreviousItem()Z

    move-result v1

    .line 1176
    if-nez v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->hideFilmstrip()V

    goto :goto_0

    .line 1183
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onModeSelected(Lcom/android/camera/util/CameraMode;)V
    .locals 5

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->forceModuleReload:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    if-ne v0, p1, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1232
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->forceModuleReload:Z

    .line 12368
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    .line 1234
    invoke-virtual {p1, v0}, Lcom/android/camera/util/CameraMode;->getModeIndex(Landroid/content/res/Resources;)I

    move-result v0

    .line 1241
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->create()Lcom/android/camera/stats/InstrumentationSession;

    .line 1244
    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-ne p1, v1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_module_last_used_index"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1250
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    sget-object v2, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne v1, v2, :cond_4

    :cond_2
    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne p1, v1, :cond_4

    .line 1252
    :cond_3
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1253
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_mode_switch_camera_id_key"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1256
    :cond_4
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-direct {p0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->closeModule(Lcom/android/camera/module/ModuleController;)V

    .line 1259
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentMode:Lcom/android/camera/util/CameraMode;

    invoke-direct {p0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->modeRequestsV1Camera(Lcom/android/camera/util/CameraMode;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->modeRequestsV1Camera(Lcom/android/camera/util/CameraMode;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1260
    sget-object v1, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "cameraDeviceManager is shutdown as selected mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    invoke-virtual {v1}, Lcom/android/camera/device/CameraDeviceManager;->disconnectSync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1265
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->setModuleFromMode(Lcom/android/camera/util/CameraMode;)V

    .line 1268
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->isSupportingSurfaceViewPreviewCallbacks()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1269
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    invoke-interface {v1}, Lcom/android/camera/ui/viewfinder/Viewfinder;->clear()V

    .line 1273
    :cond_6
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-direct {p0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->openModule(Lcom/android/camera/module/ModuleController;)V

    .line 1275
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/CameraAppUI;->resetBottomControls(Lcom/android/camera/module/ModuleController;I)V

    .line 1276
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraAppUI;->addShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 1279
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "camera.startup_module"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1677
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/activity/IntentHandler;->setIntent(Landroid/content/Intent;)V

    .line 1678
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1682
    if-eqz v1, :cond_3

    const-string v0, "android.intent.action.MAIN"

    .line 1683
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1684
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1685
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1686
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1687
    :cond_1
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Resetting to default settings"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iput-boolean v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isColdStart:Z

    .line 1689
    iput-boolean v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    .line 1690
    invoke-static {}, Lcom/android/camera/activity/TrampolineActivity;->close()V

    .line 1693
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->exit()V

    .line 1694
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/statecharts/History;->clearHistory(Lcom/google/android/apps/camera/statecharts/State;)V

    .line 1695
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->enter()V

    .line 1705
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1706
    iput-boolean v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->forceModuleReload:Z

    .line 1708
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->resetStartupSettingsForAllModules()V

    .line 1709
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->setupCameraFacingFromIntent()V

    .line 1712
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    if-eqz v0, :cond_4

    .line 1714
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->resume()V

    .line 1715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    .line 1720
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getCameraMode()Lcom/android/camera/util/CameraMode;

    move-result-object v2

    .line 1721
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 1722
    sget-object v3, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne v2, v3, :cond_6

    .line 1723
    :cond_5
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 1725
    :cond_6
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-virtual {v3}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/IntentHelper;->isIntentForFrontCamera(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1726
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/statecharts/StateBase;->setFrontCamera()V

    .line 1727
    const-string v3, "selfie"

    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 1729
    :cond_7
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1730
    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 1732
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->onModeSelected(Lcom/android/camera/util/CameraMode;)V

    .line 1733
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 2722
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2723
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2724
    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->onBackPressed()Z

    .line 2725
    const/4 v0, 0x1

    .line 2727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1043
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->isFilmstripVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 1044
    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11219
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    .line 1045
    if-nez v0, :cond_0

    .line 1046
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Covering preview on SurfaceView preview transitions."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showBlankViewfinderCover()V

    .line 1048
    iput-boolean v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldHideCover:Z

    .line 1049
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "showViewfinderCoverUntilPreviewReady"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v3}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v3}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 1057
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->pause()V

    .line 1058
    return-void
.end method

.method public final onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1516
    sget-object v1, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Camera reconnection failure:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraReconnectFailure()V

    .line 1518
    return-void

    .line 1516
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 986
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraActivityController.onResume"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 989
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    if-nez v0, :cond_6

    .line 990
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->startCurrentModuleOnResume:Z

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->start()V

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->resume()V

    .line 997
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->startCurrentModuleOnResume:Z

    .line 999
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldHideCover:Z

    if-eqz v0, :cond_1

    .line 1000
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Explicitly hiding mode cover in onResume()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onNewPreviewFrame()V

    .line 1002
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldHideCover:Z

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setShareEnabled(Z)V

    .line 1009
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    if-nez v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripViewController:Lcom/android/camera/filmstrip/FilmstripViewController;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 1011
    if-eqz v0, :cond_2

    .line 1012
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 1017
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    .line 1020
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripContentObserver;->isMediaDataChangedDuringPause()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    .line 1021
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripContentObserver;->isMediaDataChangedDuringPause()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isVisibleLifetimeClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10521
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    if-nez v0, :cond_4

    .line 10524
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v0, :cond_7

    .line 10525
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$7;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$7;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestLoad(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1027
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 1032
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->overrideNextResumeTransition:Z

    if-eqz v0, :cond_5

    .line 1033
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1036
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1037
    return-void

    .line 995
    :cond_6
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not resuming the current module due to filmstrip/overlay"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10533
    :cond_7
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestLoadNewPhotos()V

    goto :goto_1
.end method

.method public final onSettingsSelected()V
    .locals 3

    .prologue
    .line 1300
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(I)V

    .line 1301
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1302
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

    invoke-virtual {v1, v0}, Lcom/android/camera/util/activity/IntentLauncher;->unlockAndStartChildActivity(Landroid/content/Intent;)V

    .line 1303
    return-void
.end method

.method public final onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 938
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraActivityController.onStart"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 939
    iput-boolean v5, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    .line 944
    invoke-virtual {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v0, :cond_3

    .line 951
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    if-eqz v0, :cond_2

    .line 952
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->resetStartupSettingsForAllModules()V

    .line 953
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->setupCameraFacingFromIntent()V

    .line 954
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getCameraMode()Lcom/android/camera/util/CameraMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->setModuleFromMode(Lcom/android/camera/util/CameraMode;)V

    .line 955
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->restartCameraWhenLeavingOverlay()V

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_a

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isColdStart:Z

    if-eqz v0, :cond_a

    .line 960
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->initialDeepResume()V

    .line 966
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    .line 968
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8555
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 970
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1100da

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 969
    invoke-static {v0}, Lcom/android/camera/debug/OnScreenLogger;->attach(Landroid/view/ViewGroup;)V

    .line 973
    :cond_4
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenSystemHealthInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9555
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 975
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f11008c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 974
    invoke-static {v0}, Lcom/android/camera/debug/SystemHealthView;->attach(Landroid/view/ViewGroup;)V

    .line 978
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->registerDoubleTwistGestureListener()V

    .line 9868
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraActivityController.start"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 9869
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

    const-string v1, "CameraActivityController#start"

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/debug/performance/MetricBuilder;->startMetric(Ljava/lang/String;J)Lcom/android/camera/debug/performance/Metric;

    move-result-object v1

    .line 9870
    sget-object v2, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "Build info: "

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9873
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->preInitLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 9875
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->lastLayoutOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 9878
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getGalleryIntent()Lcom/google/common/base/Optional;

    .line 9879
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9881
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 9884
    :cond_6
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "Add listeners for intents."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9885
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-interface {v0, v2}, Lcom/android/camera/module/ModuleController;->hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V

    .line 9888
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripVisible:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isPreviewStoppedFromOverlay:Z

    if-nez v0, :cond_7

    .line 9889
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->cancelPreviewStop()V

    .line 9890
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->start()V

    .line 9892
    :cond_7
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    .line 9893
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->currentUserInterfaceMode()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(II)V

    .line 9894
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "mCurrentModule.resume"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9896
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    if-nez v0, :cond_8

    .line 9897
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->localImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$21;

    invoke-direct {v2}, Lcom/android/camera/app/CameraActivityControllerImpl$21;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 9908
    :cond_8
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 9913
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->actionBarMenu:Landroid/view/Menu;

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    .line 9914
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 9917
    :cond_9
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStart()V

    .line 9918
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "mPanoramaViewHelper.onStart()"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9922
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->getIsTestDevice()Z

    .line 9926
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->getPreviewVisibility()I

    move-result v0

    .line 9927
    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->updatePreviewRendering(I)V

    .line 9931
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 9932
    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isIdle()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListener:Lcom/google/android/apps/camera/async/Updatable;

    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->mainThreadExecutor:Lcom/google/android/apps/camera/async/MainThread;

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListenerHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 9933
    invoke-static {}, Lcom/android/camera/advice/legacy/AdviceConfig;->instance()Lcom/android/camera/advice/legacy/AdviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/advice/legacy/AdviceConfig;->onResume()V

    .line 9934
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 9935
    invoke-interface {v1}, Lcom/android/camera/debug/performance/Metric;->stop()V

    .line 981
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_0

    .line 962
    :cond_a
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->resume()V

    goto/16 :goto_1

    .line 9870
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public final onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1062
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraActivityController.onStop"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 11731
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentHandler:Lcom/android/camera/util/activity/IntentHandler;

    invoke-static {v0}, Lcom/android/camera/util/IntentHelper;->isCaptureIntent(Lcom/android/camera/util/activity/IntentHandler;)Z

    move-result v0

    .line 1063
    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "camera.startup_module"

    iget v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModeIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1068
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->shouldHideCover:Z

    .line 1069
    iput-boolean v5, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped:Z

    .line 1072
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "performDeletion"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->currentModule:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->stop()V

    .line 1077
    iput-boolean v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->startCurrentModuleOnResume:Z

    .line 1078
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CurrentModule.stop()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onStop()V

    .line 1082
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->preloader:Lcom/android/camera/widget/Preloader;

    invoke-virtual {v0}, Lcom/android/camera/widget/Preloader;->cancelAllLoads()V

    .line 1085
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListenerHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraIdleListenerHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1091
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraFatalError:Z

    if-eqz v0, :cond_4

    .line 1092
    const-string v0, "CameraActivityController: Fatal error during onPause!"

    invoke-virtual {p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->finishActivityWithReason(Ljava/lang/String;)V

    .line 1101
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isColdStart:Z

    .line 1103
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1104
    invoke-static {}, Lcom/android/camera/debug/OnScreenLogger;->detach()V

    .line 1106
    :cond_2
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenSystemHealthInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    invoke-static {}, Lcom/android/camera/debug/SystemHealthView;->detach()V

    .line 1109
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Detach debug"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl;->unregisterDoubleTwistGestureListener()V

    .line 1112
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStop()V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1114
    return-void

    .line 1095
    :cond_4
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onPause closing camera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraController:Lcom/android/camera/app/LegacyCameraController;

    invoke-virtual {v0, v5}, Lcom/android/camera/app/LegacyCameraController;->closeCamera(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraController.closeCamera"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final openPhotoSphereViewer(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->panoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->showPanorama(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1462
    return-void
.end method

.method public final playVideo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1426
    .line 14219
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera:Z

    .line 1426
    if-eqz v0, :cond_0

    .line 1428
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "video/*"

    .line 1430
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1432
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->overrideNextResumeTransition:Z

    .line 1452
    :goto_0
    return-void

    .line 1437
    :cond_0
    invoke-static {p1}, Lcom/android/camera/util/IntentHelper;->getVideoPlayerIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    .line 1438
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "treat-up-as-back"

    const/4 v2, 0x1

    .line 1439
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1441
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->resetToPreviewOnResume:Z

    .line 1445
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

    invoke-virtual {v1, v0}, Lcom/android/camera/util/activity/IntentLauncher;->unlockAndStartChildActivity(Landroid/content/Intent;)V

    .line 1446
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->overrideNextResumeTransition:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1449
    :catch_0
    move-exception v0

    .line 14368
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityResources:Landroid/content/res/Resources;

    .line 1449
    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->activityContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final purgeIndicatorCache()V
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-virtual {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->purge()V

    .line 1800
    return-void
.end method

.method public final removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1608
    return-void
.end method

.method public final setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V
    .locals 2

    .prologue
    .line 1643
    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/android/camera/ui/PreviewStatusListener;->supportsSurfaceCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->SURFACE_VIEW:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/CameraAppUI;->setPreviewStatusListener(Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 1650
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->TEXTURE_VIEW_LEGACY:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/CameraAppUI;->setPreviewStatusListener(Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;Lcom/android/camera/ui/PreviewStatusListener;)V

    goto :goto_0
.end method

.method public final showBurstEditor(Lcom/android/camera/data/BurstItem;)V
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/FilmstripController;->showBurstEditor(Lcom/android/camera/data/BurstItem;)V

    .line 1457
    return-void
.end method

.method public final unlockOrientation()V
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 1670
    return-void
.end method

.method public final updatePreviewAspectRatio(F)V
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->updatePreviewAspectRatio(F)V

    .line 1626
    return-void
.end method

.method public final updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 1631
    return-void
.end method
