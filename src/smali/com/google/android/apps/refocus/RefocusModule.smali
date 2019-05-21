.class public final Lcom/google/android/apps/refocus/RefocusModule;
.super Lcom/android/camera/module/CameraModule;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;
.implements Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/RefocusModule$State;,
        Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;,
        Lcom/google/android/apps/refocus/RefocusModule$AutoFocusCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityContext:Landroid/content/Context;

.field private activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

.field private activityLayout:Lcom/google/android/apps/camera/async/UiObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;"
        }
    .end annotation
.end field

.field private activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private appController:Lcom/android/camera/app/AppController;

.field private aspectRatio:F

.field private final autoFocusCallback:Lcom/google/android/apps/refocus/RefocusModule$AutoFocusCallback;

.field private final autoFocusMoveCallback:Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;

.field private final cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

.field private cameraId:I

.field private cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

.field private capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

.field private focusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final hideSummaryCallback:Ljava/lang/Runnable;

.field private final hideWarningCallback:Ljava/lang/Runnable;

.field private final instructionsAnnouncer:Landroid/text/TextWatcher;

.field private lastCaptureLocation:Landroid/location/Location;

.field private final lensBlurStatechart:Lcom/android/camera/ui/controller/LensBlurStatechart;

.field private final lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

.field private locationProvider:Lcom/android/camera/location/LocationProvider;

.field private mainHandler:Landroid/os/Handler;

.field private final previewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final previewStartedCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

.field private previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

.field private referenceImage:Lcom/google/android/apps/refocus/image/ColorImage;

.field private refocusInstructions:Landroid/widget/TextView;

.field private refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

.field private refocusSuccessIndicator:Landroid/widget/ImageView;

.field private final refocusUpgrader:Lcom/android/camera/settings/SettingsUpgrader;

.field private rootView:Landroid/view/ViewGroup;

.field private showTutorialScreen:Z

.field private shutterAnimation:Lcom/google/android/apps/refocus/camera/ShutterAnimation;

.field private shutterButtonHolder:Lcom/android/camera/ui/ShutterButtonHolder;

.field private state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

.field private final storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

.field private final storageDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private summary:Lcom/google/android/apps/refocus/capture/Summary;

.field private final timer:Lcom/google/android/apps/refocus/capture/Timer;

.field private tracker:Lcom/google/android/apps/refocus/capture/Tracker;

.field private tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

.field private final updateUiRunnable:Ljava/lang/Runnable;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

