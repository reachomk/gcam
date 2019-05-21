.class public final Lcom/android/camera/app/DaggerCameraAppComponent;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/android/camera/one/v2/OneCameraFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$Builder;
    }
.end annotation


# instance fields
.field private adbFlagSourceProvider:Ljavax/inject/Provider;

.field private adviceYuvNativeUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;",
            ">;"
        }
    .end annotation
.end field

.field private aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private androidServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;"
        }
    .end annotation
.end field

.field private bindCameraFileUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
            ">;"
        }
    .end annotation
.end field

.field private bindFileNamerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamerManager;",
            ">;"
        }
    .end annotation
.end field

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

.field private bindMediaSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/MediaSaver;",
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

.field private bottomBarSideControlsMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/ui/BottomBarSideControls;",
            ">;"
        }
    .end annotation
.end field

.field private cacheCameraInfoBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CacheCameraInfoBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private camcorderCharacteristicsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private camcorderEncoderProfileFactoryImplProvider:Ljavax/inject/Provider;

.field private camcorderManagerImplProvider:Ljavax/inject/Provider;

.field private camera2OneCameraManagerImplProvider:Ljavax/inject/Provider;

.field private cameraActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/activity/main/CameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private cameraAppComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFactoryProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cameraAppMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/app/CameraApp;",
            ">;"
        }
    .end annotation
.end field

.field private cameraAppStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraAppStartup;",
            ">;"
        }
    .end annotation
.end field

.field private cameraDeviceManagerV2ImplProvider:Ljavax/inject/Provider;

.field private cameraDeviceOpenerFactoryProvider:Ljavax/inject/Provider;

.field private cameraDeviceVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private cameraSettingsActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/settings/CameraSettingsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private cameraSettingsFragmentMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private deviceOrientationImplProvider:Ljavax/inject/Provider;

.field private dirtyLensConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensConfig;",
            ">;"
        }
    .end annotation
.end field

.field private dirtyLensPluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private dirtyLensSettingsProvider:Ljavax/inject/Provider;

.field private fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

.field private fileNamerImplFactoryProvider:Ljavax/inject/Provider;

.field private fileNamerManagerImplProvider:Ljavax/inject/Provider;

.field private flagReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/FlagReader;",
            ">;"
        }
    .end annotation
.end field

.field private focusRingViewMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/ui/focus/FocusRingView;",
            ">;"
        }
    .end annotation
.end field

.field private gServicesFlagSourceProvider:Ljavax/inject/Provider;

.field private gcaActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            ">;"
        }
    .end annotation
.end field

.field private gcamUsageStatisticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private getExternalCacheFolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private hdrPlusPrewarmBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private imageReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private imageSourceFactoryProvider:Ljavax/inject/Provider;

.field private lensStateHistoryProvider:Ljavax/inject/Provider;

.field private locationProviderImplProvider:Ljavax/inject/Provider;

.field private managedSwitchPreferenceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/settings/ManagedSwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private maxNativeMemoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MaxNativeMemory;",
            ">;"
        }
    .end annotation
.end field

.field private mcdlOneCameraOpenerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mediaSaverImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/MediaSaverImpl;",
            ">;"
        }
    .end annotation
.end field

.field private memoryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;"
        }
    .end annotation
.end field

.field private noOpPrewarmServiceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/prewarm/NoOpPrewarmService;",
            ">;"
        }
    .end annotation
.end field

.field private nonSharedImageSourceFactoryProvider:Ljavax/inject/Provider;

.field private oneCameraSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSelector;",
            ">;"
        }
    .end annotation
.end field

.field private processingServiceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/processing/ProcessingService;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdviceSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideApiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppContentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifecycle/AppLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppLifetimeImplProvider:Ljavax/inject/Provider;

.field private provideAppLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private provideBurstAutoGenArtifactsSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideBurstModeSmartBurstSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideCamcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;

.field private provideCamcorderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCamcorderProfileFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/CamcorderProfileFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraDeviceManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManagerV2;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraHandlerThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraManagerExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraManagerHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraPanoOrientationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCodecManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/MediaCodecManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentValuesProxyFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private provideCountdownDurationSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideCountingDownStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideDcimCameraFolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultFeatureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultScheduledExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceOrientationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/deviceorientation/DeviceOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private provideDirtyLensHistoryProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;",
            ">;"
        }
    .end annotation
.end field

.field private provideDiskCacheFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideEvScrollingStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideFatalErrorBroadcasterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideFileNamerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

.field private provideGcamConfigProvider:Ljavax/inject/Provider;

.field private provideGlobalTicketPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideGridLinesModeSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideGservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideHasSwipedToVideoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideHdrPlusRawOutSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideHdrPlusSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;"
        }
    .end annotation
.end field

.field private provideHdrSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideIOExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideIOExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageBackendProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageFileFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideIndicatorBitmapCacheProvider:Ljavax/inject/Provider;
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

.field private provideIndicatorCachePreInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideIndicatorUpdateServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/location/LocationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaRecorderExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaRecorderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/MediaRecorderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideMegaPixelFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private provideMemoryQueryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryQuery;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOneCameraDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideOneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOneCameraOpenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;"
        }
    .end annotation
.end field

.field private provideOneCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFactoryProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providePanoramaFileFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private providePerLaunchPropertyResetterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/PropertyResetter;",
            ">;"
        }
    .end annotation
.end field

.field private providePersistentInputSurfaceFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providePictureSizeLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/PictureSizeLoader;",
            ">;"
        }
    .end annotation
.end field

.field private providePowerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePreviewAreaRectFProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private providePrewarmTimeoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Timeout;",
            ">;"
        }
    .end annotation
.end field

.field private provideProcessingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideReprocessingOutputReadExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideReprocessingSubmitExecutorrProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private provideShotFailureHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideSoftwareAsyncImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private provideStorageSpaceCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageSpaceChecker;",
            ">;"
        }
    .end annotation
.end field

.field private provideTraceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private provideVariableFpsRangeChooserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideo60fpsSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Video60FpsSetting;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoFileFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private provideVolumeKeyActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideWhiteBalancePropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;"
        }
    .end annotation
