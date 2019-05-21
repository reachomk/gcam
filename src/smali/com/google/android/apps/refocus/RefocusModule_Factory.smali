.class public final Lcom/google/android/apps/refocus/RefocusModule_Factory;
.super Ljava/lang/Object;
.source "RefocusModule_Factory.java"

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
.field private final activityContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

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

.field private final androidServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;"
        }
    .end annotation
.end field

.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
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

.field private final lensBlurStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/LensBlurStatechart;",
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

.field private final orientationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
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

.field private final refocusModuleMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/google/android/apps/refocus/RefocusModule;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
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

.field private final windowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/google/android/apps/refocus/RefocusModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
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
            "Lcom/android/camera/settings/SettingsManager;",
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
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/LensBlurStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->refocusModuleMembersInjector:Ldagger/MembersInjector;

    .line 91
    iput-object p2, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 93
    iput-object p3, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 95
    iput-object p4, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 97
    iput-object p5, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 99
    iput-object p6, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 101
    iput-object p7, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 103
    iput-object p8, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 105
    iput-object p9, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 107
    iput-object p10, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 109
    iput-object p11, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 111
    iput-object p12, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    .line 113
    iput-object p13, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 115
    iput-object p14, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 117
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 119
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 121
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->lensBlurStatechartProvider:Ljavax/inject/Provider;

    .line 123
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 125
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->windowProvider:Ljavax/inject/Provider;

    .line 126
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 21

    .prologue
    .line 28
    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->refocusModuleMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v20, v0

    new-instance v1, Lcom/google/android/apps/refocus/RefocusModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 1133
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 1134
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 1135
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/LegacyCameraProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 1136
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 1137
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1138
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 1139
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1140
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1141
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/util/ApiHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 1142
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    .line 1143
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 1144
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 1145
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/processing/ProcessingServiceManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 1146
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1147
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->lensBlurStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1148
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/controller/LensBlurStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 1149
    invoke-interface/range {v18 .. v18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/storage/StorageDialogBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule_Factory;->windowProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    .line 1150
    invoke-interface/range {v19 .. v19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/Window;

    invoke-direct/range {v1 .. v19}, Lcom/google/android/apps/refocus/RefocusModule;-><init>(Landroid/content/Context;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/settings/SettingsManager;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/processing/LightcycleLensBlurTaskManager;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/LensBlurStatechart;Lcom/android/camera/storage/StorageDialogBuilder;Landroid/view/Window;)V

    .line 1130
    move-object/from16 v0, v20

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/refocus/RefocusModule;

    .line 28
    return-object v1
.end method
