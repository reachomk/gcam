.class public final Lcom/android/camera/module/videointent/VideoIntentModule;
.super Lcom/android/camera/module/CameraModule;
.source "VideoIntentModule.java"

# interfaces
.implements Lcom/android/camera/camcorder/MediaStorageCallback;
.implements Lcom/android/camera/module/videointent/VideoController;


# instance fields
.field private activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

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

.field private activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private alertDialog:Landroid/app/AlertDialog;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private appController:Lcom/android/camera/app/AppController;

.field private final camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final flashSetting:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private intent:Landroid/content/Intent;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

.field private oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private final previewTapHandler:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

.field private final previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private settingScopeNamespace:Ljava/lang/String;

.field private stateMachine:Lcom/android/camera/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/fsm/StateMachine",
            "<",
            "Lcom/android/camera/module/videointent/state/VideoIntentContext;",
            ">;"
        }
    .end annotation
.end field

.field private final storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

.field private touchPointInsideShutterButton:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

.field private final uIListener:Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

.field private final updateUiRunnable:Ljava/lang/Runnable;

.field private final videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

.field private final videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

.field private final whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "VideoIntentModule"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Landroid/content/Intent;Ljava/lang/String;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            "Lcom/android/camera/app/AppController;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Landroid/hardware/camera2/CameraManager;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/device/CameraDeviceManager;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p2, p3}, Lcom/android/camera/module/CameraModule;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;)V

    .line 125
    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/VideoIntentModule$1;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    .line 218
    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->uIListener:Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

    .line 426
    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/VideoIntentModule$3;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->updateUiRunnable:Ljava/lang/Runnable;

    .line 458
    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/VideoIntentModule$4;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 549
    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/VideoIntentModule$6;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTapHandler:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    .line 179
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 180
    iput-object p4, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 181
    iput-object p5, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 182
    iput-object p6, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 183
    iput-object p7, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 184
    iput-object p8, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->intent:Landroid/content/Intent;

    .line 185
    iput-object p9, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->settingScopeNamespace:Ljava/lang/String;

    .line 186
    iput-object p10, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 187
    iput-object p11, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 188
    iput-object p12, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 189
    iput-object p13, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 190
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 191
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 192
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 193
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 194
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 195
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    .line 196
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 197
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 198
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    .line 199
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->flashSetting:Lcom/google/android/apps/camera/async/Observable;

    .line 200
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 201
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 202
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 203
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 204
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/videointent/VideoIntentModule;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/module/videointent/VideoIntentModule;->updateUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/module/videointent/VideoIntentModule;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/module/videointent/VideoIntentModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->alertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUQBEEHIMST1FAPKM8PBF95N78PBEEH6MUP3LDHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3M___(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/storage/StorageDialogBuilder;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    return-object v0
.end method

.method private final updateUi()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    .line 437
    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 438
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 439
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    invoke-interface {v1}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v1}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/AspectRatio;

    .line 445
    if-eqz v1, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v3, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 452
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 451
    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 454
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPeekAccessibilityString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public final init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V
    .locals 34

    .prologue
    .line 233
    new-instance v2, Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 237
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraAppUI;->getAppRootView()Landroid/widget/FrameLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 238
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->uIListener:Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/module/videointent/VideoController;Landroid/view/View;Lcom/android/camera/ui/CameraAppUI;Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;Lcom/android/camera/ui/controller/VideoIntentStatechart;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    .line 241
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 244
    new-instance v2, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    .line 245
    new-instance v11, Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 247
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 250
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v5

    invoke-direct {v11, v3, v2, v4, v5}, Lcom/android/camera/module/ResourceSurfaceTextureFactory;-><init>(Lcom/android/camera/ui/CameraAppUI;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/burst/OrientationLockController;)V

    .line 251
    new-instance v19, Lcom/android/camera/module/video2/Video2Settings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 253
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 255
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "VideoModule"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/module/video2/Video2Settings;-><init>(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V

    .line 257
    new-instance v24, Lcom/android/camera/module/video2/Video2FileSaver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/android/camera/module/video2/Video2FileSaver;-><init>(Landroid/content/ContentResolver;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->settingScopeNamespace:Ljava/lang/String;

    new-instance v5, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v5}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 265
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 268
    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getLocationProvider()Lcom/android/camera/location/LocationProvider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 269
    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    .line 271
    invoke-interface {v12}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->appController:Lcom/android/camera/app/AppController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    move-object/from16 v16, v0

    .line 275
    invoke-interface/range {v16 .. v16}, Lcom/android/camera/app/AppController;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    move-object/from16 v17, v0

    .line 276
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/app/AppController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->flashSetting:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v33, v0

    move-object/from16 v25, p0

    .line 260
    invoke-static/range {v2 .. v33}, Lcom/android/camera/module/videointent/state/VideoIntentContextImpl;->create$51662RJ4E9NMIP1FCDNMST35DPQ2UIBEEHIMST1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNMIRJKCLN78BQMD5I6ARQ9DPQ6ARJK9LNM8TBCCLAKIEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FD1GN4P3NC5P6ABR3C5MMASJ168NK6OBDCLP62JB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OADC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMORR3C5Q6IRRE5T66UOR1EHKMURIGE9NNCQB4CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UR31F5NNAT1F9TP6IPBEEHGN8QBFDP6M2RJ1CTIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T96ASRFELP66PAJELP6COB3CLA6AU3KELP6AHJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUOR1E1Q7ASJ55T1M2S3KELP6AJBFCHQMOPAJDTQMSP2GDHGNIPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F85O70GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR5E9P6USHF8PGN8OBC8LP74RRI91GMSP3CCLP3MJ31DPI74RR9CGNM6RREEHIMST1FE9IN6BQICLPMUTBICDIN6EQCC5N68SJFD5I2UORFDPQ6ARJK5T1MURJKCLN78KJ5EDNMOTJ5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPIADIN8T39DPJN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NNCQB5ETJ6IRJ4CLP2ULJ9CLRMCQBECHIN4KR9F9IL6PBCCLHN8RRI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6ATJ9CDIIUGR1DLIN4OA4CLR6IOR59LGMSOB7CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMIRJACLHN8BR1E1O2UGBECHP6UQB4ADIN4TJ9CDIN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCI6D5M6AKR1EPIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQDCLI6IOAJEHNN4OB7CL1M2R3CC9GM6QPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLQ78QBECTPIULR8D5Q6AGJ1DHGMSOR5ADIN8T39DPJJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95THMURJKE9NMOR35E8NLCQB4CLNK6OBDCDNN4P35E926ATJ9CDIL6T31EHIM6Q31E9Q3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95THMURJKE9NMOR35E8NLCQB4CLNKIRJKCLN78KRKC5Q6AOR8C5P78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBRCD5J6AT39DLIIUGB3EHKNCQBKF566IPJ5EHKMQP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IKOOBPDTQN8I35DHO6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUQBEEHIMST1FEDQ62T355TB6IP35DT4MST35DPQ46RREEHINGT1R(Landroid/content/Intent;Lcom/android/camera/module/videointent/VideoIntentModuleUI;Ljava/lang/String;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/ResourceSurfaceTextureFactory;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/app/AppController;Lcom/android/camera/error/FatalErrorHandler;Landroid/content/res/Resources;Landroid/content/ContentResolver;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/camcorder/CamcorderManager;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/CaptureLayoutHelper;)Lcom/android/camera/module/videointent/state/VideoIntentContext;

    move-result-object v2

    .line 294
    new-instance v3, Lcom/android/camera/fsm/StateMachineImpl;

    invoke-direct {v3, v2}, Lcom/android/camera/fsm/StateMachineImpl;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v3, Lcom/android/camera/module/videointent/state/StateBackground;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    invoke-direct {v3, v4}, Lcom/android/camera/module/videointent/state/StateBackground;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    invoke-interface {v2, v3}, Lcom/android/camera/fsm/StateMachine;->setInitialState(Lcom/android/camera/fsm/State;)Z

    .line 298
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v2

    check-cast v2, Lcom/android/camera/stats/ModeSwitchSession;

    invoke-virtual {v2}, Lcom/android/camera/stats/ModeSwitchSession;->recordModeSwitchEnd()V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/videointent/VideoIntentModule;->updateUi()V

    .line 300
    return-void
.end method

.method public final isBurstSupported()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public final isZoomSupported()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public final onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public final onLayoutOrientationChanged(Z)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public final onMediaStorageFull(Z)V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/VideoIntentModule$5;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public final onPauseButtonClicked()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public final onResumeButtonClicked()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public final onShutterButtonClick()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    iget-object v2, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->touchPointInsideShutterButton:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    invoke-direct {v1, v2}, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;-><init>(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->touchPointInsideShutterButton:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 373
    return-void
.end method

.method public final onSnapshotButtonClicked()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventPause;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventPause;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 305
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->onModuleResumed()V

    .line 306
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventResume;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventResume;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 308
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 309
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 310
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/VideoIntentModule;->isSupportingSurfaceViewPreviewCallbacks()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->updateUiRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/UiObservable;->addCallback(Ljava/lang/Runnable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 314
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 316
    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->updateUiRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 315
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observables;->addCallback(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 318
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->volumeKeyControllerListener:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTapHandler:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/wirers/PreviewTapListener;->setListener(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;)V

    .line 320
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleUI:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->onModulePaused()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventStop;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->moduleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 336
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->setListener(Lcom/google/common/base/Optional;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/wirers/PreviewTapListener;->clearListener()V

    .line 338
    return-void
.end method
