.class public final Lcom/android/camera/module/video2/Video2HfrModule_Factory;
.super Ljava/lang/Object;
.source "Video2HfrModule_Factory.java"

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

.field private final camcorderDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
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

.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManagerV2;",
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

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
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

.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
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

.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
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

.field private final localFilmstripDataAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final locationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
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

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/NotificationManager;",
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

.field private final photoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final previewLongPressListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
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

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOnControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ScreenOnController;",
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

.field private final video2HfrModuleMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/video2/Video2HfrModule;",
            ">;"
        }
    .end annotation
.end field

.field private final video2ModuleUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            ">;"
        }
    .end annotation
.end field

.field private final videoBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final videoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final videoRotationMetadataLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoRotationMetadataLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
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
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/video2/Video2HfrModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
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
            "Lcom/android/camera/device/CameraDeviceManagerV2;",
            ">;",
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
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoRotationMetadataLoader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->video2HfrModuleMembersInjector:Ldagger/MembersInjector;

    .line 181
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 183
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 185
    iput-object p4, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 187
    iput-object p5, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 189
    iput-object p6, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->camcorderManagerProvider:Ljavax/inject/Provider;

    .line 191
    iput-object p7, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 193
    iput-object p8, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 195
    iput-object p9, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 197
    iput-object p10, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 199
    iput-object p11, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 201
    iput-object p12, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 203
    iput-object p13, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 205
    iput-object p14, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 207
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 209
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 211
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->locationProvider:Ljavax/inject/Provider;

    .line 213
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->localFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    .line 215
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 217
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 219
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 221
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 223
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->photoItemFactoryProvider:Ljavax/inject/Provider;

    .line 225
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 227
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->screenOnControllerProvider:Ljavax/inject/Provider;

    .line 229
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 231
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->videoBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;

    .line 233
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->videoItemFactoryProvider:Ljavax/inject/Provider;

    .line 235
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    .line 237
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 239
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->video2ModuleUIProvider:Ljavax/inject/Provider;

    .line 241
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->videoRotationMetadataLoaderProvider:Ljavax/inject/Provider;

    .line 243
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->camcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 245
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->flashPropertyProvider:Ljavax/inject/Provider;

    .line 247
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 249
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 251
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 253
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    .line 255
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 257
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    .line 259
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 261
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->flagsProvider:Ljavax/inject/Provider;

    .line 262
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 44

    .prologue
    .line 48
    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->video2HfrModuleMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v43, v0

    new-instance v1, Lcom/android/camera/module/video2/Video2HfrModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 1269
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 1270
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 1271
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1272
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/ApiHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->camcorderManagerProvider:Ljavax/inject/Provider;

    .line 1273
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/camcorder/CamcorderManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 1274
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/views/CameraActivityUi;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->legacyCameraServicesProvider:Ljavax/inject/Provider;

    .line 1275
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->legacyLegacyCameraProvider:Ljavax/inject/Provider;

    .line 1276
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/app/LegacyCameraProvider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 1277
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/device/CameraDeviceManagerV2;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1278
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 1279
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1280
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 1281
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1282
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1283
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->locationProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1284
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/location/LocationProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->localFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 1285
    invoke-interface/range {v18 .. v18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    .line 1286
    invoke-interface/range {v19 .. v19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    .line 1287
    invoke-interface/range {v20 .. v20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/ui/DetailsDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    .line 1288
    invoke-interface/range {v21 .. v21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    .line 1289
    invoke-interface/range {v22 .. v22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->photoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v0

    .line 1290
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/data/PhotoItemFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->resourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v0

    .line 1291
    invoke-interface/range {v24 .. v24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->screenOnControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    .line 1292
    invoke-interface/range {v25 .. v25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/camera/util/activity/ScreenOnController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v0

    .line 1293
    invoke-interface/range {v26 .. v26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->videoBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v0

    .line 1294
    invoke-interface/range {v27 .. v27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->videoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    .line 1295
    invoke-interface/range {v28 .. v28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/camera/data/VideoItemFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    .line 1296
    invoke-interface/range {v29 .. v29}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/camera/ui/viewfinder/Viewfinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v0

    .line 1297
    invoke-interface/range {v30 .. v30}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->video2ModuleUIProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->videoRotationMetadataLoaderProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    .line 1299
    invoke-interface/range {v32 .. v32}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/camera/data/VideoRotationMetadataLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->camcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v0

    .line 1300
    invoke-interface/range {v33 .. v33}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->flashPropertyProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v0

    .line 1301
    invoke-interface/range {v34 .. v34}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v0

    .line 1302
    invoke-interface/range {v35 .. v35}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    .line 1303
    invoke-interface/range {v36 .. v36}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/camera/settings/WhiteBalanceSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v0

    .line 1304
    invoke-interface/range {v37 .. v37}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v0

    .line 1305
    invoke-interface/range {v38 .. v38}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v0

    .line 1306
    invoke-interface/range {v39 .. v39}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v0

    .line 1307
    invoke-interface/range {v40 .. v40}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v0

    .line 1308
    invoke-interface/range {v41 .. v41}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModule_Factory;->flagsProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v0

    .line 1309
    invoke-interface/range {v42 .. v42}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/camera/util/flags/Flags;

    invoke-direct/range {v1 .. v42}, Lcom/android/camera/module/video2/Video2HfrModule;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/UiObservable;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/device/CameraDeviceManagerV2;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/content/ContentResolver;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Ljava/util/concurrent/Executor;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/DetailsDialog;Landroid/app/NotificationManager;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Landroid/content/res/Resources;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Ljavax/inject/Provider;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/util/flags/Flags;)V

    .line 1266
    move-object/from16 v0, v43

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/video2/Video2HfrModule;

    .line 48
    return-object v1
.end method
