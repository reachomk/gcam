.class public final Lcom/android/camera/module/imageintent/ImageIntentModule;
.super Lcom/android/camera/module/CameraModule;
.source "ImageIntentModule.java"


# instance fields
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

.field private final appController:Lcom/android/camera/app/AppController;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final emptyOnSurfaceTextureUpdatedEvent:Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

.field private final previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private final stateMachine:Lcom/android/camera/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/fsm/StateMachine",
            "<",
            "Lcom/android/camera/module/imageintent/state/ImageIntentContext;",
            ">;"
        }
    .end annotation
.end field

.field private touchPointInsideShutterButton:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

.field private final uIListener:Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

.field private final updateUiRunnable:Ljava/lang/Runnable;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "ImgIntModule"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Landroid/content/Intent;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/inject/activity/ActivityServices;Ljava/lang/String;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/Settings;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/one/OneCameraOpener;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/app/AppController;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/android/camera/storage/CameraFileUtil;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/error/ShotFailureHandler;",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            "Lcom/android/camera/util/flags/Flags;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/settings/Settings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/app/AppController;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v4

    invoke-interface/range {p7 .. p7}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/camera/module/CameraModule;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;)V

    .line 104
    new-instance v4, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    invoke-direct {v4}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->emptyOnSurfaceTextureUpdatedEvent:Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    .line 108
    new-instance v4, Lcom/android/camera/module/imageintent/ImageIntentModule$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/module/imageintent/ImageIntentModule$1;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    .line 403
    new-instance v4, Lcom/android/camera/module/imageintent/ImageIntentModule$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/module/imageintent/ImageIntentModule$3;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->updateUiRunnable:Ljava/lang/Runnable;

    .line 438
    new-instance v4, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->uIListener:Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

    .line 447
    new-instance v4, Lcom/android/camera/module/imageintent/ImageIntentModule$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/module/imageintent/ImageIntentModule$5;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 170
    new-instance v4, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    .line 172
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v5

    .line 173
    invoke-virtual/range {p20 .. p20}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 174
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/CameraAppUI;->getAppRootView()Landroid/widget/FrameLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->uIListener:Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;-><init>(Lcom/android/camera/ui/CameraAppUI;Landroid/view/LayoutInflater;Landroid/view/View;Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    .line 176
    new-instance v18, Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    .line 178
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v4

    .line 181
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/app/AppController;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, p17

    move-object/from16 v2, p25

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/camera/module/ResourceSurfaceTextureFactory;-><init>(Lcom/android/camera/ui/CameraAppUI;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/burst/OrientationLockController;)V

    .line 182
    new-instance v37, Lcom/android/camera/ui/focus/FocusControllerImpl2016;

    move-object/from16 v0, v37

    move-object/from16 v1, p31

    move-object/from16 v2, p34

    move-object/from16 v3, p17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/focus/FocusControllerImpl2016;-><init>(Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/util/flags/Flags;Lcom/google/android/apps/camera/async/MainThread;)V

    .line 184
    new-instance v24, Lcom/android/camera/settings/CameraFacingSetting;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p35

    move-object/from16 v3, p21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/settings/CameraFacingSetting;-><init>(Landroid/content/res/Resources;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V

    .line 186
    new-instance v25, Lcom/android/camera/settings/ResolutionSetting;

    move-object/from16 v0, v25

    move-object/from16 v1, p35

    move-object/from16 v2, p3

    move-object/from16 v3, p15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/settings/ResolutionSetting;-><init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 188
    new-instance v31, Lcom/google/android/apps/camera/async/CloseableFutures;

    invoke-direct/range {v31 .. v31}, Lcom/google/android/apps/camera/async/CloseableFutures;-><init>()V

    .line 190
    new-instance v4, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    new-instance v23, Lcom/android/camera/burst/BurstFacadeStub;

    invoke-direct/range {v23 .. v23}, Lcom/android/camera/burst/BurstFacadeStub;-><init>()V

    .line 216
    invoke-virtual/range {p20 .. p20}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayMetrics(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v5, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p1

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p10

    move-object/from16 v14, p4

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v19, p36

    move-object/from16 v20, p35

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v26, p7

    move-object/from16 v27, p24

    move-object/from16 v28, p9

    move-object/from16 v30, p23

    move-object/from16 v32, p8

    move-object/from16 v33, p27

    move-object/from16 v34, p28

    move-object/from16 v35, p29

    move-object/from16 v36, p30

    move-object/from16 v38, p32

    move-object/from16 v39, p33

    invoke-direct/range {v4 .. v39}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;-><init>(Landroid/content/Intent;Lcom/android/camera/module/imageintent/ImageIntentModuleUI;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/ResourceSurfaceTextureFactory;Lcom/android/camera/settings/Settings;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/app/AppController;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/processing/imagebackend/ImageBackend;Landroid/util/DisplayMetrics;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/google/android/apps/camera/async/CloseableFutures;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;)V

    .line 228
    new-instance v5, Lcom/android/camera/fsm/StateMachineImpl;

    invoke-direct {v5, v4}, Lcom/android/camera/fsm/StateMachineImpl;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v5, Lcom/android/camera/module/imageintent/state/StateBackground;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    invoke-direct {v5, v6}, Lcom/android/camera/module/imageintent/state/StateBackground;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    invoke-interface {v4, v5}, Lcom/android/camera/fsm/StateMachine;->setInitialState(Lcom/android/camera/fsm/State;)Z

    .line 232
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/imageintent/ImageIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 233
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/imageintent/ImageIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 234
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/imageintent/ImageIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 235
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/imageintent/ImageIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 236
    move-object/from16 v0, p26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/imageintent/ImageIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/ImageIntentModule;)Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->shouldHandlePhysicalShutterButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/imageintent/ImageIntentModule;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->updateUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->emptyOnSurfaceTextureUpdatedEvent:Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    return-object v0
.end method

.method private final shouldHandlePhysicalShutterButtons()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->isCountingDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final updateUi()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 412
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    .line 414
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 417
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 418
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    invoke-interface {v1}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v1}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/AspectRatio;

    .line 423
    if-eqz v1, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v3, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 433
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 432
    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 356
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getImageIntentHardwareSpecProvider$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABR9DLGMEPB9DPQ6ARJK5T4MQOB7CL4MST35DPQ4GOBICHRM2SJ5ADO6AOQGE9NNCQB4CLP3M___()Lcom/google/android/apps/camera/async/CloseableFutures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/CloseableFutures;->provideHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    .line 357
    const-string v1, "Hardware spec is queried before Camera is open"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-object v0
.end method

.method public final getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 379
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 380
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0123

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public final hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public final isBurstSupported()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public final isZoomSupported()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public final onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public final onLayoutOrientationChanged(Z)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public final onPreviewVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public final onShutterButtonClick()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->touchPointInsideShutterButton:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    invoke-direct {v1, v2}, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;-><init>(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public final onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->touchPointInsideShutterButton:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 253
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 276
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 277
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 278
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->isSupportingSurfaceViewPreviewCallbacks()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 285
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 286
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/ImageIntentModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/ImageIntentModule$2;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->addCancelShutterButtonListener(Lcom/android/camera/ui/ShutterButtonHolder$CancelButtonListener;)V

    .line 296
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ModeSwitchSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ModeSwitchSession;->recordModeSwitchEnd()V

    .line 298
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->onModuleResumed()V

    .line 299
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventResume;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventResume;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->updateUiRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/UiObservable;->addCallback(Ljava/lang/Runnable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 303
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 305
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->updateUiRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 304
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observables;->addCallback(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 307
    invoke-direct {p0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->updateUi()V

    .line 309
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    .line 310
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->onModulePaused()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventStop;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    .line 327
    return-void
.end method
