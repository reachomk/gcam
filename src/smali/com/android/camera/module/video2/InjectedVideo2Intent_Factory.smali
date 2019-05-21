.class public final Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;
.super Ljava/lang/Object;
.source "InjectedVideo2Intent_Factory.java"

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

.field private final activityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
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

.field private final camcorderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/hardware/camera2/CameraManager;",
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

.field private final evScrollingStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final flashPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
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

.field private final injectedVideo2IntentMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/video2/InjectedVideo2Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final intentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
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

.field private final moduleConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTapListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTransformCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
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

.field private final videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final videoIntentStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinderSizeSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
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

.field private final whiteBalanceSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/video2/InjectedVideo2Intent;",
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
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
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
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/PreviewTransformCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->injectedVideo2IntentMembersInjector:Ldagger/MembersInjector;

    .line 126
    iput-object p2, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 128
    iput-object p3, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 130
    iput-object p4, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->cameraManagerProvider:Ljavax/inject/Provider;

    .line 132
    iput-object p5, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 134
    iput-object p6, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->intentProvider:Ljavax/inject/Provider;

    .line 136
    iput-object p7, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 138
    iput-object p8, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 140
    iput-object p9, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 142
    iput-object p10, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 144
    iput-object p11, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 146
    iput-object p12, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 148
    iput-object p13, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 150
    iput-object p14, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 152
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 154
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->camcorderManagerProvider:Ljavax/inject/Provider;

    .line 156
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 158
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    .line 160
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 162
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 164
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->flashPropertyProvider:Ljavax/inject/Provider;

    .line 166
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 168
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 170
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->videoIntentStatechartProvider:Ljavax/inject/Provider;

    .line 172
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 174
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 176
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 178
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    .line 179
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 30

    .prologue
    .line 36
    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->injectedVideo2IntentMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v29, v0

    new-instance v1, Lcom/android/camera/module/video2/InjectedVideo2Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 1186
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 1187
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/app/LegacyCameraProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->cameraManagerProvider:Ljavax/inject/Provider;

    .line 1188
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1189
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->intentProvider:Ljavax/inject/Provider;

    .line 1190
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/activity/IntentHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 1191
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/DetailsDialog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 1192
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1193
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1194
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 1195
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 1196
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1197
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 1198
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 1199
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/device/CameraDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->camcorderManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1200
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1201
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 1202
    invoke-interface/range {v18 .. v18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    .line 1203
    invoke-interface/range {v19 .. v19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/storage/StorageDialogBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    .line 1204
    invoke-interface/range {v20 .. v20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->flashPropertyProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    .line 1205
    invoke-interface/range {v21 .. v21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    .line 1206
    invoke-interface/range {v22 .. v22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/settings/WhiteBalanceSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v0

    .line 1207
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->videoIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v0

    .line 1208
    invoke-interface/range {v24 .. v24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/camera/ui/controller/VideoIntentStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    .line 1209
    invoke-interface/range {v25 .. v25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v0

    .line 1210
    invoke-interface/range {v26 .. v26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v0

    .line 1211
    invoke-interface/range {v27 .. v27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    .line 1212
    invoke-interface/range {v28 .. v28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/camera/async/Observable;

    invoke-direct/range {v1 .. v28}, Lcom/android/camera/module/video2/InjectedVideo2Intent;-><init>(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/ui/DetailsDialog;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;)V

    .line 1183
    move-object/from16 v0, v29

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/video2/InjectedVideo2Intent;

    .line 36
    return-object v1
.end method
