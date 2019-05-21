.class public final Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;
.super Lcom/android/camera/module/ForwardingModuleController;
.source "InjectedPhotoSphereMode.java"


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

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final legacyCameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

.field private final legacyLegacyCameraProvider:Lcom/android/camera/app/LegacyCameraProvider;

.field private final lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

.field private final photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/processing/LightcycleLensBlurTaskManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/module/ForwardingModuleController;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->legacyCameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 63
    iput-object p2, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->legacyLegacyCameraProvider:Lcom/android/camera/app/LegacyCameraProvider;

    .line 64
    iput-object p3, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 65
    iput-object p4, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 66
    iput-object p5, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    .line 67
    iput-object p6, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 68
    iput-object p7, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 69
    iput-object p8, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    .line 70
    iput-object p9, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 71
    iput-object p10, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 72
    iput-object p11, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    .line 73
    iput-object p12, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    .line 74
    iput-object p13, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    .line 75
    iput-object p14, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 76
    return-void
.end method


# virtual methods
.method protected final create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPA3DTN78SJFDHM6ASHR(Lcom/android/camera/app/AppController;)Lcom/android/camera/module/ModuleController;
    .locals 20

    .prologue
    .line 80
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->legacyCameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->legacyLegacyCameraProvider:Lcom/android/camera/app/LegacyCameraProvider;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->activityLayout:Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->fileNamer:Lcom/android/camera/storage/FileNamer;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->photoSphereStatechart:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;->storageDialogBuilder:Lcom/android/camera/storage/StorageDialogBuilder;

    move-object/from16 v19, v0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lcom/google/android/apps/lightcycle/PanoramaModule;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/app/AppController;ZLcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/processing/LightcycleLensBlurTaskManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/storage/FileNamer;Lcom/google/android/apps/camera/async/AddOnlyLifetime;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/storage/StorageDialogBuilder;)V

    return-object v1
.end method