.field private final window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "RefocusModule"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/RefocusModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/settings/SettingsManager;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/processing/LightcycleLensBlurTaskManager;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/LensBlurStatechart;Lcom/android/camera/storage/StorageDialogBuilder;Landroid/view/Window;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/android/camera/ui/controller/LensBlurStatechart;",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            "Landroid/view/Window;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p2, p3}, Lcom/android/camera/module/CameraModule;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;)V

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->aspectRatio:F

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->shutterAnimation:Lcom/google/android/apps/refocus/camera/ShutterAnimation;

    .line 195
    new-instance v1, Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    .line 200
    new-instance v1, Lcom/google/android/apps/refocus/capture/Timer;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/capture/Timer;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    .line 203
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusCallback;-><init>(Lcom/google/android/apps/refocus/RefocusModule;B)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->autoFocusCallback:Lcom/google/android/apps/refocus/RefocusModule$AutoFocusCallback;

    .line 204
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;-><init>(Lcom/google/android/apps/refocus/RefocusModule;B)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->autoFocusMoveCallback:Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->lastCaptureLocation:Landroid/location/Location;

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->showTutorialScreen:Z

    .line 212
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$1;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideSummaryCallback:Ljava/lang/Runnable;

    .line 220
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$2;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    .line 229
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$3;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewStartedCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 259
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$4;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->instructionsAnnouncer:Landroid/text/TextWatcher;

    .line 290
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$5;

    const-string v2, "refocus_upgrade_version"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/refocus/RefocusModule$5;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusUpgrader:Lcom/android/camera/settings/SettingsUpgrader;

    .line 304
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$6;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->storageDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 313
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$7;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    .line 518
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$9;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->updateUiRunnable:Ljava/lang/Runnable;

    .line 563
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$10;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$10;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 632
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$11;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    .line 358
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityContext:Landroid/content/Context;

    .line 359
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/UiObservable;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 360
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CaptureLayoutHelper;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 361
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 362
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 363
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/ApiHelper;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 364
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    .line 365
    invoke-static/range {p14 .. p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/FileNamer;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 366
    invoke-static/range {p13 .. p13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/ProcessingServiceManager;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 367
    invoke-static {p10}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 368
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 369
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->lensBlurStatechart:Lcom/android/camera/ui/controller/LensBlurStatechart;

    .line 370
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    .line 371
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->window:Landroid/view/Window;

    .line 373
    new-instance v1, Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v0, p12

    invoke-direct {v1, v0}, Lcom/android/camera/module/PreviewTransformCalculator;-><init>(Lcom/android/camera/burst/OrientationLockController;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 375
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusUpgrader:Lcom/android/camera/settings/SettingsUpgrader;

    invoke-virtual {v1, p4}, Lcom/android/camera/settings/SettingsUpgrader;->upgrade(Lcom/android/camera/settings/SettingsManager;)V

    .line 376
    return-void
.end method

.method static synthetic access$000$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHIJMAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRICLJ6UORLECNL4PB6DTHNASQDDTI7AR354H9N8OBKCKTG____(Lcom/google/android/apps/refocus/RefocusModule;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    return v0
.end method

.method static synthetic access$002$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUSJ5CPNM6TBJ5T96APJFCDQN6JBFCHQMOP94ADQ62T357CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNN4PB6DTHNASPFA9IMCRR3ELPKQRR4ELM6A92JEHGN8P9R(Lcom/google/android/apps/refocus/RefocusModule;I)I
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/ui/focus/FocusOverlayManager;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->updateCameraParams()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/capture/Tracker;)Lcom/google/android/apps/refocus/capture/Tracker;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->onCaptureCancel()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->updateUi()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/refocus/RefocusModule;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    return v0
.end method

.method static synthetic access$1600$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3M___(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/ShutterAnimation;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->shutterAnimation:Lcom/google/android/apps/refocus/camera/ShutterAnimation;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/refocus/RefocusModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/image/ColorImage;)Lcom/google/android/apps/refocus/image/ColorImage;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule;->referenceImage:Lcom/google/android/apps/refocus/image/ColorImage;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->startPreviewCapture()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/processing/DepthmapTask;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/refocus/RefocusModule;->requestProcessing(Lcom/google/android/apps/refocus/processing/DepthmapTask;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/google/android/apps/refocus/RefocusModule;Z)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->showTutorialScreen:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/refocus/RefocusModule;I)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/RefocusModule;->setWindowRotationAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/refocus/RefocusModule;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/refocus/RefocusModule;ZLandroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/refocus/RefocusModule;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/RefocusProgressView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/camera/CameraPreview;)Lcom/google/android/apps/refocus/camera/CameraPreview;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->setDisplayOrientationForFocusManager()V

    return-void
.end method

.method private final adjustTutorialOverlay()V
    .locals 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;->removeOverlayAndHideWrapper()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1042
    iget-boolean v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->showTutorialScreen:Z

    if-eqz v1, :cond_1

    .line 1043
    new-instance v1, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    new-instance v2, Lcom/google/android/apps/refocus/RefocusModule$15;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/refocus/RefocusModule$15;-><init>(Lcom/google/android/apps/refocus/RefocusModule;I)V

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    .line 1055
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;-><init>(Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    .line 1058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/RefocusModule;->setWindowRotationAnimation(I)V

    .line 1059
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraAppUI;->showTutorial(Lcom/android/camera/ui/AbstractTutorialOverlay;Landroid/view/LayoutInflater;)V

    .line 1061
    :cond_1
    return-void
.end method

.method private final animateVisibility(ZLandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1247
    .line 1249
    if-eqz p1, :cond_0

    .line 1250
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1251
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1257
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1258
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1259
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$16;

    invoke-direct {v1, p2}, Lcom/google/android/apps/refocus/RefocusModule$16;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1266
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$17;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/refocus/RefocusModule$17;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1276
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1277
    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    .line 1254
    goto :goto_0
.end method

.method private final createDepthmapTask()Lcom/google/android/apps/refocus/processing/DepthmapTask;
    .locals 15

    .prologue
    .line 909
    .line 910
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/RefocusModule;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    const-string v1, "refocus"

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->getSessionDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->fileNamer:Lcom/android/camera/storage/FileNamer;

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/capture/Dataset;->create(Ljava/io/File;Lcom/android/camera/storage/FileNamer;)Lcom/google/android/apps/refocus/capture/Dataset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 916
    new-instance v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 917
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getMemoryManager()Lcom/android/camera/memory/MemoryManager;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    .line 919
    invoke-virtual {v3}, Lcom/google/android/apps/refocus/capture/FrameSelection;->getFrameSelection()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->referenceImage:Lcom/google/android/apps/refocus/image/ColorImage;

    iget-object v5, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 921
    invoke-virtual {v5}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getPhotoOrientation()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 922
    invoke-virtual {v6}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getFocalLength35mm()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 923
    invoke-virtual {v7}, Lcom/google/android/apps/refocus/camera/CameraPreview;->isCameraFrontFacing()Z

    move-result v7

    .line 924
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->getAuthorInfo()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/refocus/RefocusModule;->lastCaptureLocation:Landroid/location/Location;

    .line 926
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/RefocusModule;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v10

    new-instance v11, Lcom/android/camera/memory/MaxNativeMemory;

    iget-object v12, p0, Lcom/google/android/apps/refocus/RefocusModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v13, p0, Lcom/google/android/apps/refocus/RefocusModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    iget-object v14, p0, Lcom/google/android/apps/refocus/RefocusModule;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    invoke-direct {v11, v12, v13, v14}, Lcom/android/camera/memory/MaxNativeMemory;-><init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;Lcom/google/android/apps/camera/inject/app/AndroidServices;)V

    iget-object v12, p0, Lcom/google/android/apps/refocus/RefocusModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/apps/refocus/processing/DepthmapTask;-><init>(Lcom/android/camera/memory/MemoryManager;Lcom/google/android/apps/refocus/capture/Dataset;Ljava/util/ArrayList;Lcom/google/android/apps/refocus/image/ColorImage;IIZLjava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 916
    :goto_0
    return-object v0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    sget-object v1, Lcom/google/android/apps/refocus/RefocusModule;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final freeCaptureMemory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 878
    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    .line 879
    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->referenceImage:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 880
    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 881
    return-void
.end method

.method private final getAuthorInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 959
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 960
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 961
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 962
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 964
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final initializeFocusManager()V
    .locals 8

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->removeMessages()V

    .line 1003
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1004
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/LegacyCameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v5

    .line 981
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 983
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100029

    .line 984
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 985
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 987
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 988
    invoke-static {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    .line 989
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 990
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 993
    :cond_2
    new-instance v0, Lcom/android/camera/ui/focus/FocusOverlayManager;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 1000
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/focus/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    goto :goto_0
.end method

.method private final onCaptureCancel()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->cancel()V

    .line 1317
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/refocus/RefocusModule;->stopCapture(ZZ)V

    .line 1318
    return-void
.end method

.method private final requestProcessing(Lcom/google/android/apps/refocus/processing/DepthmapTask;Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 934
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->startSession$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___()V

    .line 936
    if-eqz p3, :cond_1

    .line 937
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->savePhotoWithoutDepth()V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingServiceManager;->isRunningOrHasItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->save()Lcom/google/android/apps/refocus/processing/DepthmapTask;

    move-result-object p1

    .line 946
    if-eqz p1, :cond_0

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->enqueue(Lcom/android/camera/processing/ProcessingTask;)V

    goto :goto_0
.end method

.method private final setDisplayOrientationForFocusManager()V
    .locals 3

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 1238
    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    .line 1239
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/LegacyCameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 1240
    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v0

    .line 1241
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1244
    :cond_0
    return-void
.end method

.method private final setWindowRotationAnimation(I)V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1065
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1066
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1067
    return-void
.end method

.method private final startPreviewCapture()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 756
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->hideModeOptions()V

    .line 757
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideSummaryCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/refocus/RefocusProgressView;->setWarning(Z)V

    .line 760
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/RefocusProgressView;->setProgress(F)V

    .line 761
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/refocus/RefocusProgressView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v1, 0x7f0a023b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 764
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;->reset()V

    .line 767
    new-instance v0, Lcom/google/android/apps/refocus/capture/FrameSelection;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/apps/refocus/capture/FrameSelection;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    .line 768
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/refocus/capture/Tracker;->start(II)V

    .line 769
    new-instance v0, Lcom/google/android/apps/refocus/capture/Summary;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    iget-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/refocus/capture/Summary;-><init>(Lcom/google/android/apps/refocus/capture/Tracker;Lcom/google/android/apps/refocus/capture/Timer;Lcom/google/android/apps/refocus/capture/FrameSelection;Lcom/google/android/apps/refocus/capture/ProgressEstimator;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 770
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Timer;->reset()V

    .line 771
    sget v0, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 772
    return-void
.end method

.method private final stopCapture(ZZ)V
    .locals 10

    .prologue
    const-wide/16 v0, 0xbb8

    const/4 v5, 0x1

    .line 839
    iget v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v3, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-eq v2, v3, :cond_0

    .line 5888
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->lensBlurStatechart:Lcom/android/camera/ui/controller/LensBlurStatechart;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/statecharts/StateBase;->onStopCapturing()V

    .line 3307
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraAppUI;->transitionToCapture()V

    .line 845
    sget v2, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    iput v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 846
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 847
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/refocus/camera/CameraPreview;->toggleAutoSettings(Z)V

    .line 848
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->finish()V

    .line 4128
    invoke-static {}, Lcom/google/android/apps/refocus/processing/ProcessingNative;->StopTracker()V

    .line 850
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/RefocusModule;->cancelAutoFocus()V

    .line 852
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    .line 853
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/apps/refocus/RefocusProgressView;->setVisibility(I)V

    .line 854
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5775
    if-eqz p2, :cond_1

    .line 5776
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v3, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_CANCELLED_SOUND:I

    invoke-virtual {v2, v3}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 5778
    :cond_1
    const/4 v2, -0x1

    .line 5780
    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/capture/Summary;->hasCancelError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5781
    const-wide/16 v0, 0x1f4

    .line 5795
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5796
    if-ltz v2, :cond_2

    .line 5797
    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5799
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    const v3, 0x7f020165

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5800
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    invoke-direct {p0, v5, v2}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    .line 5801
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v2}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    .line 5802
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideSummaryCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 861
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->locationProvider:Lcom/android/camera/location/LocationProvider;

    invoke-interface {v0}, Lcom/android/camera/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->lastCaptureLocation:Landroid/location/Location;

    .line 863
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 864
    invoke-virtual {v1}, Lcom/google/android/apps/refocus/capture/Summary;->hasMotionTooFastError()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 865
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasMotionTooSlowError()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 866
    invoke-virtual {v3}, Lcom/google/android/apps/refocus/capture/Summary;->hasTrackingFailedError()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 867
    invoke-virtual {v4}, Lcom/google/android/apps/refocus/capture/Summary;->hasViewportError()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 868
    invoke-virtual {v5}, Lcom/google/android/apps/refocus/capture/Summary;->hasSceneError()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 869
    invoke-virtual {v6}, Lcom/google/android/apps/refocus/capture/Summary;->hasCancelError()Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 870
    invoke-virtual {v7}, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning()Z

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 871
    invoke-virtual {v8}, Lcom/google/android/apps/refocus/capture/Summary;->hasMotionTooFastError()Z

    move-result v8

    iget-object v9, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    .line 872
    invoke-virtual {v9}, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning()Z

    move-result v9

    .line 863
    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/stats/UsageStatistics;->refocusCaptureComputeEvent(ZZZZZZZZZ)V

    .line 5884
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5886
    if-nez p1, :cond_10

    .line 5887
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->freeCaptureMemory()V

    goto/16 :goto_0

    .line 5782
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasMotionTooFastError()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5783
    const v2, 0x7f0a0234

    goto/16 :goto_1

    .line 5784
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasMotionTooSlowError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5785
    const v2, 0x7f0a0235

    goto/16 :goto_1

    .line 5786
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasTrackingFailedError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5787
    const v2, 0x7f0a0236

    goto/16 :goto_1

    .line 5788
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasSceneError()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5789
    const v2, 0x7f0a0237

    goto/16 :goto_1

    .line 5790
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hasViewportError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5791
    const v2, 0x7f0a0238

    goto/16 :goto_1

    .line 5793
    :cond_8
    const v2, 0x7f0a0233

    goto/16 :goto_1

    .line 856
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hadWarnings()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5806
    if-eqz p2, :cond_a

    .line 5807
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v3, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_COMPLETE_SOUND:I

    invoke-virtual {v2, v3}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 5809
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hadMotionTooFastWarning()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5810
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v3, 0x7f0a0230

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5816
    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5817
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    const v3, 0x7f020132

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5818
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    invoke-direct {p0, v5, v2}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    .line 5819
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v2}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    .line 5820
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideSummaryCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 5811
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5812
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v3, 0x7f0a0232

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 5813
    :cond_d
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5814
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v3, 0x7f0a0231

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 5824
    :cond_e
    if-eqz p2, :cond_f

    .line 5825
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_COMPLETE_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 5827
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5828
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5829
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    .line 5830
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v0}, Lcom/google/android/apps/refocus/RefocusModule;->animateVisibility(ZLandroid/view/View;)V

    .line 5832
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideSummaryCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 5891
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->createDepthmapTask()Lcom/google/android/apps/refocus/processing/DepthmapTask;

    move-result-object v0

    .line 5892
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/capture/Summary;->hasErrors()Z

    move-result v1

    .line 5893
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 5894
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/apps/refocus/RefocusModule$14;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/google/android/apps/refocus/RefocusModule$14;-><init>(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/processing/DepthmapTask;Landroid/content/Context;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5901
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 5903
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->freeCaptureMemory()V

    goto/16 :goto_0
.end method

.method private final updateCameraParams()V
    .locals 3

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 1218
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    .line 1220
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 1224
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 1228
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1229
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1230
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->setCameraSettings(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 1231
    return-void
.end method

.method private final updatePreviewTransform()V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 553
    invoke-virtual {v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 554
    invoke-virtual {v2}, Lcom/android/camera/ui/CaptureLayoutHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 555
    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 557
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 558
    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/module/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraAppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 561
    :cond_0
    return-void
.end method

.method private final updateUi()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 527
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    .line 529
    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 530
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 531
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v2, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 536
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 535
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 537
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->aspectRatio:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    goto :goto_0
.end method


# virtual methods
.method public final autoFocus()V
    .locals 3

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    .line 1170
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->autoFocusCallback:Lcom/google/android/apps/refocus/RefocusModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    goto :goto_0
.end method

.method public final cancelAutoFocus()V
    .locals 4

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    .line 6687
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 6689
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1182
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 1183
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1184
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1185
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->setCameraSettings(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0
.end method

.method public final capture()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1190
    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v2, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-eq v1, v2, :cond_0

    .line 1195
    :goto_0
    return v0

    .line 6711
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->lensBlurStatechart:Lcom/android/camera/ui/controller/LensBlurStatechart;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/statecharts/StateBase;->onStartCapture()V

    .line 6712
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v1

    .line 6713
    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->transitionToCancel()V

    .line 6715
    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$12;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    .line 6723
    new-instance v2, Lcom/google/android/apps/refocus/RefocusModule$13;

    invoke-direct {v2, p0}, Lcom/google/android/apps/refocus/RefocusModule$13;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    .line 6749
    sget v3, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_PHOTO$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    iput v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 6750
    iput-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->referenceImage:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 6751
    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->toggleAutoSettings(Z)V

    .line 6752
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->takePicture(Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 675
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 676
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    .line 680
    return-object v0
.end method

.method public final getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public final getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 6

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;

    .line 663
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/RefocusModule;->getLegacyCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    .line 665
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    move-result-object v3

    .line 2707
    iget-object v4, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/LegacyCameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v4

    .line 666
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics$GcamSharpness;-><init>(Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Z)V

    .line 668
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method public final init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 385
    sget v0, Lcom/google/android/apps/refocus/RefocusModule$State;->NOT_READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 386
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 387
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getActivityServices()Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 388
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    .line 390
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/LegacyCameraProvider;->requestCamera(I)V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->getAppRootView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 398
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040064

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f110159

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/RefocusProgressView;

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f11015b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f110158

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/refocus/RefocusProgressView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusSuccessIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f11015a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    .line 407
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationProvider()Lcom/android/camera/location/LocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->locationProvider:Lcom/android/camera/location/LocationProvider;

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f110092

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder;

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->shutterButtonHolder:Lcom/android/camera/ui/ShutterButtonHolder;

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->shutterButtonHolder:Lcom/android/camera/ui/ShutterButtonHolder;

    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/RefocusModule$8;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButtonHolder;->addCancelButtonListener(Lcom/android/camera/ui/ShutterButtonHolder$CancelButtonListener;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 424
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "refocus_show_tutorial"

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->showTutorialScreen:Z

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->setDisplayOrientationForFocusManager()V

    .line 428
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ModeSwitchSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ModeSwitchSession;->recordModeSwitchEnd()V

    .line 429
    return-void
.end method

.method public final isBurstSupported()Z
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupportingSurfaceViewPreviewCallbacks()Z
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public final isZoomSupported()Z
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method public final onBackPressed()Z
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    return v0
.end method

.method public final onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 471
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getLensBlurMegapixelCount()I

    move-result v5

    .line 473
    sget-object v0, Lcom/google/android/apps/refocus/RefocusModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected Lens Blur megapixels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/google/android/apps/refocus/camera/CameraPreview;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 477
    invoke-virtual {v1}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/refocus/camera/CameraPreview;-><init>(Landroid/view/WindowManager;Lcom/android/camera/app/AppController;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 484
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a008d

    const/4 v2, 0x0

    .line 483
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 492
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 493
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 494
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->setCameraSettings(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 495
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->setImageCallback(Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;)V

    .line 496
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->initializeFocusManager()V

    .line 497
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 498
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->autoFocusMoveCallback:Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;

    invoke-virtual {p1, v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 504
    cmpg-float v1, v0, v6

    if-gez v1, :cond_3

    .line 505
    div-float v0, v6, v0

    .line 2541
    :cond_3
    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->aspectRatio:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4

    .line 2544
    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->aspectRatio:F

    .line 2545
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 2546
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->updateUi()V

    .line 508
    :cond_4
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->updatePreviewTransform()V

    .line 510
    new-instance v0, Lcom/google/android/apps/refocus/camera/ShutterAnimation;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f110157

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/refocus/camera/ShutterAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->shutterAnimation:Lcom/google/android/apps/refocus/camera/ShutterAnimation;

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewStartedCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->startPreview(Landroid/graphics/SurfaceTexture;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_0
.end method

.method public final onCameraImageAvailable(Lcom/google/android/apps/refocus/image/ColorImage;J)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    .line 2059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/refocus/capture/Timer;->tick(J)V

    .line 445
    iget v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-eq v0, v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/refocus/capture/Tracker;->trackFrame(Lcom/google/android/apps/refocus/image/ColorImage;)V

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/capture/Tracker;->getParallax()F

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;->update(FJ)V

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;->getCaptureProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/RefocusProgressView;->setProgress(F)V

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->update()V

    .line 2280
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->hasWarnings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2284
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/refocus/RefocusProgressView;->setWarning(Z)V

    .line 2286
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->getViewportWarning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2287
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v1, 0x7f0a022f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2289
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->getMotionTooFastWarning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2290
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v1, 0x7f0a022d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2291
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/refocus/RefocusProgressView;->setWarning(Z)V

    .line 2293
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->getLowLight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2294
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    const v1, 0x7f0a022e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2295
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusProgress:Lcom/google/android/apps/refocus/RefocusProgressView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/refocus/RefocusProgressView;->setWarning(Z)V

    .line 2298
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2299
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->hideWarningCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 456
    invoke-direct {p0, v4, v4}, Lcom/google/android/apps/refocus/RefocusModule;->stopCapture(ZZ)V

    goto/16 :goto_0

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->summary:Lcom/google/android/apps/refocus/capture/Summary;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Summary;->getFrameValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->frameSelection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;->getProgress()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/refocus/capture/FrameSelection;->addCandidate(Lcom/google/android/apps/refocus/image/ColorImage;F)V

    .line 464
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;->getCaptureProgress()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 465
    invoke-direct {p0, v4, v4}, Lcom/google/android/apps/refocus/RefocusModule;->stopCapture(ZZ)V

    goto/16 :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1126
    packed-switch p1, :pswitch_data_0

    .line 1133
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1128
    :pswitch_0
    iget v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-ne v0, v1, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/RefocusModule;->onShutterButtonClick()V

    .line 1131
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1126
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1138
    packed-switch p1, :pswitch_data_0

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1141
    :pswitch_0
    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v2, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public final onLayoutOrientationChanged(Z)V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->configureDisplayOrientation()V

    .line 1115
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->setDisplayOrientationForFocusManager()V

    .line 1116
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->adjustTutorialOverlay()V

    .line 1117
    return-void
.end method

.method public final onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public final onPreviewFlipped()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->configureDisplayOrientation()V

    .line 605
    :cond_0
    return-void
.end method

.method public final onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->updatePreviewTransform()V

    .line 594
    return-void
.end method

.method public final onShutterButtonClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 685
    iget v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-ne v0, v1, :cond_1

    .line 686
    invoke-direct {p0, v2, v2}, Lcom/google/android/apps/refocus/RefocusModule;->stopCapture(ZZ)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    .line 693
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 695
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->isPreviewRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 704
    return-void
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public final onSingleTapUp$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954IILG_(II)V
    .locals 2

    .prologue
    .line 1148
    iget v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-eq v0, v1, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/focus/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->previewStartedCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->startPreview(Landroid/graphics/SurfaceTexture;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 612
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->stopPreview()V

    .line 619
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method public final resume()V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->storageDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/storage/StorageDialogBuilder;->checkSpaceAndShowPreviewDialogIfNecessary(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1034
    return-void
.end method

.method public final setFocusParameters()V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->updateCameraParams()V

    .line 1213
    :cond_0
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 1008
    sget v0, Lcom/google/android/apps/refocus/RefocusModule$State;->NOT_READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    .line 6350
    const/4 v1, 0x0

    .line 1011
    invoke-interface {v0, p0, v1}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V

    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    .line 1014
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/LegacyCameraProvider;->requestCamera(I)V

    .line 1016
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p0}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1017
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showCloseButton()V

    .line 1018
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 1020
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->clearPreviewTransform()V

    .line 1021
    invoke-direct {p0}, Lcom/google/android/apps/refocus/RefocusModule;->adjustTutorialOverlay()V

    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->instructionsAnnouncer:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1024
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->updateUiRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/UiObservable;->addCallback(Ljava/lang/Runnable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1026
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    .line 1027
    return-void
.end method

.method public final stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1075
    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/refocus/RefocusModule;->stopCapture(ZZ)V

    .line 1076
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/RefocusModule;->cancelAutoFocus()V

    .line 1079
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->stopPreview()V

    .line 1080
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->releaseCamera()V

    .line 1081
    iput-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraPreview:Lcom/google/android/apps/refocus/camera/CameraPreview;

    .line 1082
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->cameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/LegacyCameraProvider;->releaseCamera(I)V

    .line 1083
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->focusManager:Lcom/android/camera/ui/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->onCameraReleased()V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p0}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1086
    sget v0, Lcom/google/android/apps/refocus/RefocusModule$State;->NOT_READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->state$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 1088
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;->removeOverlayAndHideWrapper()V

    .line 1090
    iput-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule;->tutorial:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->refocusInstructions:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule;->instructionsAnnouncer:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1096
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->aspectRatio:F

    .line 1098
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    .line 1103
    return-void
.end method

.method public final supportsSurfaceCallbacks()Z
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 1332
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module does NOT support Surface-backed Preview."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 1327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module does NOT support Surface-backed Preview."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 1337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module does NOT support Surface-backed Preview."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 1322
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module does NOT support Surface-backed Preview."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
