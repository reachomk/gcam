.class public final Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;
.super Ljava/lang/Object;
.source "InjectedPhotoSphereMode_Factory.java"

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

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final injectedPhotoSphereModeMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;",
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

.field private final lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
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

.field private final panoramaStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final photoSphereStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
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
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;",
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
            "Lcom/android/camera/storage/FileNamer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
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
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->injectedPhotoSphereModeMembersInjector:Ldagger/MembersInjector;

    .line 75
    iput-object p2, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p3, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p4, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p5, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p6, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p7, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p8, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p9, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p10, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 93
    iput-object p11, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 95
    iput-object p12, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->panoramaStatechartProvider:Ljavax/inject/Provider;

    .line 97
    iput-object p13, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->photoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 99
    iput-object p14, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 101
    iput-object p15, p0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 102
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 17

    .prologue
    .line 24
    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->injectedPhotoSphereModeMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 1109
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 1110
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/app/LegacyCameraProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 1111
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 1112
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 1113
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1115
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    .line 1116
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 1117
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/processing/ProcessingServiceManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 1118
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->panoramaStatechartProvider:Ljavax/inject/Provider;

    .line 1119
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/controller/PanoramaStatechart;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->photoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 1120
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 1121
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/storage/StorageDialogBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1122
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct/range {v1 .. v15}, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/processing/LightcycleLensBlurTaskManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/google/android/apps/camera/async/MainThread;)V

    .line 1106
    move-object/from16 v0, v16

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;

    .line 24
    return-object v1
.end method