.end field

.field private providesGcamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;"
        }
    .end annotation
.end field

.field private releaseFlagsProvider:Ljavax/inject/Provider;

.field private sceneChangeMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            ">;"
        }
    .end annotation
.end field

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

.field private shotFailureHandlerImplProvider:Ljavax/inject/Provider;

.field private storageImplProvider:Ljavax/inject/Provider;

.field private strictModePolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/StrictModePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private systemServiceProvider:Ljavax/inject/Provider;

.field private toasterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Toaster;",
            ">;"
        }
    .end annotation
.end field

.field private topRightWeightedLayoutMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/ui/TopRightWeightedLayout;",
            ">;"
        }
    .end annotation
.end field

.field private usageStatisticsUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatisticsUtil;",
            ">;"
        }
    .end annotation
.end field

.field private videoFileGeneratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/io/VideoFileGenerator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)V
    .locals 17

    .prologue
    .line 1467
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2481
    invoke-static {}, Lcom/android/camera/util/UtilModule_ProvideSystemPropertiesFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 3023
    new-instance v2, Lcom/android/camera/util/flags/AdbFlagSource_Factory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/flags/AdbFlagSource_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2481
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->adbFlagSourceProvider:Ljavax/inject/Provider;

    .line 2484
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$100(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    move-result-object v1

    .line 3026
    new-instance v2, Lcom/google/android/apps/camera/inject/app/ApplicationModule_ProvideAppContentResolverFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/ApplicationModule_ProvideAppContentResolverFactory;-><init>(Lcom/google/android/apps/camera/inject/app/ApplicationModule;)V

    .line 2484
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContentResolverProvider:Ljavax/inject/Provider;

    .line 2486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContentResolverProvider:Ljavax/inject/Provider;

    .line 4024
    new-instance v2, Lcom/android/camera/util/flags/GServicesFlagSource_Factory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/flags/GServicesFlagSource_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2487
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->gServicesFlagSourceProvider:Ljavax/inject/Provider;

    .line 2490
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$200(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/debug/DebugModule;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/debug/DebugModule_ProvideLoggerFactoryFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6AOJLCSNK8PB2ELJKQRR4ELM6AEP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/debug/DebugModule;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 2492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->adbFlagSourceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->gServicesFlagSourceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 4040
    new-instance v4, Lcom/android/camera/util/flags/FlagReader_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/util/flags/FlagReader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2493
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->flagReaderProvider:Ljavax/inject/Provider;

    .line 2497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->flagReaderProvider:Ljavax/inject/Provider;

    .line 5022
    new-instance v2, Lcom/android/camera/util/flags/ReleaseFlags_Factory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/flags/ReleaseFlags_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2497
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->releaseFlagsProvider:Ljavax/inject/Provider;

    .line 2499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->releaseFlagsProvider:Ljavax/inject/Provider;

    .line 5025
    new-instance v2, Lcom/android/camera/util/flags/FlagsModule_ProvideFlagsFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/flags/FlagsModule_ProvideFlagsFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2500
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 2502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 5029
    new-instance v3, Lcom/android/camera/debug/StrictModePolicy_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/debug/StrictModePolicy_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2503
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->strictModePolicyProvider:Ljavax/inject/Provider;

    .line 2506
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$100(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    move-result-object v1

    .line 6024
    new-instance v2, Lcom/google/android/apps/camera/inject/app/ApplicationModule_ProvideAppContextFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/ApplicationModule_ProvideAppContextFactory;-><init>(Lcom/google/android/apps/camera/inject/app/ApplicationModule;)V

    .line 2506
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 2508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 7023
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServiceProvider_Factory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServiceProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2509
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 2511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 7029
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideNotificationManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideNotificationManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2512
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2517
    invoke-static {}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideDefaultScheduledExecutorServiceFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 2515
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    .line 2519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    .line 7031
    new-instance v2, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideDefaultExecutorServiceFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideDefaultExecutorServiceFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2520
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorServiceProvider:Ljavax/inject/Provider;

    .line 2527
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST1489QMIR34CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1EDSMSOPF8LS6AORLEHNN4JBFCHQMOPBJ4H0MSP3IDTKM8GBGE12NGPB3ELQ6USJJ9LNM8TBCCKTG____(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/behavior/Behaviors;

    move-result-object v1

    .line 8026
    new-instance v2, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideMainThreadFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideMainThreadFactory;-><init>(Lcom/android/camera/behavior/Behaviors;)V

    .line 2525
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 2529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 8036
    new-instance v3, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideDefaultExecutorFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideDefaultExecutorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2530
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorProvider:Ljavax/inject/Provider;

    .line 2534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 9029
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideCameraManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideCameraManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2535
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    .line 2538
    invoke-static {}, Lcom/android/camera/util/UtilModule_ProvideApiHelperFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 2542
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$400(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/debug/trace/TraceModule;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 9030
    new-instance v3, Lcom/android/camera/debug/trace/TraceModule_ProvideTraceFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/debug/trace/TraceModule_ProvideTraceFactory;-><init>(Lcom/android/camera/debug/trace/TraceModule;Ljavax/inject/Provider;)V

    .line 2541
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 2544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 9041
    new-instance v4, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2545
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camera2OneCameraManagerImplProvider:Ljavax/inject/Provider;

    .line 2548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camera2OneCameraManagerImplProvider:Ljavax/inject/Provider;

    .line 10029
    new-instance v2, Lcom/android/camera/one/v2/OneCameraAppConfigModule_ProvideOneCameraManagerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/OneCameraAppConfigModule_ProvideOneCameraManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2549
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    .line 2556
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$500$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST1489QMIR34CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ9LNM8TBCCKTG____(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContentResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 10042
    new-instance v4, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2554
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    .line 2562
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST1489QMIR34CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1EDSMSOPF8LS6AORLEHNN4JBFCHQMOPBJ4H0MSP3IDTKM8GBGE12NGPB3ELQ6USJJ9LNM8TBCCKTG____(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/behavior/Behaviors;

    move-result-object v1

    .line 2561
    invoke-static {v1}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideHandlerFactoryFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN6UBECCNKAU35CDQN8RRI9LNM8TBCCLPI8GBECHP6UQB485O70HBOCLHNAT3FE9PKQRR4ELM6AEP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/behavior/Behaviors;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    .line 2568
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHandlerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorProvider:Ljavax/inject/Provider;

    .line 10050
    new-instance v5, Lcom/android/camera/device/CameraDeviceVerifier_Factory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/device/CameraDeviceVerifier_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2565
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceVerifierProvider:Ljavax/inject/Provider;

    .line 2572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceVerifierProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 10054
    new-instance v5, Lcom/android/camera/one/v2/OneCameraAppConfigModule_ProvideDefaultFeatureConfigFactory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/one/v2/OneCameraAppConfigModule_ProvideDefaultFeatureConfigFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2573
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultFeatureConfigProvider:Ljavax/inject/Provider;

    .line 2580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 11023
    new-instance v2, Lcom/google/android/apps/camera/inject/app/AndroidServices_Factory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/AndroidServices_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2581
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->androidServicesProvider:Ljavax/inject/Provider;

    .line 2583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->androidServicesProvider:Ljavax/inject/Provider;

    .line 11040
    new-instance v4, Lcom/android/camera/memory/MaxNativeMemory_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/memory/MaxNativeMemory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2584
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->maxNativeMemoryProvider:Ljavax/inject/Provider;

    .line 2588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->maxNativeMemoryProvider:Ljavax/inject/Provider;

    .line 2592
    invoke-static {}, Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 12029
    new-instance v3, Lcom/android/camera/memory/MemoryManager_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/memory/MemoryManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2589
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 2597
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 2596
    invoke-static {v1}, Lcom/android/camera/stats/GcamUsageStatistics_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2595
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    .line 2599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 12030
    new-instance v3, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2600
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;

    .line 2604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->memoryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->androidServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;

    .line 12068
    new-instance v1, Lcom/android/camera/hdrplus/HdrPlusModule_ProvideGcamConfigFactory;

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/hdrplus/HdrPlusModule_ProvideGcamConfigFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2605
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGcamConfigProvider:Ljavax/inject/Provider;

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultFeatureConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGcamConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 13061
    new-instance v1, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2615
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providesGcamProvider:Ljavax/inject/Provider;

    .line 2623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providesGcamProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultFeatureConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 14040
    new-instance v4, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2624
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->hdrPlusPrewarmBehaviorProvider:Ljavax/inject/Provider;

    .line 2628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 15030
    new-instance v3, Lcom/android/camera/app/CacheCameraInfoBehavior_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/app/CacheCameraInfoBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2629
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cacheCameraInfoBehaviorProvider:Ljavax/inject/Provider;

    .line 2632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorProvider:Ljavax/inject/Provider;

    .line 15037
    new-instance v3, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideDiskCacheFutureFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideDiskCacheFutureFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2633
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDiskCacheFutureProvider:Ljavax/inject/Provider;

    .line 2639
    invoke-static {}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorUpdateServiceFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 2638
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorUpdateServiceProvider:Ljavax/inject/Provider;

    .line 2641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDiskCacheFutureProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorUpdateServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 15047
    new-instance v4, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2642
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorBitmapCacheProvider:Ljavax/inject/Provider;

    .line 2648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorBitmapCacheProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 16039
    new-instance v3, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2649
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorCachePreInitializerProvider:Ljavax/inject/Provider;

    .line 2653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->hdrPlusPrewarmBehaviorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cacheCameraInfoBehaviorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorCachePreInitializerProvider:Ljavax/inject/Provider;

    .line 16049
    new-instance v5, Lcom/android/camera/app/CameraAppStartup_Factory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/app/CameraAppStartup_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2654
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraAppStartupProvider:Ljavax/inject/Provider;

    .line 2660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->strictModePolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2664
    invoke-static {}, Lcom/android/camera/util/app/AppUtilsModule_ProvideApplicationVersionFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraAppStartupProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 16054
    new-instance v1, Lcom/android/camera/app/CameraApp_MembersInjector;

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/app/CameraApp_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2661
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraAppMembersInjector:Ldagger/MembersInjector;

    .line 2669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 17037
    new-instance v3, Lcom/android/camera/util/lifetime/AppLifetimeModule_ProvideAppLifetimeImplFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/util/lifetime/AppLifetimeModule_ProvideAppLifetimeImplFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2670
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeImplProvider:Ljavax/inject/Provider;

    .line 2674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeImplProvider:Ljavax/inject/Provider;

    .line 18026
    new-instance v2, Lcom/android/camera/util/lifetime/AppLifetimeModule_ProvideAppLifetimeFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/lifetime/AppLifetimeModule_ProvideAppLifetimeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2675
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    .line 2678
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$600(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    move-result-object v1

    .line 19023
    new-instance v2, Lcom/android/camera/util/lifecycle/AppLifecycleModule_ProvideAppLifecycleFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/lifecycle/AppLifecycleModule_ProvideAppLifecycleFactory;-><init>(Lcom/android/camera/util/lifecycle/AppLifecycleModule;)V

    .line 2678
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifecycleProvider:Ljavax/inject/Provider;

    .line 2680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifecycleProvider:Ljavax/inject/Provider;

    .line 19034
    new-instance v4, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2681
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->gcaActivityMembersInjector:Ldagger/MembersInjector;

    .line 2684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 19041
    new-instance v5, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2685
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraActivityMembersInjector:Ldagger/MembersInjector;

    .line 2691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 20035
    new-instance v4, Lcom/android/camera/settings/CameraSettingsActivity_MembersInjector;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/settings/CameraSettingsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2692
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraSettingsActivityMembersInjector:Ldagger/MembersInjector;

    .line 2698
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaCodecManagerImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 21028
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideCodecManagerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideCodecManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2696
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCodecManagerProvider:Ljavax/inject/Provider;

    .line 2700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCodecManagerProvider:Ljavax/inject/Provider;

    .line 21034
    new-instance v3, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2701
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camcorderEncoderProfileFactoryImplProvider:Ljavax/inject/Provider;

    .line 2704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camcorderEncoderProfileFactoryImplProvider:Ljavax/inject/Provider;

    .line 22030
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderEncoderProfileFactoryFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderEncoderProfileFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2705
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;

    .line 2712
    invoke-static {}, Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 23030
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderProfileFactoryFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderProfileFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2710
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderProfileFactoryProvider:Ljavax/inject/Provider;

    .line 2714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderProfileFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    .line 23042
    new-instance v4, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2715
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camcorderCharacteristicsFactoryProvider:Ljavax/inject/Provider;

    .line 2721
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderModule_ProvideMediaRecorderExecutorServiceFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMediaRecorderExecutorServiceProvider:Ljavax/inject/Provider;

    .line 2723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 24027
    new-instance v2, Lcom/android/camera/storage/StorageModule_ProvideImageFileFormatFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/storage/StorageModule_ProvideImageFileFormatFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2724
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideImageFileFormatProvider:Ljavax/inject/Provider;

    .line 2726
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 25027
    new-instance v2, Lcom/android/camera/storage/StorageModule_ProvidePanoramaFileFormatFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/storage/StorageModule_ProvidePanoramaFileFormatFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2727
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePanoramaFileFormatProvider:Ljavax/inject/Provider;

    .line 2729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 26027
    new-instance v2, Lcom/android/camera/storage/StorageModule_ProvideVideoFileFormatFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/storage/StorageModule_ProvideVideoFileFormatFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2730
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVideoFileFormatProvider:Ljavax/inject/Provider;

    .line 2732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideImageFileFormatProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePanoramaFileFormatProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVideoFileFormatProvider:Ljavax/inject/Provider;

    .line 26038
    new-instance v4, Lcom/android/camera/storage/FileNamerImplFactory_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/storage/FileNamerImplFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2733
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->fileNamerImplFactoryProvider:Ljavax/inject/Provider;

    .line 2738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->fileNamerImplFactoryProvider:Ljavax/inject/Provider;

    .line 27023
    new-instance v2, Lcom/android/camera/storage/FileNamerManagerImpl_Factory;

    invoke-direct {v2, v1}, Lcom/android/camera/storage/FileNamerManagerImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2739
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->fileNamerManagerImplProvider:Ljavax/inject/Provider;

    .line 2741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->fileNamerManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindFileNamerManagerProvider:Ljavax/inject/Provider;

    .line 2744
    invoke-static {}, Lcom/android/camera/storage/StorageModule_ProvideDcimCameraFolderFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 2746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindFileNamerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 27035
    new-instance v3, Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2747
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFileNamerProvider:Ljavax/inject/Provider;

    .line 2750
    invoke-static {}, Lcom/android/camera/storage/CameraFileUtilImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindCameraFileUtilProvider:Ljavax/inject/Provider;

    .line 2753
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraHandlerThreadProvider:Ljavax/inject/Provider;

    .line 2755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 28023
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory_Factory;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 2756
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->imageReaderFactoryProvider:Ljavax/inject/Provider;

    .line 2758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->imageReaderFactoryProvider:Ljavax/inject/Provider;

    .line 28029
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideImageReaderFactoryFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideImageReaderFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2759
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideImageReaderFactoryProvider:Ljavax/inject/Provider;

    .line 2765
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderFactoryImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 28030
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideMediaRecorderFactoryFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideMediaRecorderFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2763
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMediaRecorderFactoryProvider:Ljavax/inject/Provider;

    .line 2767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 2771
    invoke-static {}, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactoryMncImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 2772
    invoke-static {}, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactoryLmpImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 28049
    new-instance v4, Lcom/android/camera/camcorder/CamcorderModule_ProvidePersistentInputSurfaceFactoryFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/camcorder/CamcorderModule_ProvidePersistentInputSurfaceFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2768
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePersistentInputSurfaceFactoryProvider:Ljavax/inject/Provider;

    .line 2774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 29037
    new-instance v3, Lcom/android/camera/storage/StorageModule_ProvideStorageSpaceCheckerFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/storage/StorageModule_ProvideStorageSpaceCheckerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2775
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideStorageSpaceCheckerProvider:Ljavax/inject/Provider;

    .line 2782
    invoke-static {}, Lcom/android/camera/camcorder/camera/VariableFpsRangeChooserImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 30030
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideVariableFpsRangeChooserFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideVariableFpsRangeChooserFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2780
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVariableFpsRangeChooserProvider:Ljavax/inject/Provider;

    .line 2784
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDcimCameraFolderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFileNamerProvider:Ljavax/inject/Provider;

    .line 31030
    new-instance v3, Lcom/android/camera/camcorder/io/VideoFileGenerator_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/camcorder/io/VideoFileGenerator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2785
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->videoFileGeneratorProvider:Ljavax/inject/Provider;

    .line 2788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camcorderCharacteristicsFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderProfileFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMediaRecorderExecutorServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFileNamerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindCameraFileUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraHandlerThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideImageReaderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMediaRecorderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePersistentInputSurfaceFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideStorageSpaceCheckerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVariableFpsRangeChooserProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->videoFileGeneratorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 31136
    new-instance v1, Lcom/android/camera/camcorder/CamcorderManagerImpl_Factory;

    invoke-direct/range {v1 .. v16}, Lcom/android/camera/camcorder/CamcorderManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2789
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camcorderManagerImplProvider:Ljavax/inject/Provider;

    .line 2806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->camcorderManagerImplProvider:Ljavax/inject/Provider;

    .line 32028
    new-instance v2, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderManagerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2807
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderManagerProvider:Ljavax/inject/Provider;

    .line 2810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderManagerProvider:Ljavax/inject/Provider;

    .line 32046
    new-instance v4, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2811
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePictureSizeLoaderProvider:Ljavax/inject/Provider;

    .line 2818
    invoke-static {}, Lcom/android/camera/util/UtilModule_ProvideMegaPixelFormatFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMegaPixelFormatProvider:Ljavax/inject/Provider;

    .line 2820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePictureSizeLoaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->androidServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMegaPixelFormatProvider:Ljavax/inject/Provider;

    .line 33041
    new-instance v5, Lcom/android/camera/settings/CameraSettingsActivity_CameraSettingsFragment_MembersInjector;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/settings/CameraSettingsActivity_CameraSettingsFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2821
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraSettingsFragmentMembersInjector:Ldagger/MembersInjector;

    .line 2827
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 34028
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideSharedPreferencesFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideSharedPreferencesFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2828
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 2831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 34035
    new-instance v3, Lcom/android/camera/settings/AppSettingsModule_ProvideSettingsManagerFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/settings/AppSettingsModule_ProvideSettingsManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2832
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSettingsManagerProvider:Ljavax/inject/Provider;

    .line 2836
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSettingsManagerProvider:Ljavax/inject/Provider;

    .line 35020
    new-instance v2, Lcom/android/camera/settings/ManagedSwitchPreference_MembersInjector;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/ManagedSwitchPreference_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    .line 2837
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->managedSwitchPreferenceMembersInjector:Ldagger/MembersInjector;

    .line 2839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 36018
    new-instance v2, Lcom/android/camera/ui/focus/FocusRingView_MembersInjector;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/focus/FocusRingView_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    .line 2839
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->focusRingViewMembersInjector:Ldagger/MembersInjector;

    .line 2841
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 36020
    new-instance v2, Lcom/android/camera/ui/BottomBarSideControls_MembersInjector;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/BottomBarSideControls_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    .line 2842
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bottomBarSideControlsMembersInjector:Ldagger/MembersInjector;

    .line 2844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 37020
    new-instance v2, Lcom/android/camera/ui/TopRightWeightedLayout_MembersInjector;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/TopRightWeightedLayout_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    .line 2845
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->topRightWeightedLayoutMembersInjector:Ldagger/MembersInjector;

    .line 2847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    .line 37029
    new-instance v2, Lcom/android/camera/prewarm/PrewarmModule_ProvidePrewarmTimeoutFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/prewarm/PrewarmModule_ProvidePrewarmTimeoutFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2848
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePrewarmTimeoutProvider:Ljavax/inject/Provider;

    .line 2854
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePrewarmTimeoutProvider:Ljavax/inject/Provider;

    .line 38026
    new-instance v3, Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2853
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->noOpPrewarmServiceMembersInjector:Ldagger/MembersInjector;

    .line 2857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 38035
    new-instance v3, Lcom/android/camera/processing/ProcessingModule_ProvideProcessingServiceManagerFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/processing/ProcessingModule_ProvideProcessingServiceManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2858
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideProcessingServiceManagerProvider:Ljavax/inject/Provider;

    .line 2862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 39029
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvidePowerManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvidePowerManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2863
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 2865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 40029
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideLocalBroadcastManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideLocalBroadcastManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2866
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 2868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideProcessingServiceManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 40047
    new-instance v1, Lcom/android/camera/processing/ProcessingService_MembersInjector;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/ProcessingService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2869
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->processingServiceMembersInjector:Ldagger/MembersInjector;

    .line 2877
    invoke-static {}, Lcom/android/camera/error/FatalErrorBroadcaster_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 2879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 41029
    new-instance v2, Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideFatalErrorBroadcasterFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideFatalErrorBroadcasterFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2880
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 2883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 42029
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideKeyguardManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideKeyguardManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2884
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    .line 2886
    invoke-static {}, Lcom/android/camera/stats/UsageStatisticsUtil_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->usageStatisticsUtilProvider:Ljavax/inject/Provider;

    .line 2889
    invoke-static {}, Lcom/android/camera/device/CameraDeviceModule_ProvideCameraManagerHandlerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerHandlerProvider:Ljavax/inject/Provider;

    .line 2892
    invoke-static {}, Lcom/android/camera/device/CameraDeviceModule_ProvideCameraManagerExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerExecutorProvider:Ljavax/inject/Provider;

    .line 2894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    .line 2899
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 2901
    invoke-static {}, Lcom/google/android/apps/camera/util/time/IntervalClock_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v7

    .line 42066
    new-instance v1, Lcom/android/camera/device/CameraDeviceOpenerFactory_Factory;

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/device/CameraDeviceOpenerFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2895
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceOpenerFactoryProvider:Ljavax/inject/Provider;

    .line 2903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceOpenerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 2909
    invoke-static {}, Lcom/android/camera/device/CameraDeviceModule_ProvideActiveCameraDeviceTrackerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 42072
    new-instance v1, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2904
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceManagerV2ImplProvider:Ljavax/inject/Provider;

    .line 2914
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceManagerV2ImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifecycleProvider:Ljavax/inject/Provider;

    .line 43045
    new-instance v4, Lcom/android/camera/device/CameraDeviceModule_ProvideCameraDeviceManagerV2Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/device/CameraDeviceModule_ProvideCameraDeviceManagerV2Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2915
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraDeviceManagerV2Provider:Ljavax/inject/Provider;

    .line 2921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraDeviceManagerV2Provider:Ljavax/inject/Provider;

    .line 44028
    new-instance v2, Lcom/android/camera/device/CameraDeviceModule_ProvideCameraDeviceManagerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/device/CameraDeviceModule_ProvideCameraDeviceManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2922
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 2926
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSettingsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 2927
    invoke-static {v1, v2}, Lcom/android/camera/settings/Settings_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 2929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    .line 44035
    new-instance v3, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2930
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 2934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 45027
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2935
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrSettingProvider:Ljavax/inject/Provider;

    .line 2937
    invoke-static/range {p0 .. p0}, Ldagger/internal/InstanceFactory;->create$5166KOBMC4NMOOBECSNKUOJACLHN8EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraAppComponentProvider:Ljavax/inject/Provider;

    .line 2939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraAppComponentProvider:Ljavax/inject/Provider;

    .line 45029
    new-instance v2, Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraProviderFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraProviderFactory;-><init>(Ljavax/inject/Provider;)V

    .line 2940
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraProvider:Ljavax/inject/Provider;

    .line 45947
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraAppConfigModule_ProvideOneCameraDebugHelperFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraDebugHelperProvider:Ljavax/inject/Provider;

    .line 45949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 47030
    new-instance v3, Lcom/android/camera/debug/Toaster_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/debug/Toaster_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 45950
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->toasterProvider:Ljavax/inject/Provider;

    .line 45952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraDebugHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->toasterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 47064
    new-instance v1, Lcom/android/camera/one/v2/OneCameraSelector_Factory;

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/one/v2/OneCameraSelector_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 45953
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->oneCameraSelectorProvider:Ljavax/inject/Provider;

    .line 45961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->oneCameraSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultFeatureConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraDeviceManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    .line 48064
    new-instance v1, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 45962
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->mcdlOneCameraOpenerImplProvider:Ljavax/inject/Provider;

    .line 45970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->mcdlOneCameraOpenerImplProvider:Ljavax/inject/Provider;

    .line 49029
    new-instance v2, Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraOpenerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraOpenerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 45971
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraOpenerProvider:Ljavax/inject/Provider;

    .line 45973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50028
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideBurstAutoGenArtifactsSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideBurstAutoGenArtifactsSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 45974
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideBurstAutoGenArtifactsSettingProvider:Ljavax/inject/Provider;

    .line 45977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50029
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideBurstModeSmartBurstSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideBurstModeSmartBurstSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 45978
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideBurstModeSmartBurstSettingProvider:Ljavax/inject/Provider;

    .line 45984
    invoke-static {}, Lcom/android/camera/storage/mediastore/ContentValuesProxyImpl_Factory_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 50030
    new-instance v2, Lcom/android/camera/storage/mediastore/MediaStoreModule_ProvideContentValuesProxyFactoryFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/storage/mediastore/MediaStoreModule_ProvideContentValuesProxyFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 45982
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideContentValuesProxyFactoryProvider:Ljavax/inject/Provider;

    .line 45986
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindCameraFileUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideContentValuesProxyFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFileNamerProvider:Ljavax/inject/Provider;

    .line 50031
    new-instance v4, Lcom/android/camera/storage/StorageImpl_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/storage/StorageImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 45987
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->storageImplProvider:Ljavax/inject/Provider;

    .line 45996
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$700(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/debug/performance/MetricBuilderModule;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 50032
    new-instance v3, Lcom/android/camera/debug/performance/MetricBuilderModule_ProvideMetricBuilderFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/debug/performance/MetricBuilderModule_ProvideMetricBuilderFactory;-><init>(Lcom/android/camera/debug/performance/MetricBuilderModule;Ljavax/inject/Provider;)V

    .line 45994
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMetricBuilderProvider:Ljavax/inject/Provider;

    .line 45998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 50033
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideSensorManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideSensorManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 45999
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSensorManagerProvider:Ljavax/inject/Provider;

    .line 46001
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->toasterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 50034
    new-instance v5, Lcom/android/camera/error/ShotFailureHandlerImpl_Factory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/error/ShotFailureHandlerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46002
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->shotFailureHandlerImplProvider:Ljavax/inject/Provider;

    .line 46008
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->shotFailureHandlerImplProvider:Ljavax/inject/Provider;

    .line 50035
    new-instance v2, Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideShotFailureHandlerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideShotFailureHandlerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46009
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideShotFailureHandlerProvider:Ljavax/inject/Provider;

    .line 46012
    invoke-static {}, Lcom/android/camera/storage/FilesProxyImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindFilesProxyProvider:Ljavax/inject/Provider;

    .line 46014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->storageImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindStorageProvider:Ljavax/inject/Provider;

    .line 46016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContentResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindStorageProvider:Ljavax/inject/Provider;

    .line 50036
    new-instance v3, Lcom/android/camera/storage/MediaSaverImpl_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/storage/MediaSaverImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46017
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->mediaSaverImplProvider:Ljavax/inject/Provider;

    .line 46020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->mediaSaverImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindMediaSaverProvider:Ljavax/inject/Provider;

    .line 46022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContentResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDcimCameraFolderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideShotFailureHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindFileNamerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindFilesProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindMediaSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindStorageProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 50037
    new-instance v1, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46023
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCaptureSessionManagerProvider:Ljavax/inject/Provider;

    .line 46035
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 50038
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideLocationManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideLocationManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46036
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLocationManagerProvider:Ljavax/inject/Provider;

    .line 46038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSettingsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLocationManagerProvider:Ljavax/inject/Provider;

    .line 50039
    new-instance v4, Lcom/android/camera/location/LocationProviderImpl_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/location/LocationProviderImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46039
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->locationProviderImplProvider:Ljavax/inject/Provider;

    .line 46044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->locationProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 50040
    new-instance v4, Lcom/android/camera/location/LocationModule_ProvideLocationProviderFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/location/LocationModule_ProvideLocationProviderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46045
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLocationProvider:Ljavax/inject/Provider;

    .line 46051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 50041
    new-instance v4, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46052
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->deviceOrientationImplProvider:Ljavax/inject/Provider;

    .line 46055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->deviceOrientationImplProvider:Ljavax/inject/Provider;

    .line 50042
    new-instance v2, Lcom/android/camera/util/deviceorientation/DeviceOrientationModule_ProvideDeviceOrientationFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/util/deviceorientation/DeviceOrientationModule_ProvideDeviceOrientationFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46056
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDeviceOrientationProvider:Ljavax/inject/Provider;

    .line 46060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50043
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideCountdownDurationSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideCountdownDurationSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46061
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCountdownDurationSettingProvider:Ljavax/inject/Provider;

    .line 46064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50044
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusRawOutSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusRawOutSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46065
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrPlusRawOutSettingProvider:Ljavax/inject/Provider;

    .line 46068
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50045
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideGridLinesModeSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideGridLinesModeSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46069
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGridLinesModeSettingProvider:Ljavax/inject/Provider;

    .line 46073
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$100(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    move-result-object v1

    .line 50046
    new-instance v2, Lcom/google/android/apps/camera/inject/app/ApplicationModule_ProvideAppResourcesFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/ApplicationModule_ProvideAppResourcesFactory;-><init>(Lcom/google/android/apps/camera/inject/app/ApplicationModule;)V

    .line 46073
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppResourcesProvider:Ljavax/inject/Provider;

    .line 46075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppResourcesProvider:Ljavax/inject/Provider;

    .line 50047
    new-instance v3, Lcom/android/camera/settings/AppSettingsModule_ProvideVolumeKeyActionFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/settings/AppSettingsModule_ProvideVolumeKeyActionFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46076
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVolumeKeyActionProvider:Ljavax/inject/Provider;

    .line 46080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 50048
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideAccessibilityManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideAccessibilityManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46081
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 46083
    invoke-static {}, Lcom/android/camera/advice/dirtylens/DirtyLensConfig_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    .line 46085
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    .line 50049
    new-instance v3, Lcom/android/camera/advice/dirtylens/DirtyLensSettings_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/advice/dirtylens/DirtyLensSettings_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46086
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensSettingsProvider:Ljavax/inject/Provider;

    .line 46091
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$800(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    .line 50050
    new-instance v3, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory;-><init>(Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;Ljavax/inject/Provider;)V

    .line 46090
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDirtyLensHistoryProxyProvider:Ljavax/inject/Provider;

    .line 46093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDirtyLensHistoryProxyProvider:Ljavax/inject/Provider;

    .line 50051
    new-instance v3, Lcom/android/camera/advice/dirtylens/LensStateHistory_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/advice/dirtylens/LensStateHistory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46094
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->lensStateHistoryProvider:Ljavax/inject/Provider;

    .line 46097
    invoke-static {}, Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->adviceYuvNativeUtilProvider:Ljavax/inject/Provider;

    .line 46099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensSettingsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->lensStateHistoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->adviceYuvNativeUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppResourcesProvider:Ljavax/inject/Provider;

    .line 50052
    new-instance v1, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46100
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensPluginProvider:Ljavax/inject/Provider;

    .line 46108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->dirtyLensPluginProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    .line 50053
    new-instance v3, Lcom/android/camera/advice/AdviceModules_AppAdviceModule_ProvideAdviceManagerFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/advice/AdviceModules_AppAdviceModule_ProvideAdviceManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46109
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAdviceManagerProvider:Ljavax/inject/Provider;

    .line 46115
    invoke-static {}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideIOExecutorServiceFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 46114
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIOExecutorServiceProvider:Ljavax/inject/Provider;

    .line 46117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIOExecutorServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    .line 50054
    new-instance v3, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideIOExecutorFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideIOExecutorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46118
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIOExecutorProvider:Ljavax/inject/Provider;

    .line 46122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50055
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideHasSwipedToVideoFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideHasSwipedToVideoFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46123
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHasSwipedToVideoProvider:Ljavax/inject/Provider;

    .line 46126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50056
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideVideo60fpsSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideVideo60fpsSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46127
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVideo60fpsSettingProvider:Ljavax/inject/Provider;

    .line 46131
    invoke-static {}, Lcom/android/camera/settings/AppSettingsModule_ProvideWhiteBalancePropertyFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideWhiteBalancePropertyProvider:Ljavax/inject/Provider;

    .line 46133
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AeController_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->aeControllerProvider:Ljavax/inject/Provider;

    .line 46136
    invoke-static {}, Lcom/android/camera/settings/AppSettingsModule_ProvideEvScrollingStateFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideEvScrollingStateProvider:Ljavax/inject/Provider;

    .line 46138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideProcessingServiceManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppResourcesProvider:Ljavax/inject/Provider;

    .line 50057
    new-instance v3, Lcom/android/camera/processing/ProcessingModule_ProvideImageBackendFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/processing/ProcessingModule_ProvideImageBackendFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46139
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideImageBackendProvider:Ljavax/inject/Provider;

    .line 46143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->memoryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->maxNativeMemoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideProcessingServiceManagerProvider:Ljavax/inject/Provider;

    .line 50058
    new-instance v4, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46144
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    .line 46150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppResourcesProvider:Ljavax/inject/Provider;

    .line 50059
    new-instance v3, Lcom/android/camera/settings/AppSettingsModule_ProvideCameraPanoOrientationFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/settings/AppSettingsModule_ProvideCameraPanoOrientationFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46151
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraPanoOrientationProvider:Ljavax/inject/Provider;

    .line 46155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->systemServiceProvider:Ljavax/inject/Provider;

    .line 50060
    new-instance v2, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideActivityManagerFactory;

    invoke-direct {v2, v1}, Lcom/google/android/apps/camera/inject/app/SystemServicesModule_ProvideActivityManagerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46156
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 46158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 50061
    new-instance v2, Lcom/android/camera/memory/MemoryModule_ProvideMemoryQueryFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/memory/MemoryModule_ProvideMemoryQueryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46159
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMemoryQueryProvider:Ljavax/inject/Provider;

    .line 46162
    invoke-static {}, Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCountingDownStateProvider:Ljavax/inject/Provider;

    .line 46164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideWhiteBalancePropertyProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrPlusSettingProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    .line 50062
    new-instance v4, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46165
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePerLaunchPropertyResetterProvider:Ljavax/inject/Provider;

    .line 46172
    invoke-static {}, Lcom/android/camera/settings/AppSettingsModule_ProvidePreviewAreaRectFFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePreviewAreaRectFProvider:Ljavax/inject/Provider;

    .line 46177
    invoke-static/range {p1 .. p1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->access$900(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    .line 50063
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46175
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGlobalTicketPoolProvider:Ljavax/inject/Provider;

    .line 46181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGlobalTicketPoolProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->imageReaderFactoryProvider:Ljavax/inject/Provider;

    .line 50064
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46182
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->imageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 46189
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideEvScrollingStateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCountingDownStateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    .line 46193
    invoke-static {}, Lcom/google/android/apps/camera/util/time/UtcClock_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v6

    .line 50065
    new-instance v1, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 46187
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->sceneChangeMonitorProvider:Ljavax/inject/Provider;

    .line 46195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    .line 50066
    new-instance v2, Lcom/android/camera/settings/AppSettingsModule_ProvideAdviceSettingFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/settings/AppSettingsModule_ProvideAdviceSettingFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46196
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAdviceSettingProvider:Ljavax/inject/Provider;

    .line 46204
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareAsyncImageSaverModule_ProvideSoftwareJpegEncoderExecutableFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 50067
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareAsyncImageSaverModule_ProvideSoftwareAsyncImageSaverFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareAsyncImageSaverModule_ProvideSoftwareAsyncImageSaverFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46200
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSoftwareAsyncImageSaverProvider:Ljavax/inject/Provider;

    .line 46206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->imageReaderFactoryProvider:Ljavax/inject/Provider;

    .line 50068
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagesource/NonSharedImageSourceFactory_Factory;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/NonSharedImageSourceFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 46207
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->nonSharedImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 46213
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingConfigModule_ProvideReprocessingSubmitExecutorrFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 46211
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideReprocessingSubmitExecutorrProvider:Ljavax/inject/Provider;

    .line 46218
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingConfigModule_ProvideReprocessingOutputReadExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 46216
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideReprocessingOutputReadExecutorProvider:Ljavax/inject/Provider;

    .line 46220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    .line 50069
    new-instance v2, Lcom/android/camera/storage/StorageModule_GetExternalCacheFolderFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/storage/StorageModule_GetExternalCacheFolderFactory;-><init>(Ljavax/inject/Provider;)V

    .line 46221
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent;->getExternalCacheFolderProvider:Ljavax/inject/Provider;

    .line 1471
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;B)V
    .locals 0

    .prologue
    .line 1122
    invoke-direct {p0, p1}, Lcom/android/camera/app/DaggerCameraAppComponent;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideEvScrollingStateProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideImageBackendProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideShotFailureHandlerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindCameraFileUtilProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraPanoOrientationProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCountingDownStateProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePerLaunchPropertyResetterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePreviewAreaRectFProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMemoryQueryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorUpdateServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifetimeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppLifecycleProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraDeviceVerifierProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->settingsProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->imageSourceFactoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSettingsManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHandlerFactoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->sceneChangeMonitorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAdviceSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSoftwareAsyncImageSaverProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->nonSharedImageSourceFactoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideReprocessingSubmitExecutorrProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideReprocessingOutputReadExecutorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindStorageProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGcamConfigProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMainThreadProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$18000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->providesGcamProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$18100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->getExternalCacheFolderProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$18200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraDebugHelperProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$18300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$18400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$18500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->toasterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideApiHelperProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->usageStatisticsUtilProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->androidServicesProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContextProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideTraceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGservicesHelperProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->storageImplProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideProcessingServiceManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideBurstAutoGenArtifactsSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideBurstModeSmartBurstSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultExecutorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrPlusSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultFeatureConfigProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideOneCameraOpenerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideMetricBuilderProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraDeviceManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->providePrewarmTimeoutProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCaptureSessionManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->bindMediaSaverProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->memoryManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDeviceOrientationProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideStorageSpaceCheckerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDefaultScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHasSwipedToVideoProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFlagsProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIndicatorBitmapCacheProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppResourcesProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVolumeKeyActionProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideSensorManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideLocationProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideFileNamerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideDcimCameraFolderProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCountdownDurationSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideHdrPlusRawOutSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideGridLinesModeSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAdviceManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideAppContentResolverProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCamcorderManagerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideCameraDeviceManagerV2Provider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideIOExecutorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideVideo60fpsSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->provideWhiteBalancePropertyProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->aeControllerProvider:Ljavax/inject/Provider;

    return-object v0
.end method


# virtual methods
.method public final configureOneCameraFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UP35EPKM6P9F8DGMQPBIC526ATJ9CDIKQRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GK8PBGCLN68PBECDKMASQDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UJRECL1M2RB5E9GL6PBKEHKMSPRJ9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRLEHKMOBQGD5HN8TBICL1MURJ6D5JNASJ1EHKMURIDDTI7AR357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR3DTN6CQB75T7MSPA3C5MMASJ18PGM6T3FE9SJM___(Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;Lcom/google/android/gms/internal/zzahv;Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Lcom/android/camera/one/v2/util/PictureConfigurationModule;)Lcom/android/camera/one/v2/config/OneCameraFactory;
    .locals 7

    .prologue
    .line 2301
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;Lcom/google/android/gms/internal/zzahv;Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Lcom/android/camera/one/v2/util/PictureConfigurationModule;B)V

    return-object v0
.end method

.method public final createCameraActivityComponent(Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;)Lcom/android/camera/activity/main/CameraActivityComponent;
    .locals 6

    .prologue
    .line 2285
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;B)V

    return-object v0
.end method

.method public final createViewerActivityComponent(Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;)Lcom/google/android/apps/refocus/ViewerActivityComponent;
    .locals 2

    .prologue
    .line 2292
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;B)V

    return-object v0
.end method

.method public final inject(Lcom/android/camera/activity/gca/GcaActivity;)V
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->gcaActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2233
    return-void
.end method

.method public final inject(Lcom/android/camera/activity/main/CameraActivity;)V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2238
    return-void
.end method

.method public final inject(Lcom/android/camera/app/CameraApp;)V
    .locals 1

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraAppMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2228
    return-void
.end method

.method public final inject(Lcom/android/camera/prewarm/NoOpPrewarmService;)V
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->noOpPrewarmServiceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2273
    return-void
.end method

.method public final inject(Lcom/android/camera/processing/ProcessingService;)V
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->processingServiceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2278
    return-void
.end method

.method public final inject(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraSettingsFragmentMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2248
    return-void
.end method

.method public final inject(Lcom/android/camera/settings/CameraSettingsActivity;)V
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->cameraSettingsActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2243
    return-void
.end method

.method public final inject(Lcom/android/camera/settings/ManagedSwitchPreference;)V
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->managedSwitchPreferenceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2253
    return-void
.end method

.method public final inject(Lcom/android/camera/ui/BottomBarSideControls;)V
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->bottomBarSideControlsMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2263
    return-void
.end method

.method public final inject(Lcom/android/camera/ui/TopRightWeightedLayout;)V
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->topRightWeightedLayoutMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2268
    return-void
.end method

.method public final inject(Lcom/android/camera/ui/focus/FocusRingView;)V
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent;->focusRingViewMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 2258
    return-void
.end method
