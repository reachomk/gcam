.class final Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/android/camera/activity/main/CameraActivityUiComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraActivityUiComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;
    }
.end annotation


# instance fields
.field private accessibilityUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/AccessibilityUtil;",
            ">;"
        }
    .end annotation
.end field

.field private activityLayoutManagerImplProvider:Ljavax/inject/Provider;

.field private cameraActivityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraActivityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private cameraActivityControllerInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraActivityControllerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private cameraActivityUiStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/CameraActivityUiStartup;",
            ">;"
        }
    .end annotation
.end field

.field private cameraAppStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private cameraFacingStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;

.field private final cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

.field private final cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

.field private captureIndicatorControllerImplProvider:Ljavax/inject/Provider;

.field private captureIndicatorControllerSecureImplProvider:Ljavax/inject/Provider;

.field private final captureIndicatorModule:Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;

.field private captureModeUiStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModeUiStartup;",
            ">;"
        }
    .end annotation
.end field

.field private captureModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModule;",
            ">;"
        }
    .end annotation
.end field

.field private captureStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private countdownStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private evCompUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/EvCompUiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompViewControllerModule:Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;

.field private final faceAnnouncerModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8PGM6PA1DPN6UTBECDIN4JBFCHQMOP9R:Lcom/android/camera/util/lifecycle/Lifecycles;

.field private final filmstripModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS2DDTI7AR357C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;

.field private gridLinesUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/GridLinesUiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private hfrVideoStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private imageIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private inflateCameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private injectedImageIntentModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/imageintent/InjectedImageIntentModule;",
            ">;"
        }
    .end annotation
.end field

.field private injectedPanoramaModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/photosphere/InjectedPanoramaMode;",
            ">;"
        }
    .end annotation
.end field

.field private injectedPhotoSphereModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;",
            ">;"
        }
    .end annotation
.end field

.field private injectedVideo2IntentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/InjectedVideo2Intent;",
            ">;"
        }
    .end annotation
.end field

.field private lensBlurStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private metadataLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;",
            ">;"
        }
    .end annotation
.end field

.field private optionsBarUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/OptionsBarUiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private panoramaStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private photoSphereStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private photoVideoStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityControllerShimProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityLayoutInflatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityLayoutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayoutManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdviceUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/advice/AdviceUiController;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppUpgraderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/AppUpgrader;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraActivityActionBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraActivityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraAppStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraAppStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraFacingStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraUiStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideCheckedViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;",
            ">;"
        }
    .end annotation
.end field

.field private provideCountdownStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideEvCompUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private provideEvCompViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;"
        }
    .end annotation
.end field

.field private provideFaceAnnouncerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFilmstripTransitioningStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideFilmstripUiStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideFixedLastProxyAdapterProvider:Ljavax/inject/Provider;

.field private provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideGestureManagerUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private provideGlideFilmstripManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGridLinesUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private provideHFRVideoStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/HfrVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideHfrFlashModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideHfrTorchInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideHfrTorchStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageIntentAppStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentAppStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageIntentStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideLayoutConfigProvider:Ljavax/inject/Provider;
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

.field private provideLensBlurStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/LensBlurStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalFilmstripDataAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/MainActivityLayout;",
            ">;"
        }
    .end annotation
.end field

.field private provideModeUiStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Initializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideModuleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOptionsBarUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private providePanoramaAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private providePanoramaConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private providePanoramaModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePanoramaStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoIntentAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoIntentConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoIntentModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePhotoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePhotoSphereAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoSphereConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoSphereModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePhotoSphereStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private providePhotoVideoStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideRefocusAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private provideRefocusConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private provideRefocusModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideSelfieFlashControllerImplProvider:Ljavax/inject/Provider;

.field private provideSelfieFlashControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/selfieflash/SelfieFlashController;",
            ">;"
        }
    .end annotation
.end field

.field private provideToyboxDrawerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiControllerInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoFlashModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoHfrAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoHfrBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoHfrConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoHfrModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideVideoIntentAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoIntentAppStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoIntentAppStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoIntentConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoIntentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideVideoIntentStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideVideoModuleUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoModuleUiHFRProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoSwipeHintUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoTorchInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideVideoTorchStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;"
        }
    .end annotation
.end field

.field private provideVolumeKeyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;"
        }
    .end annotation
.end field

.field private provideWindowBrightnessProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/WindowBrightness;",
            ">;"
        }
    .end annotation
.end field

.field private provideZoomUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;"
        }
    .end annotation
.end field

.field private refocusModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/refocus/RefocusModule;",
            ">;"
        }
    .end annotation
.end field

.field private rootUiControllerInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final selfieFlashModule:Lcom/android/camera/selfieflash/SelfieFlashModule;

.field private setOfUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/ui/wirers/UiWirer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

.field private final toyboxDrawerControllerModule:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule;

.field private video2HfrModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2HfrModule;",
            ">;"
        }
    .end annotation
.end field

.field private video2StandardModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2StandardModule;",
            ">;"
        }
    .end annotation
.end field

