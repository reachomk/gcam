.class public final Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;
.super Ljava/lang/Object;
.source "InjectedImageIntentModule_Factory.java"

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

.field private final activityResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final activityServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
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

.field private final cameraDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraFileUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
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

.field private final filesProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FilesProxy;",
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

.field private final gridLinesPropertyProvider:Ljavax/inject/Provider;
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

.field private final imageBackendProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;"
        }
    .end annotation
.end field

.field private final imageIntentStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final injectedImageIntentModuleMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/imageintent/InjectedImageIntentModule;",
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

.field private final oneCameraOpenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
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

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final shotFailureHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
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


# direct methods
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/imageintent/InjectedImageIntentModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
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
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FilesProxy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
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
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/activity/ActivityServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
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
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
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
            "Lcom/android/camera/util/flags/Flags;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->injectedImageIntentModuleMembersInjector:Ldagger/MembersInjector;

    .line 159
    iput-object p2, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 161
    iput-object p3, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityResourcesProvider:Ljavax/inject/Provider;

    .line 163
    iput-object p4, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 165
    iput-object p5, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->oneCameraOpenerProvider:Ljavax/inject/Provider;

    .line 167
    iput-object p6, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->locationProvider:Ljavax/inject/Provider;

    .line 169
    iput-object p7, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 171
    iput-object p8, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->intentProvider:Ljavax/inject/Provider;

    .line 173
    iput-object p9, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 175
    iput-object p10, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 177
    iput-object p11, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 179
    iput-object p12, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->imageBackendProvider:Ljavax/inject/Provider;

    .line 181
    iput-object p13, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->filesProxyProvider:Ljavax/inject/Provider;

    .line 183
    iput-object p14, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 185
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 187
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 189
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 191
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->shotFailureHandlerProvider:Ljavax/inject/Provider;

    .line 193
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityServicesProvider:Ljavax/inject/Provider;

    .line 195
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 197
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 199
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->cameraFileUtilProvider:Ljavax/inject/Provider;

    .line 201
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 203
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    .line 205
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 207
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 209
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 211
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 213
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->gridLinesPropertyProvider:Ljavax/inject/Provider;

    .line 215
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 217
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 219
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    .line 221
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->flagsProvider:Ljavax/inject/Provider;

    .line 223
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 225
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 227
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 228
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 38

    .prologue
    .line 45
    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->injectedImageIntentModuleMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v37, v0

    new-instance v1, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 1235
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityResourcesProvider:Ljavax/inject/Provider;

    .line 1236
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1237
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->oneCameraOpenerProvider:Ljavax/inject/Provider;

    .line 1238
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/OneCameraOpener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->locationProvider:Ljavax/inject/Provider;

    .line 1239
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/location/LocationProvider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 1240
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/burst/OrientationLockController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->intentProvider:Ljavax/inject/Provider;

    .line 1241
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/util/activity/IntentHandler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 1242
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/DetailsDialog;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityLayoutProvider:Ljavax/inject/Provider;

    .line 1243
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1244
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->imageBackendProvider:Ljavax/inject/Provider;

    .line 1245
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->filesProxyProvider:Ljavax/inject/Provider;

    .line 1246
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/storage/FilesProxy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1247
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1248
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1249
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1250
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->shotFailureHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 1251
    invoke-interface/range {v18 .. v18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/error/ShotFailureHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    .line 1252
    invoke-interface/range {v19 .. v19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->androidServicesProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    .line 1253
    invoke-interface/range {v20 .. v20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    .line 1254
    invoke-interface/range {v21 .. v21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->cameraFileUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    .line 1255
    invoke-interface/range {v22 .. v22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/storage/CameraFileUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v0

    .line 1256
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/error/FatalErrorHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->previewTransformCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v0

    .line 1257
    invoke-interface/range {v24 .. v24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/camera/module/PreviewTransformCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    .line 1258
    invoke-interface/range {v25 .. v25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v0

    .line 1259
    invoke-interface/range {v26 .. v26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v0

    .line 1260
    invoke-interface/range {v27 .. v27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/camera/ui/controller/ImageIntentStatechart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    .line 1261
    invoke-interface/range {v28 .. v28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->gridLinesPropertyProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    .line 1262
    invoke-interface/range {v29 .. v29}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v0

    .line 1263
    invoke-interface/range {v30 .. v30}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/camera/ui/views/CameraActivityUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v0

    .line 1264
    invoke-interface/range {v31 .. v31}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    .line 1265
    invoke-interface/range {v32 .. v32}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->flagsProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v0

    .line 1266
    invoke-interface/range {v33 .. v33}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/camera/util/flags/Flags;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v0

    .line 1267
    invoke-interface/range {v34 .. v34}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->settingsProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v0

    .line 1268
    invoke-interface/range {v35 .. v35}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/camera/settings/Settings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    .line 1269
    invoke-interface/range {v36 .. v36}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-direct/range {v1 .. v36}, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/ui/DetailsDialog;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/storage/FilesProxy;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/inject/activity/ActivityServices;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/util/flags/Flags;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/Settings;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 1232
    move-object/from16 v0, v37

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/imageintent/InjectedImageIntentModule;

    .line 45
    return-object v1
.end method
