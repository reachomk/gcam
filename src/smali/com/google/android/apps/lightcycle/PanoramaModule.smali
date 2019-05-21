.class public final Lcom/google/android/apps/lightcycle/PanoramaModule;
.super Lcom/android/camera/module/CameraModule;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;
.implements Lcom/android/camera/module/ModuleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;,
        Lcom/google/android/apps/lightcycle/PanoramaModule$UndoVisibilityListener;,
        Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;,
        Lcom/google/android/apps/lightcycle/PanoramaModule$MainHandler;,
        Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static nativeInitialized:Z


# instance fields
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

.field private aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

.field private animationManager:Lcom/android/camera/ui/AnimationManager;

.field private final appController:Lcom/android/camera/app/AppController;

.field private cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

.field private final cancelCallback:Landroid/view/View$OnClickListener;

.field protected cancelDialog:Landroid/app/AlertDialog;

.field private captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private captureStarted:Z

.field private final completedSessionListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final doneCallback:Landroid/view/View$OnClickListener;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field protected fisheyeConfirmDialog:Landroid/app/AlertDialog;

.field private flashOverlay:Landroid/view/View;

.field private gLHandler:Landroid/os/Handler;

.field private gLThread:Landroid/os/HandlerThread;

.field private gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final handler:Landroid/os/Handler;

.field private inCaptureSequence:Z

.field private final inWideAngleMode:Z

.field private isPaused:Z

.field private isShutterButtonEnabled:Z

.field private lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private final lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

.field private localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

.field private numberOfImages:I

.field private orientation:I

.field private final panoOrientatioUpdatable:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final panoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

.field private final panoramaUpgrader:Lcom/android/camera/settings/SettingsUpgrader;

.field private photoSphereCalibrationOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

.field private photoSpherePreviewWriter:Ljava/lang/Thread;

.field private final photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

.field private final previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

.field private renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

.field private final resetCaptureOptionsRunnable:Ljava/lang/Runnable;

.field private final retakeCallback:Landroid/view/View$OnClickListener;

.field private rootView:Landroid/view/ViewGroup;

.field private runInCalibrationMode:Z

.field private sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

.field private final screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

.field private final sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private showHelpOverlay:Z

.field private statFirstPhotoTimeMillis:J

.field private statNumUndos:I

.field private stitchingPaused:Z

.field private final storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

.field private final storageDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final touchListener:Landroid/view/View$OnTouchListener;

.field private undoButton:Landroid/view/View;

