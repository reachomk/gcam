.class final Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/android/camera/activity/main/CameraActivityComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraActivityComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;
    }
.end annotation


# instance fields
.field private activityFinishWithReasonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;"
        }
    .end annotation
.end field

.field private final activityInstrumentationModule:Lcom/android/camera/stats/ActivityInstrumentationModule;

.field private final activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

.field private activityServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            ">;"
        }
    .end annotation
.end field

.field private final androidActivityExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21CDQ6ITJ9EHSKAU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/audio/AudioModule;

.field private bindFilesProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FilesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private bindStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;"
        }
    .end annotation
.end field

.field private burstFacadeImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private cameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityModule:Lcom/android/camera/activity/main/CameraActivityModule;

.field private cameraActivityStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/CameraActivityStartup;",
            ">;"
        }
    .end annotation
.end field

.field private cameraServicesImplProvider:Ljavax/inject/Provider;

.field private captureAudioInitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureAudioInit;",
            ">;"
        }
    .end annotation
.end field

.field private captureLayoutHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final captureModeStartupModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8DGN0T3LE9IKQRR4CL9N8OBIEHQN0JBFCHQMOPBJ4H1M2S3KELP6AJBFCHIL6T31E9Q7AS2DDTI7AR357C______:Lcom/android/camera/util/activity/ActivityUtilModule;

.field private captureModeStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModeStartup;",
            ">;"
        }
    .end annotation
.end field

.field private captureModuleConfigBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private captureModuleSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private captureOneCameraCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;"
        }
    .end annotation
.end field

.field private dcimFolderStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private fatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

.field private finishActivityOnScreenOffBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private forActivityStartupSetOfBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

.field private imageConfigSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ImageConfigSelector;",
            ">;"
        }
    .end annotation
.end field

.field private instrumentationSessionCleanupBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private intentLauncherImplProvider:Ljavax/inject/Provider;

.field private isSecureActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private orientationManagerImplProvider:Ljavax/inject/Provider;

.field private permissionsCheckerImplProvider:Ljavax/inject/Provider;

.field private permissionsStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private previewLongPressListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ">;"
        }
    .end annotation
.end field

.field private previewTapListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTransformCalculatorModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNL0SJ5EPKMATQKE9GMSSR6DTP6QGR1DHHNAR31EHNN4JBFCHQMOP9R:Lcom/android/camera/ui/wirers/UiWirersModule;

.field private provideActivityContentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityWindowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatchedUiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/BatchedUiExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraActivitySessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/LegacyCameraController;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureAudioInitBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceUnlockerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/DeviceUnlocker;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideFatalActivityErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideFragmentManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/FragmentManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGcaActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            ">;"
        }
    .end annotation
.end field

.field private provideInstrumentationCleanupBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideIntentHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideIntentLauncherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private provideIntentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private provideIntentStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentStarter;",
            ">;"
        }
    .end annotation
.end field

.field private provideLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaActionSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private provideModeStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Initializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideOneCameraFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOneCameraSettableFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOrientationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;"
        }
    .end annotation
.end field

.field private providePermissionCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsChecker;",
            ">;"
        }
    .end annotation
.end field

.field private providePermissionsRequestorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/PermissionsRequestor;",
            ">;"
        }
    .end annotation
.end field

.field private providePreInitLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private providePreviewTransformCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private provideRemoteShutterListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/remote/RemoteShutterListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestedOrientationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/RequestedOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private provideScreenOnWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSecureActivityScreenOffBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/audio/SoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private provideStartupConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/OneModuleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideStartupContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private provideStorageDialogBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideSysUiFlagApplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/SysUiFlagApplier;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoSwipeHintStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideViewfinderSettableFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideViewfinderSizeSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            ">;"
        }
    .end annotation
.end field

.field private provideWeakActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private resolutionSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/ResolutionSetting;",
            ">;"
        }
    .end annotation
.end field

.field private screenOnControllerImplProvider:Ljavax/inject/Provider;

.field private settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private soundPlayerImplProvider:Ljavax/inject/Provider;