.field private videoCamcorderDeviceStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private videoIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private videoIntentStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private videoSwipeHintUiImplProvider:Ljavax/inject/Provider;

.field private videoSwipeStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private viewfinderGestureManagerWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;",
            ">;"
        }
    .end annotation
.end field

.field private viewfinderImplProvider:Ljavax/inject/Provider;

.field private zoomUiWirerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/ZoomUiWirer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;Lcom/android/camera/ui/views/CameraUiModule;)V
    .locals 55

    .prologue
    .line 3670
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3671
    invoke-static/range {p2 .. p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/views/CameraUiModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    .line 3672
    new-instance v2, Lcom/android/camera/selfieflash/SelfieFlashModule;

    invoke-direct {v2}, Lcom/android/camera/selfieflash/SelfieFlashModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->selfieFlashModule:Lcom/android/camera/selfieflash/SelfieFlashModule;

    .line 3673
    new-instance v2, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;

    invoke-direct {v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureIndicatorModule:Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;

    .line 3674
    new-instance v2, Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;

    invoke-direct {v2}, Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->evCompViewControllerModule:Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;

    .line 3675
    new-instance v2, Lcom/android/camera/util/lifecycle/Lifecycles;

    invoke-direct {v2}, Lcom/android/camera/util/lifecycle/Lifecycles;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->faceAnnouncerModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8PGM6PA1DPN6UTBECDIN4JBFCHQMOP9R:Lcom/android/camera/util/lifecycle/Lifecycles;

    .line 3676
    new-instance v2, Lcom/android/camera/ui/controller/CameraUiControllerModule;

    invoke-direct {v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 3677
    new-instance v2, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule;

    invoke-direct {v2}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->toyboxDrawerControllerModule:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule;

    .line 3678
    new-instance v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;

    invoke-direct {v2}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->filmstripModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS2DDTI7AR357C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;

    .line 5686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5690
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5691
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 7042
    new-instance v5, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;-><init>(Lcom/android/camera/ui/views/CameraUiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5687
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    .line 5693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    .line 8026
    new-instance v3, Lcom/android/camera/ui/views/CameraUiModule_ProvideActivityLayoutInflatorFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/views/CameraUiModule_ProvideActivityLayoutInflatorFactory;-><init>(Lcom/android/camera/ui/views/CameraUiModule;)V

    .line 5694
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutInflatorProvider:Ljavax/inject/Provider;

    .line 5696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    .line 9025
    new-instance v3, Lcom/android/camera/ui/views/CameraUiModule_ProvideCheckedViewFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/views/CameraUiModule_ProvideCheckedViewFactory;-><init>(Lcom/android/camera/ui/views/CameraUiModule;)V

    .line 5697
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCheckedViewProvider:Ljavax/inject/Provider;

    .line 5699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5702
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 9028
    new-instance v3, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5700
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoConfigProvider:Ljavax/inject/Provider;

    .line 5704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    .line 10025
    new-instance v3, Lcom/android/camera/ui/views/CameraUiModule_ProvideMainActivityUiFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/views/CameraUiModule_ProvideMainActivityUiFactory;-><init>(Lcom/android/camera/ui/views/CameraUiModule;)V

    .line 5705
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideMainActivityUiProvider:Ljavax/inject/Provider;

    .line 5707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5709
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideMainActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5711
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5712
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5713
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5714
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5715
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5716
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    .line 10081
    new-instance v2, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl_Factory;

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5708
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->activityLayoutManagerImplProvider:Ljavax/inject/Provider;

    .line 5718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5721
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->activityLayoutManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5723
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 11043
    new-instance v5, Lcom/android/camera/util/layout/ActivityLayoutModule_ProvideActivityLayoutManagerFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/util/layout/ActivityLayoutModule_ProvideActivityLayoutManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5719
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutManagerProvider:Ljavax/inject/Provider;

    .line 5725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutManagerProvider:Ljavax/inject/Provider;

    .line 12029
    new-instance v3, Lcom/android/camera/util/layout/ActivityLayoutModule_ProvideLayoutConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/util/layout/ActivityLayoutModule_ProvideLayoutConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5726
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    .line 5730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    .line 13023
    new-instance v3, Lcom/android/camera/ui/views/CameraUiModule_ProvideCameraUiFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/views/CameraUiModule_ProvideCameraUiFactory;-><init>(Lcom/android/camera/ui/views/CameraUiModule;)V

    .line 5730
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    .line 5732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5735
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 13026
    new-instance v3, Lcom/android/camera/ui/UiModule_ProvideWindowBrightnessFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/UiModule_ProvideWindowBrightnessFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5733
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideWindowBrightnessProvider:Ljavax/inject/Provider;

    .line 5737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->selfieFlashModule:Lcom/android/camera/selfieflash/SelfieFlashModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5741
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5742
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5744
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5745
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideWindowBrightnessProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5747
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    .line 13084
    new-instance v2, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;-><init>(Lcom/android/camera/selfieflash/SelfieFlashModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5738
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideSelfieFlashControllerImplProvider:Ljavax/inject/Provider;

    .line 5749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->selfieFlashModule:Lcom/android/camera/selfieflash/SelfieFlashModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideSelfieFlashControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5753
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 14041
    new-instance v5, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;-><init>(Lcom/android/camera/selfieflash/SelfieFlashModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5750
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideSelfieFlashControllerProvider:Ljavax/inject/Provider;

    .line 5755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5758
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5759
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5760
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5761
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 14059
    new-instance v2, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5756
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureIndicatorControllerImplProvider:Ljavax/inject/Provider;

    .line 5763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5766
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 15032
    new-instance v4, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5764
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureIndicatorControllerSecureImplProvider:Ljavax/inject/Provider;

    .line 5768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureIndicatorModule:Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5772
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureIndicatorControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureIndicatorControllerSecureImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5775
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5776
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 15065
    new-instance v2, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;-><init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5769
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 5778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->evCompViewControllerModule:Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;

    .line 16026
    new-instance v3, Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule_ProvideEvCompViewControllerFactory;

    invoke-direct {v3, v2}, Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule_ProvideEvCompViewControllerFactory;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;)V

    .line 5779
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    .line 5783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5786
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    .line 16037
    new-instance v4, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraDeviceStatechartFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraDeviceStatechartFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5784
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 5789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5792
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5793
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5794
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5795
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 16054
    new-instance v6, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5790
    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 5797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5799
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5800
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5801
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 5802
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideMainActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5805
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    .line 16074
    new-instance v2, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5798
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->viewfinderImplProvider:Ljavax/inject/Provider;

    .line 5807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->viewfinderImplProvider:Ljavax/inject/Provider;

    .line 17025
    new-instance v3, Lcom/android/camera/ui/viewfinder/ViewfinderUiModule_ProvideViewfinderFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/viewfinder/ViewfinderUiModule_ProvideViewfinderFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5808
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideViewfinderProvider:Ljavax/inject/Provider;

    .line 5811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->faceAnnouncerModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8PGM6PA1DPN6UTBECDIN4JBFCHQMOP9R:Lcom/android/camera/util/lifecycle/Lifecycles;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5815
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    .line 5817
    invoke-static {}, Lcom/google/android/apps/camera/util/time/UtcClock_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    .line 17051
    new-instance v6, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;-><init>(Lcom/android/camera/util/lifecycle/Lifecycles;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5812
    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFaceAnnouncerProvider:Ljavax/inject/Provider;

    .line 5819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 18026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCountdownStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCountdownStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 5820
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCountdownStatechartProvider:Ljavax/inject/Provider;

    .line 5824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5827
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5828
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5829
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 18045
    new-instance v5, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5825
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideAdviceUiControllerProvider:Ljavax/inject/Provider;

    .line 5833
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5834
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5835
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5836
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5837
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5838
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5839
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5840
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5841
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5842
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5843
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5844
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5845
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5846
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5847
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5848
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5849
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5850
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5852
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5853
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5854
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5856
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5857
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideSelfieFlashControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5859
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5860
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5861
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5862
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5863
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5864
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v34

    .line 5865
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5867
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideViewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5872
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5873
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5874
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5875
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFaceAnnouncerProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCountdownStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5879
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideAdviceUiControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5881
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5882
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5883
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5884
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v54

    .line 18431
    new-instance v2, Lcom/android/camera/module/capture/CaptureModule_Factory;

    invoke-direct/range {v2 .. v54}, Lcom/android/camera/module/capture/CaptureModule_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5832
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureModuleProvider:Ljavax/inject/Provider;

    .line 5886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureModuleProvider:Ljavax/inject/Provider;

    .line 19029
    new-instance v3, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5887
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoModeProvider:Ljavax/inject/Provider;

    .line 5890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoModeProvider:Ljavax/inject/Provider;

    .line 19037
    new-instance v4, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5891
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoAgentProvider:Ljavax/inject/Provider;

    .line 5895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5898
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20028
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5896
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoConfigProvider:Ljavax/inject/Provider;

    .line 5900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5903
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5904
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 20035
    new-instance v4, Lcom/android/camera/data/FilmstripDataModule_ProvideGlideFilmstripManagerFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/data/FilmstripDataModule_ProvideGlideFilmstripManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5901
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGlideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 5906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5909
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5910
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGlideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 5912
    invoke-static {}, Lcom/android/camera/data/PhotoDataFactory_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5913
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    .line 20060
    new-instance v2, Lcom/android/camera/data/FilmstripDataModule_ProvidePhotoItemFactoryFactory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/FilmstripDataModule_ProvidePhotoItemFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5907
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoItemFactoryProvider:Ljavax/inject/Provider;

    .line 5915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5918
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5919
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGlideFilmstripManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5921
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 5922
    invoke-static {}, Lcom/android/camera/data/VideoDataFactory_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v7

    .line 21060
    new-instance v2, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5916
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoItemFactoryProvider:Ljavax/inject/Provider;

    .line 5925
    invoke-static {}, Lcom/android/camera/data/VideoRotationMetadataLoader_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 22024
    new-instance v3, Lcom/android/camera/data/MetadataLoader_Factory;

    invoke-direct {v3, v2}, Lcom/android/camera/data/MetadataLoader_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 5925
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->metadataLoaderProvider:Ljavax/inject/Provider;

    .line 5927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5929
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5930
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5931
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5932
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGlideFilmstripManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5936
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->metadataLoaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5938
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    .line 22095
    new-instance v2, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;

    invoke-direct/range {v2 .. v12}, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5928
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    .line 5940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5942
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutInflatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5944
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5946
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->metadataLoaderProvider:Ljavax/inject/Provider;

    .line 23068
    new-instance v2, Lcom/android/camera/data/FilmstripDataModule_ProvideFixedLastProxyAdapterFactory;

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/data/FilmstripDataModule_ProvideFixedLastProxyAdapterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5941
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFixedLastProxyAdapterProvider:Ljavax/inject/Provider;

    .line 5949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5952
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFixedLastProxyAdapterProvider:Ljavax/inject/Provider;

    .line 24043
    new-instance v5, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5950
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLocalFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    .line 5956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5959
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 25028
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoBottomBarUISpecProviderFactoryFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoBottomBarUISpecProviderFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    .line 5957
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;

    .line 5963
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFlashOverrideStatechartFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 5962
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 5967
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideVideoCamcorderDeviceStatechartFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 5966
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 5971
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideVideoTorchStatechartFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 5970
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 5973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5976
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCountdownStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5980
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 25066
    new-instance v2, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvidePhotoVideoStatechartFactory;

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvidePhotoVideoStatechartFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5974
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 5983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutInflatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5988
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5989
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 25069
    new-instance v2, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5984
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoModuleUIProvider:Ljavax/inject/Provider;

    .line 5992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5995
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5997
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 26045
    new-instance v5, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoFlashModeFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoFlashModeFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5993
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoFlashModeProvider:Ljavax/inject/Provider;

    .line 6002
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6003
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6005
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6006
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6007
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6009
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6010
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6011
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6012
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6013
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6014
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6015
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6016
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6017
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6018
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLocalFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6020
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6022
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6024
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6025
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6026
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideViewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6030
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoModuleUIProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    .line 6032
    invoke-static {}, Lcom/android/camera/data/VideoRotationMetadataLoader_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoFlashModeProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6036
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6037
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6038
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6039
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6040
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6041
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6043
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6044
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v45

    .line 26363
    new-instance v2, Lcom/android/camera/module/video2/Video2StandardModule_Factory;

    invoke-direct/range {v2 .. v45}, Lcom/android/camera/module/video2/Video2StandardModule_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6000
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->video2StandardModuleProvider:Ljavax/inject/Provider;

    .line 6046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->video2StandardModuleProvider:Ljavax/inject/Provider;

    .line 27029
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6047
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoModeProvider:Ljavax/inject/Provider;

    .line 6050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoModeProvider:Ljavax/inject/Provider;

    .line 27037
    new-instance v4, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6051
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoAgentProvider:Ljavax/inject/Provider;

    .line 6055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6058
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 28028
    new-instance v3, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6056
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentConfigProvider:Ljavax/inject/Provider;

    .line 6060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 29026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6061
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideImageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 6067
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6068
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6069
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6070
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6071
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6072
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6073
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6074
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6077
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6078
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6079
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$10300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6080
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6081
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6082
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6083
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6084
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6085
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$10500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6086
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6087
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6088
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6089
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6090
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideImageIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6094
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6095
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6097
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6098
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6099
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6100
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6101
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v0

    .line 29309
    new-instance v2, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;

    invoke-direct/range {v2 .. v38}, Lcom/android/camera/module/imageintent/InjectedImageIntentModule_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6066
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedImageIntentModuleProvider:Ljavax/inject/Provider;

    .line 6104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedImageIntentModuleProvider:Ljavax/inject/Provider;

    .line 30031
    new-instance v3, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6105
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentModeProvider:Ljavax/inject/Provider;

    .line 6109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentModeProvider:Ljavax/inject/Provider;

    .line 30037
    new-instance v4, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6110
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentAgentProvider:Ljavax/inject/Provider;

    .line 6114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6117
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 31028
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6115
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentConfigProvider:Ljavax/inject/Provider;

    .line 6119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 32026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideVideoIntentStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideVideoIntentStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6120
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentStatechartProvider:Ljavax/inject/Provider;

    .line 6126
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6127
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6128
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6129
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6130
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6131
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6134
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6135
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6136
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6137
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6138
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6139
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6140
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6141
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6142
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6143
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6144
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoFlashModeProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6147
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6150
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6151
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6152
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6153
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v30

    .line 32244
    new-instance v2, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;

    invoke-direct/range {v2 .. v30}, Lcom/android/camera/module/video2/InjectedVideo2Intent_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6125
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedVideo2IntentProvider:Ljavax/inject/Provider;

    .line 6155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedVideo2IntentProvider:Ljavax/inject/Provider;

    .line 33029
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6156
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentProvider:Ljavax/inject/Provider;

    .line 6159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentProvider:Ljavax/inject/Provider;

    .line 33037
    new-instance v4, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6160
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentAgentProvider:Ljavax/inject/Provider;

    .line 6164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6167
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 34028
    new-instance v3, Lcom/android/camera/module/photosphere/PanoramaModule_ProvidePanoramaConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/photosphere/PanoramaModule_ProvidePanoramaConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6165
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaConfigProvider:Ljavax/inject/Provider;

    .line 6169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 35026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvidePanoramaStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvidePanoramaStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6170
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaStatechartProvider:Ljavax/inject/Provider;

    .line 6174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 36026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvidePhotoSphereStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvidePhotoSphereStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6175
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 6181
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6182
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6183
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6184
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6185
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6187
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6188
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6189
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6190
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6191
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6192
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6193
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6197
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v19

    .line 36157
    new-instance v2, Lcom/android/camera/module/photosphere/InjectedPanoramaMode_Factory;

    invoke-direct/range {v2 .. v19}, Lcom/android/camera/module/photosphere/InjectedPanoramaMode_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6180
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedPanoramaModeProvider:Ljavax/inject/Provider;

    .line 6199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedPanoramaModeProvider:Ljavax/inject/Provider;

    .line 37029
    new-instance v3, Lcom/android/camera/module/photosphere/PanoramaModule_ProvidePanoramaModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/photosphere/PanoramaModule_ProvidePanoramaModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6200
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaModeProvider:Ljavax/inject/Provider;

    .line 6203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaModeProvider:Ljavax/inject/Provider;

    .line 37037
    new-instance v4, Lcom/android/camera/module/photosphere/PanoramaModule_ProvidePanoramaAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/photosphere/PanoramaModule_ProvidePanoramaAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6204
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaAgentProvider:Ljavax/inject/Provider;

    .line 6208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6211
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 38028
    new-instance v3, Lcom/android/camera/module/photosphere/PhotoSphereModule_ProvidePhotoSphereConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/photosphere/PhotoSphereModule_ProvidePhotoSphereConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6209
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereConfigProvider:Ljavax/inject/Provider;

    .line 6215
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6216
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6217
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6218
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6219
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6221
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6222
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6223
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6224
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6228
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6229
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    .line 38141
    new-instance v2, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6214
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedPhotoSphereModeProvider:Ljavax/inject/Provider;

    .line 6231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->injectedPhotoSphereModeProvider:Ljavax/inject/Provider;

    .line 39030
    new-instance v3, Lcom/android/camera/module/photosphere/PhotoSphereModule_ProvidePhotoSphereModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/photosphere/PhotoSphereModule_ProvidePhotoSphereModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6232
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereModeProvider:Ljavax/inject/Provider;

    .line 6236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereModeProvider:Ljavax/inject/Provider;

    .line 39037
    new-instance v4, Lcom/android/camera/module/photosphere/PhotoSphereModule_ProvidePhotoSphereAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/photosphere/PhotoSphereModule_ProvidePhotoSphereAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6237
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereAgentProvider:Ljavax/inject/Provider;

    .line 6241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6244
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 40028
    new-instance v3, Lcom/android/camera/module/lensblur/RefocusModeModule_ProvideRefocusConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/lensblur/RefocusModeModule_ProvideRefocusConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6242
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideRefocusConfigProvider:Ljavax/inject/Provider;

    .line 6246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 41026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideLensBlurStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideLensBlurStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6247
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLensBlurStatechartProvider:Ljavax/inject/Provider;

    .line 6253
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6254
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6255
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6256
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6257
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6259
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6260
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6261
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6262
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6263
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6264
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6265
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6266
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6267
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLensBlurStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6270
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6271
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    .line 41173
    new-instance v2, Lcom/google/android/apps/refocus/RefocusModule_Factory;

    invoke-direct/range {v2 .. v21}, Lcom/google/android/apps/refocus/RefocusModule_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6252
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->refocusModuleProvider:Ljavax/inject/Provider;

    .line 6273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->refocusModuleProvider:Ljavax/inject/Provider;

    .line 42030
    new-instance v3, Lcom/android/camera/module/lensblur/RefocusModeModule_ProvideRefocusModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/lensblur/RefocusModeModule_ProvideRefocusModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6274
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideRefocusModeProvider:Ljavax/inject/Provider;

    .line 6277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideRefocusConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideRefocusModeProvider:Ljavax/inject/Provider;

    .line 42037
    new-instance v4, Lcom/android/camera/module/lensblur/RefocusModeModule_ProvideRefocusAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/lensblur/RefocusModeModule_ProvideRefocusAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6278
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideRefocusAgentProvider:Ljavax/inject/Provider;

    .line 6282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6285
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 43028
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrConfigFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrConfigFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6283
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrConfigProvider:Ljavax/inject/Provider;

    .line 6289
    invoke-static {}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrBottomBarUISpecProviderFactoryFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 6288
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;

    .line 6291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 44026
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideHFRVideoStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideHFRVideoStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6292
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHFRVideoStatechartProvider:Ljavax/inject/Provider;

    .line 6296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutInflatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6301
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6302
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHFRVideoStatechartProvider:Ljavax/inject/Provider;

    .line 44070
    new-instance v2, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUiHFRFactory;

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUiHFRFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6297
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoModuleUiHFRProvider:Ljavax/inject/Provider;

    .line 6305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6308
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6310
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 45044
    new-instance v5, Lcom/android/camera/module/video2/VideoModeModule_ProvideHfrFlashModeFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/module/video2/VideoModeModule_ProvideHfrFlashModeFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6306
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrFlashModeProvider:Ljavax/inject/Provider;

    .line 6314
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6315
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6317
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6318
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6319
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6321
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6322
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6323
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6324
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6325
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$7300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6326
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6327
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6328
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6329
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6330
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLocalFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6332
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6334
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6335
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6337
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6338
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6339
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrBottomBarUISpecProviderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideViewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6343
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoModuleUiHFRProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v0

    .line 6345
    invoke-static {}, Lcom/android/camera/data/VideoRotationMetadataLoader_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrFlashModeProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6349
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6350
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6351
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6352
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6353
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6355
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v44

    .line 45355
    new-instance v2, Lcom/android/camera/module/video2/Video2HfrModule_Factory;

    invoke-direct/range {v2 .. v44}, Lcom/android/camera/module/video2/Video2HfrModule_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6313
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->video2HfrModuleProvider:Ljavax/inject/Provider;

    .line 6357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->video2HfrModuleProvider:Ljavax/inject/Provider;

    .line 46029
    new-instance v3, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrModeFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrModeFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6358
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrModeProvider:Ljavax/inject/Provider;

    .line 6361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrModeProvider:Ljavax/inject/Provider;

    .line 46037
    new-instance v4, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrAgentFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoHfrAgentFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6362
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrAgentProvider:Ljavax/inject/Provider;

    .line 6366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6369
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoIntentAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideRefocusAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoHfrAgentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6378
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6379
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6380
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v14

    .line 46109
    new-instance v2, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;

    invoke-direct/range {v2 .. v14}, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6367
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideModuleManagerProvider:Ljavax/inject/Provider;

    .line 6382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiModule:Lcom/android/camera/ui/views/CameraUiModule;

    .line 47026
    new-instance v3, Lcom/android/camera/ui/views/CameraUiModule_ProvideCameraActivityActionBarFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/views/CameraUiModule_ProvideCameraActivityActionBarFactory;-><init>(Lcom/android/camera/ui/views/CameraUiModule;)V

    .line 6383
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraActivityActionBarProvider:Ljavax/inject/Provider;

    .line 6385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6388
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideModuleManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6390
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 47044
    new-instance v5, Lcom/android/camera/settings/ActivitySettingsModule_ProvideAppUpgraderFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/settings/ActivitySettingsModule_ProvideAppUpgraderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6386
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideAppUpgraderProvider:Ljavax/inject/Provider;

    .line 6392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6394
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 48024
    new-instance v3, Lcom/android/camera/util/AccessibilityUtil_Factory;

    invoke-direct {v3, v2}, Lcom/android/camera/util/AccessibilityUtil_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 6393
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->accessibilityUtilProvider:Ljavax/inject/Provider;

    .line 6398
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraFacingStatechartFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 6397
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraFacingStatechartProvider:Ljavax/inject/Provider;

    .line 6402
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideHfrTorchStatechartFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 6401
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrTorchStatechartProvider:Ljavax/inject/Provider;

    .line 6404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoVideoStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraFacingStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHFRVideoStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrTorchStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLensBlurStatechartProvider:Ljavax/inject/Provider;

    .line 48077
    new-instance v2, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6405
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureStatechartProvider:Ljavax/inject/Provider;

    .line 6416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->toyboxDrawerControllerModule:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6423
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6424
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6425
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    .line 49076
    new-instance v2, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule_ProvideToyboxDrawerControllerFactory;

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule_ProvideToyboxDrawerControllerFactory;-><init>(Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6417
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideToyboxDrawerControllerProvider:Ljavax/inject/Provider;

    .line 6427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 50027
    new-instance v3, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripUiStatechartFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripUiStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V

    .line 6428
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFilmstripUiStatechartProvider:Ljavax/inject/Provider;

    .line 6432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFilmstripUiStatechartProvider:Ljavax/inject/Provider;

    .line 50028
    new-instance v4, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;)V

    .line 6433
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFilmstripTransitioningStatechartProvider:Ljavax/inject/Provider;

    .line 6437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFilmstripTransitioningStatechartProvider:Ljavax/inject/Provider;

    .line 50029
    new-instance v5, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6438
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiStatechartProvider:Ljavax/inject/Provider;

    .line 6444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraFacingStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    .line 50030
    new-instance v4, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6445
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraFacingStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6452
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 50031
    new-instance v4, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6450
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoSwipeHintUiImplProvider:Ljavax/inject/Provider;

    .line 6454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoSwipeHintUiImplProvider:Ljavax/inject/Provider;

    .line 50032
    new-instance v3, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiModule_ProvideVideoSwipeHintUiFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiModule_ProvideVideoSwipeHintUiFactory;-><init>(Ljavax/inject/Provider;)V

    .line 6455
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoSwipeHintUiProvider:Ljavax/inject/Provider;

    .line 6458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 6461
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoSwipeHintUiProvider:Ljavax/inject/Provider;

    .line 50033
    new-instance v4, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6459
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoSwipeStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6469
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoFlashModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6471
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 50034
    new-instance v2, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6465
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchInitializerProvider:Ljavax/inject/Provider;

    .line 6473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoVideoStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoSwipeStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    .line 50035
    new-instance v2, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6474
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->photoVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6487
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6488
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    .line 50036
    new-instance v2, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6483
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoCamcorderDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCountdownStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6496
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$11000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    .line 50037
    new-instance v6, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6492
    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->countdownStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHFRVideoStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    .line 50038
    new-instance v4, Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6500
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->hfrVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrTorchStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6509
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrFlashModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6511
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 50039
    new-instance v2, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideHfrTorchInitializerFactory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideHfrTorchInitializerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6505
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrTorchInitializerProvider:Ljavax/inject/Provider;

    .line 6513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePanoramaStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    .line 50040
    new-instance v4, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6514
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->panoramaStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 6518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoSphereStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    .line 50041
    new-instance v4, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6519
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->photoSphereStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 3680
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->initialize2()V

    .line 3681
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;Lcom/android/camera/ui/views/CameraUiModule;B)V
    .locals 0

    .prologue
    .line 3373
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;Lcom/android/camera/ui/views/CameraUiModule;)V

    return-void
.end method

.method static synthetic access$13000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST148DGMQPBIC50M6T39EPKN8UA3DTMN0RRECLN78IBDE1M28GR1DLIN4OA1CDQ6ITJ9EHSLAQA3DTMN0RRECLN78IBDE1M3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0JBFCHQMOP9R(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->filmstripModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS2DDTI7AR357C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLocalFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityControllerShimProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraActivityActionBarProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFilmstripUiStatechartProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFilmstripTransitioningStatechartProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiStatechartProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method private final initialize2()V
    .locals 75

    .prologue
    .line 4527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLensBlurStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    .line 50042
    new-instance v3, Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4528
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->lensBlurStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraFacingStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->photoVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoCamcorderDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->countdownStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->hfrVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrTorchInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->panoramaStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->photoSphereStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->lensBlurStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideToyboxDrawerControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4548
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4549
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4550
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$11100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVolumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v0

    .line 50043
    new-instance v1, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;

    invoke-direct/range {v1 .. v18}, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4533
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4558
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4559
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4560
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4561
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 50044
    new-instance v1, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4554
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoCamcorderDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 50045
    new-instance v4, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4564
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraAppStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 50046
    new-instance v5, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4571
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraAppStatechartProvider:Ljavax/inject/Provider;

    .line 4578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideImageIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4584
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 50047
    new-instance v5, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4579
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 50048
    new-instance v3, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4587
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->imageIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideImageIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 50049
    new-instance v5, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4593
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideImageIntentAppStatechartProvider:Ljavax/inject/Provider;

    .line 4600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoCamcorderDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4606
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 50050
    new-instance v1, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer_Factory;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4601
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoCamcorderDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 50051
    new-instance v4, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4609
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 4614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraUiControllerModule:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 50052
    new-instance v5, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideVideoIntentAppStatechartFactory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideVideoIntentAppStatechartFactory;-><init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4615
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentAppStatechartProvider:Ljavax/inject/Provider;

    .line 4622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraAppStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraAppStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->imageIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideImageIntentAppStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->videoIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoIntentAppStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4631
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    .line 50053
    new-instance v1, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4623
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->rootUiControllerInitializerProvider:Ljavax/inject/Provider;

    .line 4633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->rootUiControllerInitializerProvider:Ljavax/inject/Provider;

    .line 50054
    new-instance v2, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideUiControllerInitializerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideUiControllerInitializerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4634
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideUiControllerInitializerProvider:Ljavax/inject/Provider;

    .line 4638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoTorchStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideHfrTorchStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideFlashOverrideStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4645
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4646
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4647
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$6300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4648
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4649
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4650
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4651
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4652
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4653
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4654
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v15

    .line 50055
    new-instance v1, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;

    invoke-direct/range {v1 .. v15}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4639
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->optionsBarUiWirerProvider:Ljavax/inject/Provider;

    .line 4656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->optionsBarUiWirerProvider:Ljavax/inject/Provider;

    .line 50056
    new-instance v2, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideOptionsBarUiWirerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideOptionsBarUiWirerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4657
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideOptionsBarUiWirerProvider:Ljavax/inject/Provider;

    .line 4659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4662
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4663
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4664
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    .line 50057
    new-instance v1, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4660
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->viewfinderGestureManagerWirerProvider:Ljavax/inject/Provider;

    .line 4667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->viewfinderGestureManagerWirerProvider:Ljavax/inject/Provider;

    .line 50058
    new-instance v2, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideGestureManagerUiWirerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideGestureManagerUiWirerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4668
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGestureManagerUiWirerProvider:Ljavax/inject/Provider;

    .line 4671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4674
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4675
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4676
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 50059
    new-instance v5, Lcom/android/camera/ui/wirers/GridLinesUiWirer_Factory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/ui/wirers/GridLinesUiWirer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4672
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->gridLinesUiWirerProvider:Ljavax/inject/Provider;

    .line 4678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->gridLinesUiWirerProvider:Ljavax/inject/Provider;

    .line 50060
    new-instance v2, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideGridLinesUiWirerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideGridLinesUiWirerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4679
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGridLinesUiWirerProvider:Ljavax/inject/Provider;

    .line 4681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4686
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4687
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4688
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4689
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4690
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 50061
    new-instance v1, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4682
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->evCompUiWirerProvider:Ljavax/inject/Provider;

    .line 4692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->evCompUiWirerProvider:Ljavax/inject/Provider;

    .line 50062
    new-instance v2, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideEvCompUiWirerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideEvCompUiWirerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4693
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompUiWirerProvider:Ljavax/inject/Provider;

    .line 4695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4698
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4699
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$11200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4700
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 50063
    new-instance v5, Lcom/android/camera/ui/wirers/ZoomUiWirer_Factory;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/camera/ui/wirers/ZoomUiWirer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4696
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->zoomUiWirerProvider:Ljavax/inject/Provider;

    .line 4702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->zoomUiWirerProvider:Ljavax/inject/Provider;

    .line 50064
    new-instance v2, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideZoomUiWirerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideZoomUiWirerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4703
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideZoomUiWirerProvider:Ljavax/inject/Provider;

    .line 4705
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 4706
    invoke-static {v1, v2}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideOptionsBarUiWirerProvider:Ljavax/inject/Provider;

    .line 4707
    invoke-virtual {v1, v2}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGestureManagerUiWirerProvider:Ljavax/inject/Provider;

    .line 4708
    invoke-virtual {v1, v2}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGridLinesUiWirerProvider:Ljavax/inject/Provider;

    .line 4709
    invoke-virtual {v1, v2}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideEvCompUiWirerProvider:Ljavax/inject/Provider;

    .line 4710
    invoke-virtual {v1, v2}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideZoomUiWirerProvider:Ljavax/inject/Provider;

    .line 4711
    invoke-virtual {v1, v2}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v1

    .line 4712
    invoke-virtual {v1}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->setOfUiWirerProvider:Ljavax/inject/Provider;

    .line 4714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->setOfUiWirerProvider:Ljavax/inject/Provider;

    .line 50065
    new-instance v2, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideUiWirerFactory;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/wirers/UiWirersModule_ProvideUiWirerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4715
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideUiWirerProvider:Ljavax/inject/Provider;

    .line 4717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4719
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4720
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4721
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4722
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4723
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityLayoutInflatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4725
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4726
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCheckedViewProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4728
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4729
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4730
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4731
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4732
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4733
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideModuleManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4735
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4736
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4737
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4738
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4739
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4740
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4741
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4742
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4743
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4744
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$11800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4745
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4746
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4747
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4748
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4749
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4750
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4751
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4752
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideViewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraActivityActionBarProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideAppUpgraderProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4758
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4760
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4761
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4762
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4763
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4764
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$12000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4765
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->accessibilityUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4767
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4768
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4769
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideGlideFilmstripManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideVideoItemFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLocalFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4774
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4775
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$10500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4776
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4777
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->metadataLoaderProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4779
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideToyboxDrawerControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraFacingStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->providePhotoVideoStatechartProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideUiControllerInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideUiWirerProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4788
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$11200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4789
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$8100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4790
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v73

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4791
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v74

    .line 50066
    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;

    invoke-direct/range {v1 .. v74}, Lcom/android/camera/app/CameraActivityControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4718
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityControllerImplProvider:Ljavax/inject/Provider;

    .line 4793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityControllerImplProvider:Ljavax/inject/Provider;

    .line 4794
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraActivityControllerProvider:Ljavax/inject/Provider;

    .line 4799
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4800
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->inflateCameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraActivityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4803
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4804
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4805
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideViewfinderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4808
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4809
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideLayoutConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4811
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4812
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4813
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4814
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4815
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v18

    .line 50067
    new-instance v1, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;

    invoke-direct/range {v1 .. v18}, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4797
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureModeUiStartupProvider:Ljavax/inject/Provider;

    .line 4817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4819
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->captureModeUiStartupProvider:Ljavax/inject/Provider;

    .line 50068
    new-instance v3, Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4818
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideModeUiStartupProvider:Ljavax/inject/Provider;

    .line 4825
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCameraActivityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4827
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4828
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4829
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 50069
    new-instance v1, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4823
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityControllerInitializerProvider:Ljavax/inject/Provider;

    .line 4831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4834
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideModeUiStartupProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityControllerInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4837
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4838
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 4839
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$12800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 4840
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideCaptureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 50070
    new-instance v1, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4832
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityUiStartupProvider:Ljavax/inject/Provider;

    .line 4843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityControllerImplProvider:Ljavax/inject/Provider;

    .line 4844
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->provideActivityControllerShimProvider:Ljavax/inject/Provider;

    .line 4845
    return-void
.end method


# virtual methods
.method public final createFilmstripFragmentComponent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78JBFCHQMOP9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78GRFDLO6URJ5DPQ3M___(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)Lcom/android/camera/filmstrip/FilmstripFragmentComponent;
    .locals 2

    .prologue
    .line 4855
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;Lcom/android/camera/one/v2/preview/SimplePreviewModule;B)V

    return-object v0
.end method

.method public final initializer()Lcom/android/camera/activity/main/CameraActivityUiStartup;
    .locals 1

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->cameraActivityUiStartupProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/main/CameraActivityUiStartup;

    return-object v0
.end method