.field private final undoEnabledListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private final undoVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private final unsupportedCaptureSessionListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private final updateUiRunnable:Ljava/lang/Runnable;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "PanoramaModule"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/app/AppController;ZLcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/processing/LightcycleLensBlurTaskManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/storage/FileNamer;Lcom/google/android/apps/camera/async/AddOnlyLifetime;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/storage/StorageDialogBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            "Lcom/android/camera/app/AppController;",
            "Z",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/google/android/apps/camera/async/AddOnlyLifetime;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;)V

    .line 155
    sget v2, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 187
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->stitchingPaused:Z

    .line 188
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    .line 190
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->showHelpOverlay:Z

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isPaused:Z

    .line 212
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$MainHandler;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$MainHandler;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    .line 252
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->runInCalibrationMode:Z

    .line 261
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 271
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$2;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->touchListener:Landroid/view/View$OnTouchListener;

    .line 290
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$3;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 373
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statNumUndos:I

    .line 375
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statFirstPhotoTimeMillis:J

    .line 377
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$4;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoOrientatioUpdatable:Lcom/google/android/apps/camera/async/Updatable;

    .line 439
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$5;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$5;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelCallback:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$6;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$6;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->doneCallback:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$7;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 510
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$8;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 531
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$9;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$9;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->completedSessionListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 545
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$10;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$10;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->unsupportedCaptureSessionListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 574
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoEnabledListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 592
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoVisibilityListener;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoVisibilityListener;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 609
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$11;

    const-string v3, "panorama_upgrade_version"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/PanoramaModule$11;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoramaUpgrader:Lcom/android/camera/settings/SettingsUpgrader;

    .line 659
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$12;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$12;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    .line 1563
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$24;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$24;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->updateUiRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$25;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$25;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetCaptureOptionsRunnable:Ljava/lang/Runnable;

    .line 703
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/app/AppController;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    .line 705
    invoke-interface {p3}, Lcom/android/camera/app/AppController;->getScreenOnController()Lcom/android/camera/util/activity/ScreenOnController;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/ScreenOnController;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    .line 706
    iput-boolean p4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    .line 707
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/UiObservable;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 708
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CaptureLayoutHelper;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 709
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 710
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 711
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    .line 712
    iput-object p10, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 713
    invoke-static/range {p11 .. p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/FileNamer;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 714
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 715
    invoke-static/range {p16 .. p16}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/PanoramaStatechart;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    .line 716
    invoke-static/range {p17 .. p17}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    .line 717
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    .line 719
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;

    .line 721
    new-instance v2, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v2, p2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>(Lcom/android/camera/app/LegacyCameraProvider;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 722
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoramaUpgrader:Lcom/android/camera/settings/SettingsUpgrader;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/settings/SettingsUpgrader;->upgrade(Lcom/android/camera/settings/SettingsManager;)V

    .line 723
    if-eqz p4, :cond_0

    .line 724
    invoke-static/range {p12 .. p12}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-static/range {p14 .. p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoOrientatioUpdatable:Lcom/google/android/apps/camera/async/Updatable;

    .line 727
    move-object/from16 v0, p14

    move-object/from16 v1, p13

    invoke-interface {v0, v2, v1}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    .line 726
    move-object/from16 v0, p12

    invoke-interface {v0, v2}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 729
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->createGLHandler()V

    return-void
.end method

.method static synthetic access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCapture()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->shutDownRenderingAndStopCapture()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onPanoOrientationUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onCaptureCancel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onCaptureDone()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statNumUndos:I

    return v0
.end method

.method static synthetic access$2208(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statNumUndos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statNumUndos:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    return v0
.end method

.method static synthetic access$2308(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    return v0
.end method

.method static synthetic access$2310(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    return v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelCapture()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/apps/lightcycle/PanoramaModule;)J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statFirstPhotoTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/google/android/apps/lightcycle/PanoramaModule;J)J
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statFirstPhotoTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onFirstCapture()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/util/activity/ScreenOnController;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->stitchingPaused:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->stitchingPaused:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/camera/inject/activity/ActivityServices;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    return v0
.end method

.method static synthetic access$3602(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    return p1
.end method

.method static synthetic access$3702(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureStarted:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->applyPreferences()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->restartCapture()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->updateUi()V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->runInCalibrationMode:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->runInCalibrationMode:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->initRenderer()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->setShutterButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$4400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABQGC5N6USJ1DLGKQRR4ELM6A923C5O78TBICL6MUP357C______(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    return v0
.end method

.method static synthetic access$4500(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->finishCapture()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSpherePreviewWriter:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/apps/lightcycle/PanoramaModule;F)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->saveCalibratedFieldOfView(F)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/processing/LightcycleLensBlurTaskManager;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/controller/PanoramaStatechart;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/controller/PhotoSphereStatechart;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->showHelpOverlay:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->touchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->updateOrientation()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/gl/SurfaceTextureRenderer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/android/camera/gl/SurfaceTextureRenderer;)Lcom/android/camera/gl/SurfaceTextureRenderer;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    return-object p1
.end method

.method private final adjustPhotoSphereHelpOverlay()V
    .locals 3

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->showHelpOverlay:Z

    if-nez v0, :cond_0

    .line 1640
    :goto_0
    return-void

    .line 1623
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$26;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$26;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;-><init>(Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;)V

    .line 1638
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/CameraAppUI;->showTutorial(Lcom/android/camera/ui/AbstractTutorialOverlay;Landroid/view/LayoutInflater;)V

    .line 1639
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    goto :goto_0
.end method

.method private final adjustUi()V
    .locals 2

    .prologue
    .line 1605
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1608
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->clearPreviewTransform()V

    .line 1611
    if-eqz v0, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->lockOrientation()V

    .line 1616
    :goto_1
    return-void

    .line 1605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->unlockOrientation()V

    goto :goto_1
.end method

.method private final applyPreferences()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->enableEkf(Z)V

    .line 1130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setLiveImageDisplay(Z)V

    .line 1131
    return-void
.end method

.method private final cancelCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1212
    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->setShutterButtonEnabled(Z)V

    .line 1215
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->pauseCapture()V

    .line 1217
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$16;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$16;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdownNow$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 5180
    invoke-direct {p0, v2, v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetToPreCaptureUI(ZZ)V

    .line 1229
    iput v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    .line 1230
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    .line 1231
    return-void
.end method

.method private final declared-synchronized createGLHandler()V
    .locals 2

    .prologue
    .line 1921
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1923
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhotoSphereGLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    .line 1924
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1925
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    :cond_0
    monitor-exit p0

    return-void

    .line 1921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final finishCapture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1362
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->isPhotoTakingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "Not finishing capture since photo taking is in progress."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_COMPLETE_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 1371
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    .line 1372
    invoke-direct {p0, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->setShutterButtonEnabled(Z)V

    .line 5283
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 5285
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_lightcycle_quality_key"

    .line 5286
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5287
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5288
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setOutputResolutionSmall()V

    .line 1377
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->animationManager:Lcom/android/camera/ui/AnimationManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->flashOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AnimationManager;->startFlashAnimation(Landroid/view/View;)V

    .line 1378
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$19;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSpherePreviewWriter:Ljava/lang/Thread;

    .line 1435
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSpherePreviewWriter:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1436
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->pauseCapture()V

    .line 1439
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$20;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$20;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdownNow$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1458
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetToPreCaptureUI(ZZ)V

    .line 1460
    iput v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    .line 1461
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    goto :goto_0

    .line 5289
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5290
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setOutputResolutionMedium()V

    goto :goto_1

    .line 5291
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5292
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setOutputResolutionLarge()V

    goto :goto_1

    .line 5294
    :cond_3
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setOutputResolutionMedium()V

    goto :goto_1
.end method

.method private final initRenderer()V
    .locals 4

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1092
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->surfaceWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->surfaceHeight:I

    .line 1093
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1094
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1096
    :cond_0
    return-void
.end method

.method private final onCaptureCancel()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$17;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$17;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1280
    return-void
.end method

.method private final onCaptureDone()V
    .locals 2

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isShutterButtonEnabled:Z

    if-nez v0, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->FISHEYE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_1

    .line 1306
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->finishCapture()V

    goto :goto_0

    .line 1311
    :cond_1
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getNumTotalTargets()I

    move-result v0

    .line 1312
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getNumCapturedTargets()I

    move-result v1

    .line 1313
    if-ge v1, v0, :cond_2

    .line 1314
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$18;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$18;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1349
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->finishCapture()V

    goto :goto_0
.end method

.method private final onFirstCapture()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 1169
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showBottomBar()V

    .line 1171
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/PhotoSphereStatechart;->onStartCapture()V

    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inCaptureSequence:Z

    .line 1174
    :cond_0
    return-void
.end method

.method private final onPanoOrientationUpdate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inCaptureSequence:Z

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    const v1, 0x7f0a02c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_3

    .line 392
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 431
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v1, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->panoramaMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    goto :goto_0

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    const v1, 0x7f0a02c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 401
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->VERTICAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_3

    .line 402
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->VERTICAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    goto :goto_1

    .line 410
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    const v1, 0x7f0a02c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 411
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->WIDE_ANGLE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_3

    .line 412
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->WIDE_ANGLE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_7

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 416
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    goto :goto_1

    .line 420
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    const v1, 0x7f0a02c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->FISHEYE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_3

    .line 422
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->FISHEYE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 426
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    goto/16 :goto_1
.end method

.method private final pauseCapture()V
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->stopCamera()V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 1476
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$21;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$21;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1488
    :cond_1
    return-void
.end method

.method private final resetToPreCaptureUI(ZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1184
    if-eqz p2, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetCaptureOptionsRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x578

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1192
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inCaptureSequence:Z

    .line 1195
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoOrientationObservable:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onPanoOrientationUpdate(Ljava/lang/String;)V

    .line 1201
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 1202
    const/4 v0, 0x1

    .line 1204
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToCapture(Z)V

    .line 1205
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetCaptureOptionsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private final restartCapture()V
    .locals 1

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isPaused:Z

    if-nez v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->stopCapture()V

    .line 1105
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCapture()V

    .line 1107
    :cond_0
    return-void
.end method

.method private final saveCalibratedFieldOfView(F)V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 1116
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photoSphereCalibratedFieldOfView"

    .line 1119
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1121
    return-void
.end method

.method private final setShutterButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 1931
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isShutterButtonEnabled:Z

    .line 1932
    return-void
.end method

.method private final shutDownRenderingAndStopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 914
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->stopCapture()V

    .line 915
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->releaseBackCamera()V

    .line 916
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->shutDown()V

    .line 918
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->release()V

    .line 923
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    .line 925
    :cond_1
    return-void
.end method

.method private final startCapture()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 946
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    if-nez v0, :cond_0

    .line 947
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "startCapture: camera device not open yet."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureStarted:Z

    if-eqz v0, :cond_1

    .line 952
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->stopCapture()V

    .line 955
    :cond_1
    iput v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    .line 956
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    .line 957
    iput v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->statNumUndos:I

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getLocalSessionStorage()Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v4, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "storage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v1, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->panoramaMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 981
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    .line 985
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereCalibrationOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    .line 990
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/panorama/RenderedGui;Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Lcom/android/camera/burst/OrientationLockController;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 993
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 994
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THMURJ6D5JIUHRJCLP7CQB3CLPKGPBCE1IN4EP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TPMARJJDTP2UKR5DPPMUSIICLGM8PBI7C______(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 998
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 1006
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getLocationProvider()Lcom/android/camera/location/LocationProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Lcom/android/camera/location/LocationProvider;Lcom/google/android/apps/camera/inject/activity/ActivityServices;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 1008
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setOnPhotoTakenCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setPreviewDrawer(Lcom/android/camera/gl/SurfaceTextureRenderer;)V

    .line 1010
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->completedSessionListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setCompletedSessionCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->unsupportedCaptureSessionListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setUnsupportedCaptureSessionCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1014
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivityWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->switchSystemUiToLightsOut(Landroid/view/Window;)V

    .line 1015
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1021
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->CALIBRATION$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v0, v1, :cond_6

    .line 4905
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 4907
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_lightcycle_quality_key"

    .line 4908
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4909
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4910
    sget v5, Lcom/google/android/apps/lightcycle/camera/Resolution;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    .line 1025
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 1027
    invoke-virtual {v1}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 1029
    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPreviewCallback()Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    move-result-object v3

    const/4 v4, 0x1

    .line 1026
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->initCamera$51662RJ4E9NMIP1FEPKMATPFATKMSP3FET6M2RJ1CTIN4EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLS78EQCCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9F8DGMQPBIC50MEPBEEGI46OBDCLP62K3ICLR6IPBN8HGN8OA3C5M6OOJ1CDLJMMICCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FCDGMQPBIC4NL4PBJDTM7AT39DTN3MAACCDNMQBR1DPI74RR9CGNMAU1FCDGMQPBIC4P2US3FE9Q62OJ9DHKN8U9FADKNKP9R(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;ZI)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->updateHorizontalViewAngle()V

    .line 1035
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setFrameDimensions(II)V

    .line 1036
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setupCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FCDGMQPBIC4NL4PBJDTM7AT39DTN3MAAQ(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1037
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t setup LightCycleController for startPreview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    sget-object v1, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start capture, local session storage not ready."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4911
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4912
    sget v5, Lcom/google/android/apps/lightcycle/camera/Resolution;->HIGH$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    goto :goto_1

    .line 4913
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4914
    sget v5, Lcom/google/android/apps/lightcycle/camera/Resolution;->MAX$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    goto :goto_1

    .line 4916
    :cond_5
    sget v5, Lcom/google/android/apps/lightcycle/camera/Resolution;->HIGH$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    goto :goto_1

    .line 1024
    :cond_6
    sget v5, Lcom/google/android/apps/lightcycle/camera/Resolution;->MAX$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    goto :goto_1

    .line 1042
    :cond_7
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$15;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$15;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 1086
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_0
.end method

.method private final startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 6

    .prologue
    .line 1496
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    .line 1497
    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1498
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "Could not create temporary mosaic file. Not able to stitch."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :goto_0
    return-void

    .line 1501
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1505
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    .line 1506
    invoke-virtual {v1}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->getMaxMemoryBytes()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 1507
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->runInCalibrationMode:Z

    long-to-int v2, v2

    invoke-static {v1, v0, v0, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->finishCapture(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1511
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$22;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule$22;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addSessionDataAsync(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;)V

    goto :goto_0
.end method

.method private final stopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 928
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->stitchingPaused:Z

    .line 929
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingServiceManager;->resumeProcessing()V

    .line 932
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->stopCamera()V

    .line 935
    :cond_0
    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->numberOfImages:I

    .line 936
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureStarted:Z

    .line 937
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getScreenOnController()Lcom/android/camera/util/activity/ScreenOnController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    .line 938
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 941
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    .line 943
    :cond_1
    return-void
.end method

.method private final updateOrientation()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 841
    :cond_0
    return-void
.end method

.method private final updateUi()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1583
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    .line 1585
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    .line 1587
    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 1588
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 1589
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v2, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 1594
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 1593
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 1597
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 1757
    return-void
.end method

.method public final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 885
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 887
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 894
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 895
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->cancelCallback:Landroid/view/View$OnClickListener;

    .line 896
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 897
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->doneCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 898
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 899
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->retakeCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 901
    return-object v0
.end method

.method public final getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 850
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule$14;-><init>()V

    return-object v0
.end method

.method public final getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    .line 652
    const v0, 0x7f0a0122

    .line 655
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 637
    :pswitch_0
    const v0, 0x7f0a0201

    .line 638
    goto :goto_0

    .line 640
    :pswitch_1
    const v0, 0x7f0a01fd

    .line 641
    goto :goto_0

    .line 643
    :pswitch_2
    const v0, 0x7f0a01fe

    .line 644
    goto :goto_0

    .line 646
    :pswitch_3
    const v0, 0x7f0a01ff

    .line 647
    goto :goto_0

    .line 649
    :pswitch_4
    const v0, 0x7f0a0200

    .line 650
    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public final init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 733
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 734
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getActivityServices()Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 735
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    .line 737
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    .line 738
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "pref_lightcycle_quality_key"

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    .line 741
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    .line 742
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    .line 746
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 747
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 745
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->init(Landroid/content/Context;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/storage/FileNamer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    .line 754
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    .line 759
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_pano_orientation"

    .line 760
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 773
    :goto_0
    invoke-direct {p0, v5}, Lcom/google/android/apps/lightcycle/PanoramaModule;->setShutterButtonEnabled(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->requestBackCamera()V

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->getAppRootView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->rootView:Landroid/view/ViewGroup;

    .line 777
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 778
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 779
    const v2, 0x7f040057

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 782
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, v1, v5}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f110177

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoButton:Landroid/view/View;

    .line 787
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f110146

    .line 789
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereCalibrationOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    .line 790
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereCalibrationOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->setScreenOrientation(I)V

    .line 3910
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f11013c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->flashOverlay:Landroid/view/View;

    .line 793
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 795
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "photosphere_show_help_overlay"

    .line 796
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->showHelpOverlay:Z

    .line 797
    new-instance v0, Lcom/android/camera/ui/AnimationManager;

    invoke-direct {v0}, Lcom/android/camera/ui/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->animationManager:Lcom/android/camera/ui/AnimationManager;

    .line 798
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustPhotoSphereHelpOverlay()V

    .line 4810
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    .line 4812
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$13;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 802
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ModeSwitchSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ModeSwitchSession;->recordModeSwitchEnd()V

    .line 803
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot instantiate PanoramaModule."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 764
    :cond_0
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->VERTICAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    goto/16 :goto_0

    .line 767
    :cond_1
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    goto/16 :goto_0
.end method

.method public final isBurstSupported()Z
    .locals 1

    .prologue
    .line 1949
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupportingSurfaceViewPreviewCallbacks()Z
    .locals 1

    .prologue
    .line 1939
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    return v0
.end method

.method public final isZoomSupported()Z
    .locals 1

    .prologue
    .line 1944
    const/4 v0, 0x0

    return v0
.end method

.method public final onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4

    .prologue
    .line 1770
    new-instance v0, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 1771
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;-><init>(Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    .line 7625
    sget-boolean v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->nativeInitialized:Z

    if-nez v0, :cond_0

    .line 8046
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 8047
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFieldOfViewDegrees(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)F

    move-result v1

    .line 8051
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    .line 8050
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->init$514KIHIQ55B0____(IIF)V

    .line 7629
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->nativeInitialized:Z

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sTRenderer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    if-nez v0, :cond_2

    .line 1778
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    .line 1779
    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1780
    if-eqz v1, :cond_1

    .line 1789
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V

    .line 1792
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1793
    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceHeight()I

    move-result v0

    .line 1792
    invoke-interface {v2, v1, v3, v0}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 1806
    :cond_1
    :goto_0
    return-void

    .line 1803
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCapture()V

    .line 1804
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onPreviewStarted()V

    goto :goto_0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1838
    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1810
    packed-switch p1, :pswitch_data_0

    .line 1817
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1812
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    if-eqz v0, :cond_0

    .line 1813
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onShutterButtonClick()V

    .line 1815
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1810
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1822
    packed-switch p1, :pswitch_data_0

    .line 1827
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1825
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inCaptureSequence:Z

    goto :goto_0

    .line 1822
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public final onLayoutOrientationChanged(Z)V
    .locals 3

    .prologue
    .line 1761
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onLayoutOrientationChanged, isLandscape: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    .line 1763
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->photoSphereCalibrationOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->orientation:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->setScreenOrientation(I)V

    .line 1764
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUi()V

    .line 1765
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustPhotoSphereHelpOverlay()V

    .line 1766
    return-void
.end method

.method public final onPreviewVisibilityChanged(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1885
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-nez v0, :cond_0

    .line 1897
    :goto_0
    return-void

    .line 1890
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    move v0, v1

    .line 1891
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setRenderingStopped(Z)V

    .line 1894
    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->showHelpOverlay:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 1896
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setDisablePhotoTaking(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1890
    goto :goto_1
.end method

.method public final onShutterButtonClick()V
    .locals 2

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->captureStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inCaptureSequence:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isShutterButtonEnabled:Z

    if-nez v0, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    .line 1156
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inWideAngleMode:Z

    if-eqz v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    invoke-virtual {v1}, Lcom/android/camera/ui/controller/PanoramaStatechart;->onStartCapture()V

    .line 1159
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToCancel()V

    .line 1160
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->lightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startFirstCapture()Z

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->inCaptureSequence:Z

    goto :goto_0
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 1136
    return-void
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public final onSingleTapUp$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954IILG_(II)V
    .locals 0

    .prologue
    .line 1831
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 1692
    return-void
.end method

.method public final resume()V
    .locals 3

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/storage/StorageDialogBuilder;->checkSpaceAndShowPreviewDialogIfNecessary(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1688
    return-void
.end method

.method public final start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1644
    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isPaused:Z

    .line 1647
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, v1, v5}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V

    .line 1650
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->requestBackCamera()V

    .line 1651
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->createGLHandler()V

    .line 1653
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1654
    const-string v1, "Model is: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1657
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/LegacyCameraProvider;->getFirstBackCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1658
    const v0, 0x7f0a0267

    .line 6542
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->stop()V

    .line 6543
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 6545
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10302d2

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 6548
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 6549
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a024b

    new-instance v4, Lcom/google/android/apps/lightcycle/PanoramaModule$23;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule$23;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;I)V

    .line 6550
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6559
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6560
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1681
    :goto_1
    return-void

    .line 1654
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :cond_1
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1667
    invoke-static {}, Lcom/android/camera/storage/StorageModule;->provideDcimCameraFolder()Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->setPanoramaDestination(Ljava/lang/String;)Z

    .line 1671
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    .line 1672
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1673
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .line 1674
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoEnabledListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonStatusListener$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1675
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->undoVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisibilityListener$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 1677
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->updateUiRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/UiObservable;->addCallback(Ljava/lang/Runnable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1678
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showCloseButton()V

    .line 1680
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    goto :goto_1
.end method

.method public final stop()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1696
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isPaused:Z

    if-eqz v0, :cond_0

    .line 1697
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "Cannot pause already paused PanoramaModule"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    :goto_0
    return-void

    .line 1700
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->isPaused:Z

    .line 7180
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetToPreCaptureUI(ZZ)V

    .line 1706
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1707
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1712
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->shutDownRenderingAndStopCapture()V

    .line 1717
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1719
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLThread:Landroid/os/HandlerThread;

    .line 1720
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->gLHandler:Landroid/os/Handler;

    .line 1723
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 1726
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1727
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->interrupt()V

    .line 1730
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$27;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$27;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1745
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    .line 1747
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_3

    .line 1748
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->activityLayoutCallbackHandle:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1751
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    goto :goto_0
.end method