.field private startupContextSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/StartupContextSelector;",
            ">;"
        }
    .end annotation
.end field

.field private storageDialogBuilderImplProvider:Ljavax/inject/Provider;

.field private sysUiFlagApplierImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/SysUiFlagApplierImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

.field private uncaughtExceptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private waitForCameraDevicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/WaitForCameraDevices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;)V
    .locals 14

    .prologue
    .line 2856
    iput-object p1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2857
    invoke-static/range {p2 .. p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/gca/GcaActivityModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 2858
    invoke-static/range {p3 .. p3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 2860
    invoke-static/range {p4 .. p4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ActivityInstrumentationModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityInstrumentationModule:Lcom/android/camera/stats/ActivityInstrumentationModule;

    .line 2861
    new-instance v0, Lcom/android/camera/util/activity/ActivityUtilModule;

    invoke-direct {v0}, Lcom/android/camera/util/activity/ActivityUtilModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModeStartupModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8DGN0T3LE9IKQRR4CL9N8OBIEHQN0JBFCHQMOPBJ4H1M2S3KELP6AJBFCHIL6T31E9Q7AS2DDTI7AR357C______:Lcom/android/camera/util/activity/ActivityUtilModule;

    .line 2862
    new-instance v0, Lcom/android/camera/audio/AudioModule;

    invoke-direct {v0}, Lcom/android/camera/audio/AudioModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->androidActivityExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21CDQ6ITJ9EHSKAU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/audio/AudioModule;

    .line 2863
    new-instance v0, Lcom/android/camera/ui/wirers/UiWirersModule;

    invoke-direct {v0}, Lcom/android/camera/ui/wirers/UiWirersModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->previewTransformCalculatorModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNL0SJ5EPKMATQKE9GMSSR6DTP6QGR1DHHNAR31EHNN4JBFCHQMOP9R:Lcom/android/camera/ui/wirers/UiWirersModule;

    .line 2864
    new-instance v0, Lcom/android/camera/activity/main/CameraActivityModule;

    invoke-direct {v0}, Lcom/android/camera/activity/main/CameraActivityModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityModule:Lcom/android/camera/activity/main/CameraActivityModule;

    .line 3871
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3874
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3875
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 5033
    new-instance v2, Lcom/android/camera/activity/main/WaitForCameraDevices_Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/activity/main/WaitForCameraDevices_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3872
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->waitForCameraDevicesProvider:Ljavax/inject/Provider;

    .line 3877
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 6024
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 3877
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    .line 3879
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 6026
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideWeakActivityFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideWeakActivityFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 3880
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWeakActivityProvider:Ljavax/inject/Provider;

    .line 3882
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWeakActivityProvider:Ljavax/inject/Provider;

    .line 7025
    new-instance v1, Lcom/android/camera/util/activity/ActivityFinishWithReason_Factory;

    invoke-direct {v1, v0}, Lcom/android/camera/util/activity/ActivityFinishWithReason_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 3883
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 3886
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 7026
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvidePermissionsRequestorFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvidePermissionsRequestorFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 3887
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePermissionsRequestorProvider:Ljavax/inject/Provider;

    .line 3889
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 8025
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityResourcesFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityResourcesFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 3890
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityResourcesProvider:Ljavax/inject/Provider;

    .line 3892
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 9024
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideIntentStarterFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideIntentStarterFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 3893
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentStarterProvider:Ljavax/inject/Provider;

    .line 3895
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3899
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3900
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePermissionsRequestorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityResourcesProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3904
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 9082
    new-instance v0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3896
    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->permissionsCheckerImplProvider:Ljavax/inject/Provider;

    .line 3906
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 10024
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideLifecycleFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideLifecycleFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 3907
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    .line 3909
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->permissionsCheckerImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3914
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3915
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 10053
    new-instance v4, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3910
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePermissionCheckerProvider:Ljavax/inject/Provider;

    .line 3917
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePermissionCheckerProvider:Ljavax/inject/Provider;

    .line 11022
    new-instance v1, Lcom/android/camera/util/permissions/PermissionsStartTask_Factory;

    invoke-direct {v1, v0}, Lcom/android/camera/util/permissions/PermissionsStartTask_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 3918
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->permissionsStartTaskProvider:Ljavax/inject/Provider;

    .line 3921
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWeakActivityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 11033
    new-instance v2, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask_Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3922
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->dcimFolderStartTaskProvider:Ljavax/inject/Provider;

    .line 3926
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 3927
    invoke-static {v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCTHM2BQ7CDGK2ORKD5R6IT3P9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/activity/gca/GcaActivityModule;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    .line 3929
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWeakActivityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3931
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 12031
    new-instance v2, Lcom/android/camera/error/FatalActivityErrorHandler_Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/error/FatalActivityErrorHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3930
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->fatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

    .line 3933
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3937
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->fatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3940
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    .line 12062
    new-instance v0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3934
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideFatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

    .line 3944
    invoke-static {}, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->instrumentationSessionCleanupBehaviorProvider:Ljavax/inject/Provider;

    .line 3946
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3949
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->instrumentationSessionCleanupBehaviorProvider:Ljavax/inject/Provider;

    .line 3948
    invoke-static {v0, v1, v2}, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 3947
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideInstrumentationCleanupBehaviorProvider:Ljavax/inject/Provider;

    .line 3953
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 13024
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideIntentHandlerFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideIntentHandlerFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 3954
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentHandlerProvider:Ljavax/inject/Provider;

    .line 3956
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityInstrumentationModule:Lcom/android/camera/stats/ActivityInstrumentationModule;

    .line 3958
    invoke-static {v0}, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8OBKECNK2ORKD5R6IT3P95N76T3IELMMARJKC5Q6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/stats/ActivityInstrumentationModule;)Ljavax/inject/Provider;

    move-result-object v0

    .line 3957
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraActivitySessionProvider:Ljavax/inject/Provider;

    .line 3964
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityResourcesProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraActivitySessionProvider:Ljavax/inject/Provider;

    .line 3968
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3969
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 3970
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3971
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3972
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    .line 3973
    invoke-static {}, Lcom/google/android/apps/camera/util/time/IntervalClock_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v10

    .line 13105
    new-instance v0, Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior_Factory;

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3962
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;

    .line 3975
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3977
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;

    .line 14050
    new-instance v3, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3976
    iput-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;

    .line 3981
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3984
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 3983
    invoke-static {v0}, Lcom/android/camera/audio/SoundPlayerImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 3982
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->soundPlayerImplProvider:Ljavax/inject/Provider;

    .line 3986
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->soundPlayerImplProvider:Ljavax/inject/Provider;

    .line 3988
    invoke-static {v0, v1}, Lcom/android/camera/audio/AudioModule_ProvideSoundPlayerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 3987
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideSoundPlayerProvider:Ljavax/inject/Provider;

    .line 3991
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideSoundPlayerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 3994
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 3993
    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 3992
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 3996
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4000
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 15031
    new-instance v2, Lcom/android/camera/module/capture/CaptureAudioInit_Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureAudioInit_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3997
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureAudioInitProvider:Ljavax/inject/Provider;

    .line 4002
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureAudioInitProvider:Ljavax/inject/Provider;

    .line 16029
    new-instance v1, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCaptureAudioInitBehaviorFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCaptureAudioInitBehaviorFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4003
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCaptureAudioInitBehaviorProvider:Ljavax/inject/Provider;

    .line 4006
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 17025
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityContextFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityContextFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 4007
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    .line 4009
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4014
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 17043
    new-instance v3, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4010
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->finishActivityOnScreenOffBehaviorProvider:Ljavax/inject/Provider;

    .line 4016
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4019
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->finishActivityOnScreenOffBehaviorProvider:Ljavax/inject/Provider;

    .line 17054
    new-instance v4, Lcom/android/camera/activity/secure/SecureActivityModule_ProvideSecureActivityScreenOffBehaviorFactory;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/activity/secure/SecureActivityModule_ProvideSecureActivityScreenOffBehaviorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4017
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideSecureActivityScreenOffBehaviorProvider:Ljavax/inject/Provider;

    .line 4024
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 4025
    invoke-static {v0, v1}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideFatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

    .line 4026
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideInstrumentationCleanupBehaviorProvider:Ljavax/inject/Provider;

    .line 4027
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;

    .line 4028
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCaptureAudioInitBehaviorProvider:Ljavax/inject/Provider;

    .line 4029
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideSecureActivityScreenOffBehaviorProvider:Ljavax/inject/Provider;

    .line 4030
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 4031
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->forActivityStartupSetOfBehaviorProvider:Ljavax/inject/Provider;

    .line 4033
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 18024
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideIntentFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideIntentFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 4033
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentProvider:Ljavax/inject/Provider;

    .line 4035
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentProvider:Ljavax/inject/Provider;

    .line 18027
    new-instance v1, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraModeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4036
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraModeProvider:Ljavax/inject/Provider;

    .line 4038
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraModeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4042
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentProvider:Ljavax/inject/Provider;

    .line 18040
    new-instance v3, Lcom/android/camera/activity/config/StartupContextSelector_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/activity/config/StartupContextSelector_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4039
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->startupContextSelectorProvider:Ljavax/inject/Provider;

    .line 4045
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->startupContextSelectorProvider:Ljavax/inject/Provider;

    .line 19030
    new-instance v1, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupContextFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupContextFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4046
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStartupContextProvider:Ljavax/inject/Provider;

    .line 4050
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4052
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4053
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4054
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19041
    new-instance v3, Lcom/android/camera/settings/ResolutionSetting_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/settings/ResolutionSetting_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4051
    iput-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->resolutionSettingProvider:Ljavax/inject/Provider;

    .line 4056
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4059
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4060
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 20037
    new-instance v2, Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4057
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 4062
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4064
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->resolutionSettingProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4067
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4068
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 20058
    new-instance v0, Lcom/android/camera/module/ImageConfigSelector_Factory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/ImageConfigSelector_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4063
    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->imageConfigSelectorProvider:Ljavax/inject/Provider;

    .line 4070
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->imageConfigSelectorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4073
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 21033
    new-instance v2, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4071
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModuleConfigBuilderProvider:Ljavax/inject/Provider;

    .line 4075
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModuleConfigBuilderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStartupContextProvider:Ljavax/inject/Provider;

    .line 21037
    new-instance v2, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4076
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStartupConfigProvider:Ljavax/inject/Provider;

    .line 4083
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderSettableFutureFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 4081
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderSettableFutureProvider:Ljavax/inject/Provider;

    .line 4085
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModeStartupModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8DGN0T3LE9IKQRR4CL9N8OBIEHQN0JBFCHQMOPBJ4H1M2S3KELP6AJBFCHIL6T31E9Q7AS2DDTI7AR357C______:Lcom/android/camera/util/activity/ActivityUtilModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderSettableFutureProvider:Ljavax/inject/Provider;

    .line 22037
    new-instance v2, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory;-><init>(Lcom/android/camera/util/activity/ActivityUtilModule;Ljavax/inject/Provider;)V

    .line 4086
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderFutureProvider:Ljavax/inject/Provider;

    .line 4092
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 4090
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOneCameraSettableFutureProvider:Ljavax/inject/Provider;

    .line 4094
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4096
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4097
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 4095
    invoke-static {v0, v1}, Lcom/android/camera/settings/Settings_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->settingsProvider:Ljavax/inject/Provider;

    .line 4099
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    .line 23023
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityServices_Factory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 4100
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityServicesProvider:Ljavax/inject/Provider;

    .line 4102
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityServicesProvider:Ljavax/inject/Provider;

    .line 23028
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityServicesModule_ProvideWindowManagerFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServicesModule_ProvideWindowManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4103
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 4105
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 23029
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityServicesModule_ProvideDisplayDisplayMetricsFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServicesModule_ProvideDisplayDisplayMetricsFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4106
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideDisplayDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 4110
    invoke-static {}, Lcom/android/camera/storage/FilesProxyImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->bindFilesProxyProvider:Ljavax/inject/Provider;

    .line 4112
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->bindStorageProvider:Ljavax/inject/Provider;

    .line 4114
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4117
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4118
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->bindFilesProxyProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4120
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4121
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4122
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->bindStorageProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4124
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 4125
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v9

    .line 23089
    new-instance v0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/burst/BurstFacadeImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4115
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->burstFacadeImplProvider:Ljavax/inject/Provider;

    .line 4127
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4130
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4131
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->settingsProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4133
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4134
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4135
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4136
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4137
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideDisplayDisplayMetricsProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->burstFacadeImplProvider:Ljavax/inject/Provider;

    .line 4140
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v11

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4141
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4142
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    .line 23122
    new-instance v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4128
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    .line 4144
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4147
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4148
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStartupContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStartupConfigProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderFutureProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOneCameraSettableFutureProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4154
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 24084
    new-instance v0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4145
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModeStartupProvider:Ljavax/inject/Provider;

    .line 4156
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraModeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModeStartupProvider:Ljavax/inject/Provider;

    .line 25038
    new-instance v2, Lcom/android/camera/activity/config/ModeStartupModules_ModeStartupModule_ProvideModeStartupFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/activity/config/ModeStartupModules_ModeStartupModule_ProvideModeStartupFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4157
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideModeStartupProvider:Ljavax/inject/Provider;

    .line 4160
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4162
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 26023
    new-instance v1, Lcom/android/camera/error/UncaughtExceptionHandler_Factory;

    invoke-direct {v1, v0}, Lcom/android/camera/error/UncaughtExceptionHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 4161
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->uncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    .line 4164
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4167
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->waitForCameraDevicesProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->permissionsStartTaskProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->dcimFolderStartTaskProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->forActivityStartupSetOfBehaviorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideModeStartupProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4173
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4174
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->uncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4176
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    .line 26098
    new-instance v0, Lcom/android/camera/activity/main/CameraActivityStartup_Factory;

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/activity/main/CameraActivityStartup_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4165
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityStartupProvider:Ljavax/inject/Provider;

    .line 4178
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4182
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 27034
    new-instance v2, Lcom/android/camera/activity/secure/SecureActivityModule_IsSecureActivityFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/activity/secure/SecureActivityModule_IsSecureActivityFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4179
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->isSecureActivityProvider:Ljavax/inject/Provider;

    .line 4184
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 28024
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityWindowFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityWindowFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 4185
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    .line 4187
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->isSecureActivityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    .line 28039
    new-instance v3, Lcom/android/camera/ui/views/CameraUiInflater_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/ui/views/CameraUiInflater_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4191
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 29026
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityContentResolverFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideActivityContentResolverFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 4192
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContentResolverProvider:Ljavax/inject/Provider;

    .line 4194
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 30024
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideMainHandlerFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideMainHandlerFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 4195
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 4197
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    .line 30036
    new-instance v2, Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4198
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideRemoteShutterListenerProvider:Ljavax/inject/Provider;

    .line 4202
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4204
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4205
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4206
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideRemoteShutterListenerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4208
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 30058
    new-instance v0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4203
    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraServicesImplProvider:Ljavax/inject/Provider;

    .line 4210
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraServicesImplProvider:Ljavax/inject/Provider;

    .line 31028
    new-instance v1, Lcom/android/camera/activity/config/CameraServicesModule_ProvideCameraServicesFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/config/CameraServicesModule_ProvideCameraServicesFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4211
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraServicesProvider:Ljavax/inject/Provider;

    .line 4213
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4216
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4218
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4219
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 4220
    invoke-static {}, Lcom/android/camera/device/CameraDeviceModule_ProvideActiveCameraDeviceTrackerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4221
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 31070
    new-instance v0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4214
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraControllerProvider:Ljavax/inject/Provider;

    .line 4223
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraControllerProvider:Ljavax/inject/Provider;

    .line 32028
    new-instance v1, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraProviderFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraProviderFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4224
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraProvider:Ljavax/inject/Provider;

    .line 4227
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    .line 32029
    new-instance v1, Lcom/android/camera/audio/AudioModule_ProvideMediaActionSoundPlayerFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/audio/AudioModule_ProvideMediaActionSoundPlayerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4228
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideMediaActionSoundPlayerProvider:Ljavax/inject/Provider;

    .line 4232
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 33026
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideRequestedOrientationFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideRequestedOrientationFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 4233
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideRequestedOrientationProvider:Ljavax/inject/Provider;

    .line 4235
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideRequestedOrientationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContentResolverProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4239
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4241
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 33058
    new-instance v0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4236
    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->orientationManagerImplProvider:Ljavax/inject/Provider;

    .line 4243
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4247
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->orientationManagerImplProvider:Ljavax/inject/Provider;

    .line 34043
    new-instance v3, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4244
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOrientationManagerProvider:Ljavax/inject/Provider;

    .line 4250
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->androidActivityExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21CDQ6ITJ9EHSKAU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/audio/AudioModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4254
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 35036
    new-instance v2, Lcom/android/camera/async/ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/async/ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory;-><init>(Lcom/android/camera/audio/AudioModule;Ljavax/inject/Provider;)V

    .line 4251
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideBatchedUiExecutorProvider:Ljavax/inject/Provider;

    .line 4256
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 36023
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideGcaActivityFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideGcaActivityFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 4257
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideGcaActivityProvider:Ljavax/inject/Provider;

    .line 4259
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityResourcesProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOrientationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4265
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideGcaActivityProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4267
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 36066
    new-instance v0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4260
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 4269
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentStarterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4273
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->isSecureActivityProvider:Ljavax/inject/Provider;

    .line 37038
    new-instance v3, Lcom/android/camera/util/activity/IntentLauncherImpl_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/util/activity/IntentLauncherImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4270
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->intentLauncherImplProvider:Ljavax/inject/Provider;

    .line 4276
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->intentLauncherImplProvider:Ljavax/inject/Provider;

    .line 38028
    new-instance v1, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideIntentLauncherFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideIntentLauncherFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4277
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentLauncherProvider:Ljavax/inject/Provider;

    .line 4279
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentLauncherProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideGcaActivityProvider:Ljavax/inject/Provider;

    .line 38043
    new-instance v3, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4280
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideDeviceUnlockerProvider:Ljavax/inject/Provider;

    .line 4286
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 39026
    new-instance v1, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifecycleFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifecycleFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    .line 4287
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifecycleProvider:Ljavax/inject/Provider;

    .line 4289
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->previewTransformCalculatorModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNL0SJ5EPKMATQKE9GMSSR6DTP6QGR1DHHNAR31EHNN4JBFCHQMOP9R:Lcom/android/camera/ui/wirers/UiWirersModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOrientationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 39043
    new-instance v3, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;-><init>(Lcom/android/camera/ui/wirers/UiWirersModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4290
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePreviewTransformCalculatorProvider:Ljavax/inject/Provider;

    .line 4296
    invoke-static {}, Lcom/android/camera/ui/wirers/PreviewTapListener_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 4299
    invoke-static {}, Lcom/android/camera/ui/wirers/PreviewLongPressListener_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    .line 4301
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4304
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4305
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 40039
    new-instance v3, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4302
    iput-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->storageDialogBuilderImplProvider:Ljavax/inject/Provider;

    .line 4307
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->storageDialogBuilderImplProvider:Ljavax/inject/Provider;

    .line 41028
    new-instance v1, Lcom/android/camera/storage/ActivityStorageModule_ProvideStorageDialogBuilderFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/storage/ActivityStorageModule_ProvideStorageDialogBuilderFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4308
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStorageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 4312
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4314
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4316
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 41042
    new-instance v3, Lcom/android/camera/util/activity/ScreenOnControllerImpl_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/util/activity/ScreenOnControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4313
    iput-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->screenOnControllerImplProvider:Ljavax/inject/Provider;

    .line 4318
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->screenOnControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4322
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    .line 41045
    new-instance v3, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideScreenOnWindowControllerFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideScreenOnWindowControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4319
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideScreenOnWindowControllerProvider:Ljavax/inject/Provider;

    .line 4325
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4328
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 42029
    new-instance v1, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintModule_ProvideVideoSwipeHintStatechartFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintModule_ProvideVideoSwipeHintStatechartFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4326
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideVideoSwipeHintStatechartProvider:Ljavax/inject/Provider;

    .line 4330
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4332
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    .line 42030
    new-instance v2, Lcom/android/camera/util/activity/SysUiFlagApplierImpl_Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4331
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->sysUiFlagApplierImplProvider:Ljavax/inject/Provider;

    .line 4335
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->sysUiFlagApplierImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4339
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    .line 42043
    new-instance v3, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideSysUiFlagApplierFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideSysUiFlagApplierFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4336
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideSysUiFlagApplierProvider:Ljavax/inject/Provider;

    .line 4342
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityModule:Lcom/android/camera/activity/main/CameraActivityModule;

    .line 43025
    new-instance v1, Lcom/android/camera/activity/main/CameraActivityModule_ProvidePreInitLifetimeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/activity/main/CameraActivityModule_ProvidePreInitLifetimeFactory;-><init>(Lcom/android/camera/activity/main/CameraActivityModule;)V

    .line 4343
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePreInitLifetimeProvider:Ljavax/inject/Provider;

    .line 4346
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModeStartupModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8DGN0T3LE9IKQRR4CL9N8OBIEHQN0JBFCHQMOPBJ4H1M2S3KELP6AJBFCHIL6T31E9Q7AS2DDTI7AR357C______:Lcom/android/camera/util/activity/ActivityUtilModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOneCameraSettableFutureProvider:Ljavax/inject/Provider;

    .line 43037
    new-instance v2, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraFutureFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraFutureFactory;-><init>(Lcom/android/camera/util/activity/ActivityUtilModule;Ljavax/inject/Provider;)V

    .line 4347
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOneCameraFutureProvider:Ljavax/inject/Provider;

    .line 4350
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 44026
    new-instance v1, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideFragmentManagerFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideFragmentManagerFactory;-><init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    .line 4351
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideFragmentManagerProvider:Ljavax/inject/Provider;

    .line 2866
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;B)V
    .locals 0

    .prologue
    .line 2652
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->bindFilesProxyProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityServicesProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideMainHandlerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideSysUiFlagApplierProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->burstFacadeImplProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraControllerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePreInitLifetimeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentLauncherProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraActivitySessionProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStartupConfigProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderSettableFutureProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOneCameraFutureProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityStartupProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->uncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideFragmentManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityResourcesProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideOrientationManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideBatchedUiExecutorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideLifecycleProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->settingsProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->isSecureActivityProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideIntentHandlerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideDeviceUnlockerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityLifecycleProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraModeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContextProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraServicesProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideCameraProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideMediaActionSoundPlayerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModuleConfigBuilderProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideRemoteShutterListenerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->providePreviewTransformCalculatorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->previewTapListenerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideStorageDialogBuilderProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideScreenOnWindowControllerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->bindStorageProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideVideoSwipeHintStatechartProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityContentResolverProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideViewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    return-object v0
.end method


# virtual methods
.method public final createCameraActivityUiComponent(Lcom/android/camera/ui/views/CameraUiModule;)Lcom/android/camera/activity/main/CameraActivityUiComponent;
    .locals 2

    .prologue
    .line 3370
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;Lcom/android/camera/ui/views/CameraUiModule;B)V

    return-object v0
.end method

.method public final getCameraUiInflator()Lcom/android/camera/ui/views/CameraUiInflater;
    .locals 4

    .prologue
    .line 3361
    new-instance v2, Lcom/android/camera/ui/views/CameraUiInflater;

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->isSecureActivityProvider:Ljavax/inject/Provider;

    .line 3362
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityProvider:Ljavax/inject/Provider;

    .line 3363
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->provideActivityWindowProvider:Ljavax/inject/Provider;

    .line 3364
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/camera/ui/views/CameraUiInflater;-><init>(ZLandroid/app/Activity;Landroid/view/Window;)V

    .line 3361
    return-object v2
.end method

.method public final initializer()Lcom/android/camera/activity/main/CameraActivityStartup;
    .locals 1

    .prologue
    .line 3356
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->cameraActivityStartupProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/main/CameraActivityStartup;

    return-object v0
.end method
