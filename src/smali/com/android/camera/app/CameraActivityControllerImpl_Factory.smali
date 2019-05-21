.class public final Lcom/android/camera/app/CameraActivityControllerImpl_Factory;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final accessibilityUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/AccessibilityUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final actionBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final activityContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFinishWithReasonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;"
        }
    .end annotation
.end field

.field private final activityLayoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private final activityLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final activityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final activityServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            ">;"
        }
    .end annotation
.end field

.field private final activityWindowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final androidServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;"
        }
    .end annotation
.end field

.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final appUpgraderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/AppUpgrader;",
            ">;"
        }
    .end annotation
.end field

.field private final burstFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final camcorderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivitySessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraFacingStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUiStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            ">;"
        }
    .end annotation
.end field

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

.field private final captureLayoutHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final captureSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final captureStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final checkedViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

.field private final glideFilmstripManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final indicatorUpdaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final intentHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final intentLauncherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final intentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final isSecureActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyCameraControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/LegacyCameraController;",
            ">;"
        }
    .end annotation
.end field

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

.field private final locationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryQueryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryQuery;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final metricBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraFeatureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraOpenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;"
        }
    .end annotation
.end field

.field private final orientationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;"
        }
    .end annotation
.end field

.field private final photoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final photoVideoStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final preInitLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final previewAreaRectPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTransformCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOnControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiFlagApplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/SysUiFlagApplier;",
            ">;"
        }
    .end annotation
