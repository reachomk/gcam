.class public final Lcom/android/camera/module/video2/Video2HfrModule;
.super Lcom/android/camera/module/video2/Video2Module;
.source "Video2HfrModule.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "Video2HfrModule"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/UiObservable;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/device/CameraDeviceManagerV2;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/content/ContentResolver;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Ljava/util/concurrent/Executor;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/DetailsDialog;Landroid/app/NotificationManager;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Landroid/content/res/Resources;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Ljavax/inject/Provider;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/util/flags/Flags;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/app/LegacyCameraProvider;",
            "Lcom/android/camera/device/CameraDeviceManagerV2;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/data/PhotoItemFactory;",
            "Landroid/content/res/Resources;",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;",
            "Lcom/android/camera/data/VideoItemFactory;",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            ">;",
            "Lcom/android/camera/data/VideoRotationMetadataLoader;",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Lcom/android/camera/util/flags/Flags;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    sget-object v6, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 133
    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v26

    .line 143
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p17

    move-object/from16 v18, p16

    move-object/from16 v19, p18

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v37, p35

    move-object/from16 v38, p36

    move-object/from16 v39, p37

    move-object/from16 v40, p38

    move-object/from16 v41, p39

    move-object/from16 v42, p40

    move-object/from16 v43, p41

    .line 107
    invoke-direct/range {v0 .. v43}, Lcom/android/camera/module/video2/Video2Module;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/UiObservable;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/camcorder/CamcorderManager;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/app/LegacyCameraProvider;Lcom/android/camera/device/CameraDeviceManagerV2;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/content/ContentResolver;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Ljava/util/concurrent/Executor;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/location/LocationProvider;Lcom/google/android/apps/camera/async/MainThread;Landroid/app/NotificationManager;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Landroid/content/res/Resources;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Ljavax/inject/Provider;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/common/base/Optional;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/util/flags/Flags;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final resume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/camera/module/video2/Video2Module;->resume()V

    .line 156
    invoke-super {p0}, Lcom/android/camera/module/video2/Video2Module;->getVideo2ModuleUI()Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/video2/Video2HfrModuleUI;

    .line 1052
    iget-object v0, v0, Lcom/android/camera/module/video2/Video2HfrModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showCloseButton()V

    .line 158
    return-void
.end method
