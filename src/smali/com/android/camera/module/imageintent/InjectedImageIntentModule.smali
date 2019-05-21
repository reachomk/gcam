.class public final Lcom/android/camera/module/imageintent/InjectedImageIntentModule;
.super Lcom/android/camera/module/ForwardingModuleController;
.source "InjectedImageIntentModule.java"


# instance fields
.field private final activityContext:Landroid/content/Context;

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

.field private final activityResources:Landroid/content/res/Resources;

.field private final activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private final cameraActivityUi:Lcom/android/camera/ui/views/CameraActivityUi;

.field private final cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

.field private final cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final flags:Lcom/android/camera/util/flags/Flags;

.field private final gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

.field private final intent:Lcom/android/camera/util/activity/IntentHandler;

.field private final locationProvider:Lcom/android/camera/location/LocationProvider;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

.field private final previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private final settings:Lcom/android/camera/settings/Settings;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;

.field private final shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/ui/DetailsDialog;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/storage/FilesProxy;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/inject/activity/ActivityServices;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/Settings;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/one/OneCameraOpener;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/util/activity/IntentHandler;",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/error/ShotFailureHandler;",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/CameraFileUtil;",
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
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/camera/module/ForwardingModuleController;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityResources:Landroid/content/res/Resources;

    .line 129
    iput-object p3, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 130
    iput-object p4, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    .line 131
    iput-object p5, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->locationProvider:Lcom/android/camera/location/LocationProvider;

    .line 132
    iput-object p6, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 133
    iput-object p7, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->intent:Lcom/android/camera/util/activity/IntentHandler;

    .line 134
    iput-object p8, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    .line 135
    iput-object p9, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 136
    iput-object p10, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 137
    iput-object p11, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 138
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 139
    iput-object p13, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 140
    iput-object p14, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 141
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 142
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 143
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    .line 144
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 145
    iput-object p12, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 146
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    .line 147
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 148
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 149
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 150
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 151
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 152
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    .line 153
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 154
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 155
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->cameraActivityUi:Lcom/android/camera/ui/views/CameraActivityUi;

    .line 156
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 157
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    .line 158
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->flags:Lcom/android/camera/util/flags/Flags;

    .line 159
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 160
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->settings:Lcom/android/camera/settings/Settings;

    .line 161
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 162
    return-void
.end method


# virtual methods
.method protected final create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPA3DTN78SJFDHM6ASHR(Lcom/android/camera/app/AppController;)Lcom/android/camera/module/ModuleController;
    .locals 38

    .prologue
    .line 166
    new-instance v1, Lcom/android/camera/module/imageintent/ImageIntentModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->locationProvider:Lcom/android/camera/location/LocationProvider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->fileNamer:Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->intent:Lcom/android/camera/util/activity/IntentHandler;

    .line 182
    invoke-virtual {v8}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    .line 187
    invoke-virtual {v8}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->cameraActivityUi:Lcom/android/camera/ui/views/CameraActivityUi;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->flags:Lcom/android/camera/util/flags/Flags;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;->settings:Lcom/android/camera/settings/Settings;

    move-object/from16 v37, v0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v37}, Lcom/android/camera/module/imageintent/ImageIntentModule;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Landroid/content/Intent;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/inject/activity/ActivityServices;Ljava/lang/String;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/Settings;)V

    .line 166
    return-object v1
.end method
