.class public final Lcom/android/camera/module/video2/InjectedVideo2Intent;
.super Lcom/android/camera/module/ForwardingModuleController;
.source "InjectedVideo2Intent.java"


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

.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private final camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

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

.field private final intent:Lcom/android/camera/util/activity/IntentHandler;

.field private final legacyCameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

.field private final legacyLegacyCameraProvider:Lcom/android/camera/app/LegacyCameraProvider;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private final storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

.field private final videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

.field private final videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/ui/DetailsDialog;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            "Landroid/hardware/camera2/CameraManager;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/util/activity/IntentHandler;",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/device/CameraDeviceManager;",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/google/android/apps/camera/async/Observable;",
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
    .line 109
    invoke-direct {p0}, Lcom/android/camera/module/ForwardingModuleController;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->legacyCameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 111
    iput-object p2, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->legacyLegacyCameraProvider:Lcom/android/camera/app/LegacyCameraProvider;

    .line 112
    iput-object p3, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 113
    iput-object p4, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 114
    iput-object p5, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->intent:Lcom/android/camera/util/activity/IntentHandler;

    .line 115
    iput-object p6, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    .line 116
    iput-object p7, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 117
    iput-object p8, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 118
    iput-object p9, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 119
    iput-object p10, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 120
    iput-object p11, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 121
    iput-object p12, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 122
    iput-object p13, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 123
    iput-object p14, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 124
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 125
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 126
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 127
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    .line 128
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 129
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->flashSetting:Lcom/google/android/apps/camera/async/Observable;

    .line 130
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 131
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 132
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    .line 133
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 134
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 135
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 136
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 137
    return-void
.end method


# virtual methods
.method protected final create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPA3DTN78SJFDHM6ASHR(Lcom/android/camera/app/AppController;)Lcom/android/camera/module/ModuleController;
    .locals 30

    .prologue
    .line 141
    new-instance v1, Lcom/android/camera/module/videointent/VideoIntentModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->legacyCameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->legacyLegacyCameraProvider:Lcom/android/camera/app/LegacyCameraProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->intent:Lcom/android/camera/util/activity/IntentHandler;

    .line 149
    invoke-virtual {v5}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    .line 150
    invoke-virtual {v5}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->flashSetting:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->whiteBalanceSetting:Lcom/android/camera/settings/WhiteBalanceSetting;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent;->evScrollingState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v29, v0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v29}, Lcom/android/camera/module/videointent/VideoIntentModule;-><init>(Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Landroid/content/Intent;Ljava/lang/String;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;)V

    .line 141
    return-object v1
.end method