.end field

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

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final uiControllerInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final uiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/SysUiFlagApplier;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/LegacyCameraController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryQuery;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/ActionBar;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/AppUpgrader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/AccessibilityUtil;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentLauncher;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 307
    iput-object p2, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 309
    iput-object p3, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityResourcesProvider:Ljavax/inject/Provider;

    .line 311
    iput-object p4, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityWindowProvider:Ljavax/inject/Provider;

    .line 313
    iput-object p5, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 315
    iput-object p6, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 317
    iput-object p7, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 319
    iput-object p8, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->intentHandlerProvider:Ljavax/inject/Provider;

    .line 321
    iput-object p9, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->checkedViewProvider:Ljavax/inject/Provider;

    .line 323
    iput-object p10, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 325
    iput-object p11, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 327
    iput-object p12, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 329
    iput-object p13, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 331
    iput-object p14, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 333
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 335
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->moduleManagerProvider:Ljavax/inject/Provider;

    .line 337
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 339
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->screenOnControllerProvider:Ljavax/inject/Provider;

    .line 341
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->sysUiFlagApplierProvider:Ljavax/inject/Provider;

    .line 343
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->isSecureActivityProvider:Ljavax/inject/Provider;

    .line 345
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 347
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 349
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->oneCameraOpenerProvider:Ljavax/inject/Provider;

    .line 351
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 353
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->legacyCameraControllerProvider:Ljavax/inject/Provider;

    .line 355
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->memoryQueryProvider:Ljavax/inject/Provider;

    .line 357
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 359
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->locationManagerProvider:Ljavax/inject/Provider;

    .line 361
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 363
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 365
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 367
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 369
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureSessionManagerProvider:Ljavax/inject/Provider;

    .line 371
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraServicesProvider:Ljavax/inject/Provider;

    .line 373
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    .line 375
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 377
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->actionBarProvider:Ljavax/inject/Provider;

    .line 379
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 381
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->appUpgraderProvider:Ljavax/inject/Provider;

    .line 383
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 385
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 387
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->preInitLifetimeProvider:Ljavax/inject/Provider;

    .line 389
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 391
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->scheduledExecutorServiceProvider:Ljavax/inject/Provider;

    .line 393
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->indicatorCacheProvider:Ljavax/inject/Provider;

    .line 395
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->indicatorUpdaterProvider:Ljavax/inject/Provider;

    .line 397
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->camcorderManagerProvider:Ljavax/inject/Provider;

    .line 399
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->accessibilityUtilProvider:Ljavax/inject/Provider;

    .line 401
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 403
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->intentLauncherProvider:Ljavax/inject/Provider;

    .line 405
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 407
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->glideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 409
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->photoItemFactoryProvider:Ljavax/inject/Provider;

    .line 411
    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->videoItemFactoryProvider:Ljavax/inject/Provider;

    .line 413
    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->localFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    .line 415
    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 417
    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityServicesProvider:Ljavax/inject/Provider;

    .line 419
    move-object/from16 v0, p58

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 421
    move-object/from16 v0, p59

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 423
    move-object/from16 v0, p60

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->metadataLoaderProvider:Ljavax/inject/Provider;

    .line 425
    move-object/from16 v0, p61

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraActivitySessionProvider:Ljavax/inject/Provider;

    .line 427
    move-object/from16 v0, p62

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 429
    move-object/from16 v0, p63

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->toyboxDrawerControllerProvider:Ljavax/inject/Provider;

    .line 431
    move-object/from16 v0, p64

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraUiStatechartProvider:Ljavax/inject/Provider;

    .line 433
    move-object/from16 v0, p65

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureStatechartProvider:Ljavax/inject/Provider;

    .line 435
    move-object/from16 v0, p66

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraFacingStatechartProvider:Ljavax/inject/Provider;

    .line 437
    move-object/from16 v0, p67

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->photoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 439
    move-object/from16 v0, p68

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->uiControllerInitializerProvider:Ljavax/inject/Provider;

    .line 441
    move-object/from16 v0, p69

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->uiWirerProvider:Ljavax/inject/Provider;

    .line 443
    move-object/from16 v0, p70

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->previewAreaRectPropertyProvider:Ljavax/inject/Provider;

    .line 445
    move-object/from16 v0, p71

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    .line 447
    move-object/from16 v0, p72

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->intentProvider:Ljavax/inject/Provider;

    .line 449
    move-object/from16 v0, p73

    iput-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->flagsProvider:Ljavax/inject/Provider;

    .line 450
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 75

    .prologue
    .line 81
    .line 1454
    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 1455
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 1456
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityResourcesProvider:Ljavax/inject/Provider;

    .line 1457
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityWindowProvider:Ljavax/inject/Provider;

    .line 1458
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Window;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1459
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 1460
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 1461
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->intentHandlerProvider:Ljavax/inject/Provider;

    .line 1462
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/util/activity/IntentHandler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->checkedViewProvider:Ljavax/inject/Provider;

    .line 1463
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 1464
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 1465
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1466
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 1467
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/activity/ActivityFinishWithReason;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1468
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1469
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->moduleManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1470
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/module/ModuleManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 1471
    invoke-interface/range {v18 .. v18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->screenOnControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    .line 1472
    invoke-interface/range {v19 .. v19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/util/activity/ScreenOnController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->sysUiFlagApplierProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    .line 1473
    invoke-interface/range {v20 .. v20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/util/activity/SysUiFlagApplier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->isSecureActivityProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    .line 1474
    invoke-interface/range {v21 .. v21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    .line 1475
    invoke-interface/range {v22 .. v22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v0

    .line 1476
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->oneCameraOpenerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v0

    .line 1477
    invoke-interface/range {v24 .. v24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/camera/one/OneCameraOpener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->burstFacadeProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    .line 1478
    invoke-interface/range {v25 .. v25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/camera/burst/BurstFacadeImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->legacyCameraControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v0

    .line 1479
    invoke-interface/range {v26 .. v26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/camera/app/LegacyCameraController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->memoryQueryProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v0

    .line 1480
    invoke-interface/range {v27 .. v27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/camera/memory/MemoryQuery;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    .line 1481
    invoke-interface/range {v28 .. v28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/camera/device/CameraDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->locationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    .line 1482
    invoke-interface/range {v29 .. v29}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/camera/location/LocationProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v0

    .line 1483
    invoke-interface/range {v30 .. v30}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->settingsProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v0

    .line 1484
    invoke-interface/range {v31 .. v31}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/camera/settings/Settings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->storageProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    .line 1485
    invoke-interface/range {v32 .. v32}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/camera/storage/Storage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v0

    .line 1486
    invoke-interface/range {v33 .. v33}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureSessionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v0

    .line 1487
    invoke-interface/range {v34 .. v34}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v0

    .line 1488
    invoke-interface/range {v35 .. v35}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    .line 1489
    invoke-interface/range {v36 .. v36}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/camera/ui/viewfinder/Viewfinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v0

    .line 1490
    invoke-interface/range {v37 .. v37}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/camera/ui/views/CameraUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->actionBarProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v0

    .line 1491
    invoke-interface/range {v38 .. v38}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v0

    .line 1492
    invoke-static/range {v39 .. v39}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->appUpgraderProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v0

    .line 1493
    invoke-interface/range {v40 .. v40}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/camera/settings/AppUpgrader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v0

    .line 1494
    invoke-interface/range {v41 .. v41}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v0

    .line 1495
    invoke-interface/range {v42 .. v42}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->preInitLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v0

    .line 1496
    invoke-interface/range {v43 .. v43}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/google/android/apps/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v0

    .line 1497
    invoke-interface/range {v44 .. v44}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->scheduledExecutorServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v0

    .line 1498
    invoke-interface/range {v45 .. v45}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->indicatorCacheProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v0

    .line 1499
    invoke-interface/range {v46 .. v46}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/camera/storage/cache/SingleKeyCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->indicatorUpdaterProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v0

    .line 1500
    invoke-interface/range {v47 .. v47}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->camcorderManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v0

    .line 1501
    invoke-interface/range {v48 .. v48}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->accessibilityUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v0

    .line 1502
    invoke-interface/range {v49 .. v49}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/camera/util/AccessibilityUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v0

    .line 1503
    invoke-interface/range {v50 .. v50}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/camera/util/ApiHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->intentLauncherProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v0

    .line 1504
    invoke-interface/range {v51 .. v51}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/camera/util/activity/IntentLauncher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v0

    .line 1505
    invoke-interface/range {v52 .. v52}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/camera/processing/ProcessingServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->glideFilmstripManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v53, v0

    .line 1506
    invoke-interface/range {v53 .. v53}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/camera/data/GlideFilmstripManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->photoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v0

    .line 1507
    invoke-interface/range {v54 .. v54}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/camera/data/PhotoItemFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->videoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v0

    .line 1508
    invoke-interface/range {v55 .. v55}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/camera/data/VideoItemFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->localFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v57, v0

    .line 1510
    invoke-interface/range {v57 .. v57}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->activityServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v58, v0

    .line 1511
    invoke-interface/range {v58 .. v58}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v0

    .line 1512
    invoke-interface/range {v59 .. v59}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v0

    .line 1513
    invoke-interface/range {v60 .. v60}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/camera/debug/performance/MetricBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->metadataLoaderProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v0

    .line 1514
    invoke-interface/range {v61 .. v61}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraActivitySessionProvider:Ljavax/inject/Provider;

    move-object/from16 v62, v0

    .line 1515
    invoke-interface/range {v62 .. v62}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/camera/stats/CameraActivitySession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->toyboxDrawerControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraUiStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v0

    .line 1518
    invoke-interface/range {v65 .. v65}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/camera/ui/controller/CameraUiStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->captureStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v66, v0

    .line 1519
    invoke-interface/range {v66 .. v66}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/camera/ui/controller/CaptureStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->cameraFacingStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v0

    .line 1520
    invoke-interface/range {v67 .. v67}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/android/camera/ui/controller/CameraFacingStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->photoVideoStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v0

    .line 1521
    invoke-interface/range {v68 .. v68}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->uiControllerInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v0

    .line 1522
    invoke-interface/range {v69 .. v69}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->uiWirerProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v0

    .line 1523
    invoke-interface/range {v70 .. v70}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Lcom/android/camera/ui/wirers/UiWirer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->previewAreaRectPropertyProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v0

    .line 1524
    invoke-interface/range {v71 .. v71}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v0

    .line 1525
    invoke-interface/range {v72 .. v72}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->intentProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v0

    .line 1526
    invoke-interface/range {v73 .. v73}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;->flagsProvider:Ljavax/inject/Provider;

    move-object/from16 v74, v0

    .line 1527
    invoke-interface/range {v74 .. v74}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/camera/util/flags/Flags;

    invoke-direct/range {v1 .. v74}, Lcom/android/camera/app/CameraActivityControllerImpl;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/Window;Landroid/content/ContentResolver;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/android/camera/util/activity/IntentHandler;Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/google/android/apps/camera/async/MainThread;Landroid/view/WindowManager;Lcom/android/camera/module/ModuleManager;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/util/activity/SysUiFlagApplier;ZLcom/android/camera/burst/OrientationLockController;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/app/LegacyCameraController;Lcom/android/camera/memory/MemoryQuery;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/Settings;Lcom/android/camera/storage/Storage;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/views/CameraUi;Landroid/app/ActionBar;Ldagger/Lazy;Lcom/android/camera/settings/AppUpgrader;Lcom/android/camera/error/FatalErrorHandler;Lcom/google/android/apps/camera/async/UiObservable;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/util/concurrent/Executor;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/util/AccessibilityUtil;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/util/activity/IntentLauncher;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;Ljavax/inject/Provider;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/google/android/apps/camera/inject/activity/ActivityServices;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;Lcom/android/camera/stats/CameraActivitySession;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/CameraFacingStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;Lcom/android/camera/ui/wirers/UiWirer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/module/PreviewTransformCalculator;Landroid/content/Intent;Lcom/android/camera/util/flags/Flags;)V

    .line 81
    return-object v1
.end method
