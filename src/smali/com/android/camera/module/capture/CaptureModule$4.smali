.class final Lcom/android/camera/module/capture/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/res/Resources;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/SensorManager;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/BurstA11yButtonController$Listener;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/util/deviceorientation/DeviceOrientation;Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/ui/DetailsDialog;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/selfieflash/SelfieFlashController;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/HdrPlusSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/remote/RemoteShutterListener;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Landroid/view/accessibility/AccessibilityManager;Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;Lcom/android/camera/ui/controller/CountdownStatechart;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/advice/AdviceManager;Lcom/google/android/apps/camera/advice/AdviceUiController;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/util/activity/ScreenOnController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$4;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 501
    check-cast p1, Ljava/lang/Boolean;

    .line 1504
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$4;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$600(Lcom/android/camera/module/capture/CaptureModule;Z)V

    .line 501
    return-void
.end method
