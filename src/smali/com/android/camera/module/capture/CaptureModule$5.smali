.class final Lcom/android/camera/module/capture/CaptureModule$5;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/res/Resources;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/SensorManager;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/BurstA11yButtonController$Listener;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/util/deviceorientation/DeviceOrientation;Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/ui/DetailsDialog;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/selfieflash/SelfieFlashController;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/HdrPlusSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/remote/RemoteShutterListener;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Landroid/view/accessibility/AccessibilityManager;Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;Lcom/android/camera/ui/controller/CountdownStatechart;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/advice/AdviceManager;Lcom/google/android/apps/camera/advice/AdviceUiController;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/util/activity/ScreenOnController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$5;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataUpdate(J)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$5;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0, p1, p2}, Lcom/android/camera/module/capture/CaptureModule;->access$700(Lcom/android/camera/module/capture/CaptureModule;J)V

    .line 521
    return-void
.end method
