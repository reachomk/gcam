.class public final Lcom/android/camera/module/capture/CaptureModule_Factory;
.super Ljava/lang/Object;
.source "CaptureModule_Factory.java"

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
.field private final accessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/accessibility/AccessibilityManager;",
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

.field private final adviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final adviceUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/advice/AdviceUiController;",
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

.field private final cameraDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
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

.field private final captureModuleConfigBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final captureModuleMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/capture/CaptureModule;",
            ">;"
        }
    .end annotation
.end field

.field private final captureModuleSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final captureOneCameraCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final countdownDurationSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final countdownStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final dcimCameraFolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceOrientationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/deviceorientation/DeviceOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final faceAnnouncerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;",
            ">;"
        }
    .end annotation
.end field

.field private final fileNamerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
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

.field private final gridLinesPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusRawOutputProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrSceneSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
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

.field private final legacyCameraServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyLegacyCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final locationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
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

.field private final mediaActionSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;",
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

.field private final moduleConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
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

.field private final previewLongPressListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTapListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
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

.field private final remoteShutterListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/remote/RemoteShutterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
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

.field private final selfieFlashControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/selfieflash/SelfieFlashController;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/hardware/SensorManager;",
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

.field private final storageDialogBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
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

.field private final volumeKeyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/capture/CaptureModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/hardware/SensorManager;",
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
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/deviceorientation/DeviceOrientation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/selfieflash/SelfieFlashController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/remote/RemoteShutterListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/advice/AdviceUiController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureModuleMembersInjector:Ldagger/MembersInjector;

    .line 217
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 219
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 221
    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 223
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 225
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    .line 227
    iput-object p7, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 229
    iput-object p8, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 231
    iput-object p9, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 233
    iput-object p10, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 235
    iput-object p11, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 237
    iput-object p12, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 239
    iput-object p13, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 241
    iput-object p14, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->locationProvider:Ljavax/inject/Provider;

    .line 243
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->mediaActionSoundPlayerProvider:Ljavax/inject/Provider;

    .line 245
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 247
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->deviceOrientationProvider:Ljavax/inject/Provider;

    .line 249
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureModuleConfigBuilderProvider:Ljavax/inject/Provider;

    .line 251
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 253
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 255
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 257
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    .line 259
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 261
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 263
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->dcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 265
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->selfieFlashControllerProvider:Ljavax/inject/Provider;

    .line 267
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->countdownDurationSettingProvider:Ljavax/inject/Provider;

    .line 269
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->hdrSceneSettingProvider:Ljavax/inject/Provider;

    .line 271
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 273
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->hdrPlusRawOutputProvider:Ljavax/inject/Provider;

    .line 275
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->gridLinesPropertyProvider:Ljavax/inject/Provider;

    .line 277
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->remoteShutterListenerProvider:Ljavax/inject/Provider;

    .line 279
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 281
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 283
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    .line 285
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 287
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 289
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    .line 291
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 293
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 295
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    .line 297
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->flagsProvider:Ljavax/inject/Provider;

    .line 299
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    .line 301
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->faceAnnouncerProvider:Ljavax/inject/Provider;

    .line 303
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->countdownStatechartProvider:Ljavax/inject/Provider;

    .line 305
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 307
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->adviceManagerProvider:Ljavax/inject/Provider;

    .line 309
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->adviceUiControllerProvider:Ljavax/inject/Provider;

    .line 311
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->intentHandlerProvider:Ljavax/inject/Provider;

    .line 313
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 315
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 317
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModule_Factory;->screenOnControllerProvider:Ljavax/inject/Provider;

    .line 318
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 54

    .prologue
    .line 55
    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureModuleMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v53, v0

    new-instance v1, Lcom/android/camera/module/capture/CaptureModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 1325
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1326
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1327
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1328
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    .line 1329
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1330
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 1331
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/debug/performance/MetricBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 1332
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 1333
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/app/LegacyCameraProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 1334
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1335
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 1336
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->locationProvider:Ljavax/inject/Provider;

    .line 1337
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/location/LocationProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->mediaActionSoundPlayerProvider:Ljavax/inject/Provider;

    .line 1338
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1339
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->deviceOrientationProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1340
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureModuleConfigBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 1341
    invoke-interface/range {v18 .. v18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    .line 1342
    invoke-interface/range {v19 .. v19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    .line 1343
    invoke-interface/range {v20 .. v20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    .line 1344
    invoke-interface/range {v21 .. v21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    .line 1345
    invoke-interface/range {v22 .. v22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v0

    .line 1346
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/ui/DetailsDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v0

    .line 1347
    invoke-interface/range {v24 .. v24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->dcimCameraFolderProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    .line 1348
    invoke-interface/range {v25 .. v25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->selfieFlashControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v0

    .line 1349
    invoke-interface/range {v26 .. v26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/camera/selfieflash/SelfieFlashController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->countdownDurationSettingProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v0

    .line 1350
    invoke-interface/range {v27 .. v27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->hdrSceneSettingProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    .line 1351
    invoke-interface/range {v28 .. v28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    .line 1352
    invoke-interface/range {v29 .. v29}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/camera/one/HdrPlusSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->hdrPlusRawOutputProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v0

    .line 1353
    invoke-interface/range {v30 .. v30}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->gridLinesPropertyProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v0

    .line 1354
    invoke-interface/range {v31 .. v31}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->remoteShutterListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    .line 1355
    invoke-interface/range {v32 .. v32}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/camera/remote/RemoteShutterListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v0

    .line 1356
    invoke-interface/range {v33 .. v33}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/camera/stats/Instrumentation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v0

    .line 1357
    invoke-interface/range {v34 .. v34}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v0

    .line 1358
    invoke-interface/range {v35 .. v35}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    .line 1359
    invoke-interface/range {v36 .. v36}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v0

    .line 1360
    invoke-interface/range {v37 .. v37}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v0

    .line 1361
    invoke-interface/range {v38 .. v38}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/camera/ui/viewfinder/Viewfinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v0

    .line 1362
    invoke-interface/range {v39 .. v39}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/camera/ui/views/CameraActivityUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v0

    .line 1363
    invoke-interface/range {v40 .. v40}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v0

    .line 1364
    invoke-interface/range {v41 .. v41}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->flagsProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v0

    .line 1365
    invoke-interface/range {v42 .. v42}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/camera/util/flags/Flags;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v0

    .line 1366
    invoke-interface/range {v43 .. v43}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->faceAnnouncerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v0

    .line 1367
    invoke-interface/range {v44 .. v44}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->countdownStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v0

    .line 1368
    invoke-interface/range {v45 .. v45}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/camera/ui/controller/CountdownStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v0

    .line 1369
    invoke-interface/range {v46 .. v46}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->adviceManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v0

    .line 1370
    invoke-interface/range {v47 .. v47}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/camera/advice/AdviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->adviceUiControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v0

    .line 1371
    invoke-interface/range {v48 .. v48}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/google/android/apps/camera/advice/AdviceUiController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->intentHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v0

    .line 1372
    invoke-interface/range {v49 .. v49}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/camera/util/activity/IntentHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v0

    .line 1373
    invoke-interface/range {v50 .. v50}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/camera/storage/StorageDialogBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v0

    .line 1374
    invoke-interface/range {v51 .. v51}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/camera/util/activity/ActivityFinishWithReason;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule_Factory;->screenOnControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v0

    .line 1375
    invoke-interface/range {v52 .. v52}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/camera/util/activity/ScreenOnController;

    invoke-direct/range {v1 .. v52}, Lcom/android/camera/module/capture/CaptureModule;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/res/Resources;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/SensorManager;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/BurstA11yButtonController$Listener;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/util/deviceorientation/DeviceOrientation;Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/ui/DetailsDialog;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/selfieflash/SelfieFlashController;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/HdrPlusSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/remote/RemoteShutterListener;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Landroid/view/accessibility/AccessibilityManager;Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;Lcom/android/camera/ui/controller/CountdownStatechart;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/advice/AdviceManager;Lcom/google/android/apps/camera/advice/AdviceUiController;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/util/activity/ScreenOnController;)V

    .line 1322
    move-object/from16 v0, v53

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/capture/CaptureModule;

    .line 55
    return-object v1
.end method
