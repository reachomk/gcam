.class public final Lcom/android/camera/ui/CameraAppUI;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;
.implements Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;
.implements Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;,
        Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;,
        Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;,
        Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static shouldHideModeCover:Z


# instance fields
.field private final accessibilityAffordances:Landroid/view/View;

.field private accessibilityController:Lcom/android/camera/util/AccessibilityController;

.field private final accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final appRootView:Lcom/android/camera/ui/MainActivityLayout;

.field private bottomBar:Lcom/android/camera/ui/BottomBar;

.field private bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

.field private burstChipHolder:Landroid/widget/FrameLayout;

.field private burstFacadeContainer:Lcom/android/camera/burst/BurstFacadeContainer;

.field private final burstLivePreviewController:Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

.field private final cameraModuleScreenShotProvider:Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;

.field private final cameraRootOverlayView:Landroid/widget/FrameLayout;

.field private final cameraRootView:Landroid/widget/FrameLayout;

.field private captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

.field private final captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private captureOverlay:Landroid/widget/FrameLayout;

.field private final captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

.field private closeButton:Landroid/widget/ImageButton;

.field private final controller:Lcom/android/camera/app/AppController;

.field private controlsLayout:Landroid/widget/FrameLayout;

.field private coverHiddenTime:J

.field private currentCameraScope:Ljava/lang/String;

.field private currentModuleScope:Ljava/lang/String;

.field private currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

.field private currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

.field private final dirtyLensDetectorSetting:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

.field private final filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

.field private final filmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

.field private focusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final isCaptureIntent:Z

.field private lastRotation:I

.field private final modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

.field private moduleUI:Landroid/widget/FrameLayout;

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

.field private photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

.field private photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

.field private final photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

.field private final previewAreaRectProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

.field private previewContentAdapterSurfaceViewAlt:Lcom/android/camera/ui/PreviewContentAdapter;

.field private previewContentAdapterTextureView:Lcom/android/camera/ui/PreviewContentAdapter;

.field private final previewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final previewPropertyListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private previousPhotoVideoMode:Lcom/android/camera/util/CameraMode;

.field private shouldDismissSnackbar:Z

.field private shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

.field private final snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

.field private snapshotButton:Lcom/android/camera/ui/SnapshotButton;

.field private stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

.field private surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

.field private toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

.field private tutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

.field private uISpecsApplier:Lcom/android/camera/ui/UISpecsApplier;

.field private uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

.field private viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    const-string v0, "CameraAppUI"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ui/CameraAppUI;->shouldHideModeCover:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/util/AccessibilityUtil;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;ZLcom/android/camera/debug/trace/Trace;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ")V"
        }
    .end annotation

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v2, Lcom/android/camera/ui/CameraAppUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CameraAppUI$1;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->previewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 447
    new-instance v2, Lcom/android/camera/ui/CameraAppUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CameraAppUI$2;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->previewPropertyListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 460
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/CameraAppUI;->shouldDismissSnackbar:Z

    .line 463
    sget-object v2, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    .line 474
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/ui/CameraAppUI;->coverHiddenTime:J

    .line 545
    new-instance v2, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->cameraModuleScreenShotProvider:Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;

    .line 807
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 811
    iput-object p2, p0, Lcom/android/camera/ui/CameraAppUI;->appRootView:Lcom/android/camera/ui/MainActivityLayout;

    .line 812
    iput-boolean p10, p0, Lcom/android/camera/ui/CameraAppUI;->isCaptureIntent:Z

    .line 813
    iput-object p4, p0, Lcom/android/camera/ui/CameraAppUI;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 814
    iput-object p5, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 815
    iput-object p7, p0, Lcom/android/camera/ui/CameraAppUI;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 816
    iput-object p8, p0, Lcom/android/camera/ui/CameraAppUI;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 817
    iput-object p9, p0, Lcom/android/camera/ui/CameraAppUI;->windowManager:Landroid/view/WindowManager;

    .line 818
    invoke-static/range {p14 .. p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/CaptureStatechart;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    .line 819
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    .line 821
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    .line 822
    iget-object v2, p3, Lcom/android/camera/ui/views/CameraActivityUi;->controlsLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->controlsLayout:Landroid/widget/FrameLayout;

    .line 823
    iget-object v2, p3, Lcom/android/camera/ui/views/CameraActivityUi;->cameraRootView:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    .line 824
    iget-object v2, p3, Lcom/android/camera/ui/views/CameraActivityUi;->cameraRootViewOverlay:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootOverlayView:Landroid/widget/FrameLayout;

    .line 825
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    .line 826
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    .line 827
    iget-object v2, p3, Lcom/android/camera/ui/views/CameraActivityUi;->accessibilityAffordances:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityAffordances:Landroid/view/View;

    .line 828
    iput-object p6, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

    .line 829
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    .line 830
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->setListener(Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;)V

    .line 831
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 832
    invoke-static/range {p18 .. p18}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Observable;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->previewAreaRectProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 834
    invoke-virtual {p3}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v4

    .line 835
    const v2, 0x7f1100c2

    invoke-virtual {v4, v2}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->closeButton:Landroid/widget/ImageButton;

    .line 836
    const v2, 0x7f1100dc

    invoke-virtual {v4, v2}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModeTransitionView;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    .line 837
    const v2, 0x7f110193

    invoke-virtual {v4, v2}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 838
    const v2, 0x7f1100b1

    invoke-virtual {v4, v2}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->captureOverlay:Landroid/widget/FrameLayout;

    .line 840
    const v2, 0x7f1100c6

    invoke-virtual {v4, v2}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 842
    new-instance v3, Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

    invoke-direct {v3}, Lcom/android/camera/burst/CameraAppBurstLivePreviewController;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->burstLivePreviewController:Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

    .line 844
    const v3, 0x7f1100c3

    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    iput-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    .line 845
    const v3, 0x7f1100be

    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    iput-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 846
    const v3, 0x7f1100b4

    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    .line 848
    new-instance v3, Lcom/android/camera/ui/snackbar/SnackbarController;

    invoke-direct {v3, v2}, Lcom/android/camera/ui/snackbar/SnackbarController;-><init>(Landroid/view/ViewStub;)V

    iput-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    .line 849
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 850
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettings()Lcom/android/camera/settings/Settings;

    move-result-object v2

    const-string v3, "pref_camera_dirty_lens_key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/Settings;->ofBoolean$5166KOBMC4NMOOBECSNL6T3ID5N6EEQQ55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Ljava/lang/String;Z)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->dirtyLensDetectorSetting:Lcom/google/android/apps/camera/async/Observable;

    .line 853
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->closeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/camera/ui/CameraAppUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/CameraAppUI$4;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    invoke-interface {p7}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    new-instance v4, Lcom/android/camera/ui/CameraAppUI$5;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/CameraAppUI$5;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    .line 864
    invoke-interface {v3, v4}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->addListener(Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    .line 863
    invoke-interface {v2, v3}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 873
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->appRootView:Lcom/android/camera/ui/MainActivityLayout;

    new-instance v3, Lcom/android/camera/ui/CameraAppUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/CameraAppUI$6;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/MainActivityLayout;->setNonDecorWindowSizeChangedListener(Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;)V

    .line 2955
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->windowManager:Landroid/view/WindowManager;

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/CameraAppUI;->lastRotation:I

    .line 2957
    new-instance v2, Lcom/android/camera/ui/CameraAppUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CameraAppUI$7;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    iput-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2982
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 909
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    return-object v0
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5MMASJ185O70LA97CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/CameraAppUI;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewAreaRectProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/CameraAppUI;Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Lcom/android/camera/ui/CameraAppUI;->getLayoutFromRect(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controlsLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PhotoVideoPaginator;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstChipHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/CameraAppUI;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/CameraAppUI;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/camera/ui/CameraAppUI;->lastRotation:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/CameraAppUI;I)I
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/android/camera/ui/CameraAppUI;->lastRotation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/util/CameraMode;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previousPhotoVideoMode:Lcom/android/camera/util/CameraMode;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/CameraAppUI;I)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setCaptureUiImportantForAccessibility(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/BottomBarSideControls;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewContentAdapter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->appRootView:Lcom/android/camera/ui/MainActivityLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/CaptureLayoutHelper;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/StickyBottomCaptureLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/BottomBar;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/viewfinder/ViewfinderCover;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    return-object v0
.end method

.method public static disableModeOptions()V
    .locals 0

    .prologue
    .line 1528
    return-void
.end method

.method private final disconnectPreviewSizeListeners(Lcom/android/camera/ui/PreviewContentAdapter;)V
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/PreviewContentAdapter;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewPropertyListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {p1, v0}, Lcom/android/camera/ui/PreviewContentAdapter;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 729
    return-void
.end method

.method public static enableModeOptions()V
    .locals 0

    .prologue
    .line 1521
    return-void
.end method

.method private static getLayoutFromRect(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    .prologue
    .line 912
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 913
    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 918
    return-object v0
.end method

.method private final getResourceString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2194
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2197
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private final hideModeCover()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 1119
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "Revealing the viewfinder by hiding the mode cover."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeTransitionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    .line 7079
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 7092
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setVisibility(I)V

    .line 1124
    iget-wide v0, p0, Lcom/android/camera/ui/CameraAppUI;->coverHiddenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/CameraAppUI;->coverHiddenTime:J

    .line 1127
    :cond_1
    return-void
.end method

.method public static hideModeOptions()V
    .locals 0

    .prologue
    .line 1797
    return-void
.end method

.method private final hidePaginationDots()V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setVisibility(I)V

    .line 1031
    return-void
.end method

.method public static isHamburgerMenuOpen()Z
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public static onShutterButtonReadyStateChanged(Z)V
    .locals 1

    .prologue
    .line 1502
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/stats/UsageStatistics;->onShutterButtonReadyStateChanged(Z)V

    .line 1503
    return-void
.end method

.method private setBottomBarButtonForModeIndex(I)V
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonForModeIndex(I)V

    .line 1867
    return-void
.end method

.method private final setCaptureUiImportantForAccessibility(I)V
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2236
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->setImportantForAccessibility(I)V

    .line 2237
    return-void
.end method

.method private final showPaginationDots()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setVisibility(I)V

    .line 1035
    return-void
.end method

.method private final updateModeSpecificUI()V
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1619
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1618
    invoke-virtual {v0, v1}, Lcom/android/camera/util/CameraMode;->getModeIndex(Landroid/content/res/Resources;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setBottomBarButtonForModeIndex(I)V

    .line 1622
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->resetSideButtons()V

    .line 1623
    return-void
.end method

.method private final updateScope()Z
    .locals 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 2068
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentModuleScope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 2069
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentCameraScope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2072
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentModuleScope:Ljava/lang/String;

    .line 2073
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentCameraScope:Ljava/lang/String;

    .line 2074
    return v0

    .line 2069
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addCancelShutterButtonListener(Lcom/android/camera/ui/ShutterButtonHolder$CancelButtonListener;)V
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShutterButtonHolder;->addCancelButtonListener(Lcom/android/camera/ui/ShutterButtonHolder$CancelButtonListener;)V

    .line 1965
    return-void
.end method

.method public final addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1286
    return-void
.end method

.method public final addShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShutterButtonHolder;->addOnShutterButtonListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 1940
    return-void
.end method

.method public final applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V
    .locals 7

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->updateScope()Z

    move-result v4

    .line 2092
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/LegacyCameraProvider;->getNumberOfCameras()I

    move-result v5

    .line 2093
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uISpecsApplier:Lcom/android/camera/ui/UISpecsApplier;

    iget-boolean v6, p0, Lcom/android/camera/ui/CameraAppUI;->isCaptureIntent:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/UISpecsApplier;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;ZZIZ)V

    .line 2100
    return-void
.end method

.method public final applyVideoModuleSpecs(Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->updateScope()Z

    .line 2112
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    iget-boolean v3, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isPauseResumeSupported:Z

    iget-boolean v4, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isVideoSnapshotSupported:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/ShutterButtonHolder;->setRecordingControlsSupport(ZZ)V

    .line 2115
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v3

    .line 2119
    invoke-virtual {v3}, Lcom/android/camera/ui/ButtonManager;->getAccessibilityFocusedButton()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 2122
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    if-eqz v0, :cond_4

    .line 2124
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setCameraButtonVisibility(Z)V

    .line 2125
    invoke-virtual {v3, v5}, Lcom/android/camera/ui/ButtonManager;->hideButton(I)V

    .line 2136
    :goto_0
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showToyboxHfrMode:Z

    if-eqz v0, :cond_7

    .line 2138
    iget-object v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->defaultHfrVideoMode:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    sget-object v5, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    if-ne v0, v5, :cond_6

    move v0, v1

    .line 2143
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    iget-object v6, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->hfrModeCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    iget-boolean v7, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isHfr240FpsSupported:Z

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/camera/ui/BottomBarSideControls;->initializeHfrButton(Lcom/android/camera/ui/ButtonManager$ButtonCallback;ZI)V

    .line 2148
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    iget-boolean v5, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isHfr240FpsSupported:Z

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/BottomBarSideControls;->setHfrButtonVisibility(Z)V

    .line 2155
    :goto_2
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2158
    invoke-virtual {v0, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2162
    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showCancel:Z

    if-eqz v0, :cond_8

    .line 2163
    const/4 v0, 0x7

    iget-object v1, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->cancelCallback:Landroid/view/View$OnClickListener;

    const v4, 0x7f0200cb

    const v5, 0x7f0a01aa

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/camera/ui/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;II)V

    .line 2168
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomBar;->setCancelButtonVisibility(Z)V

    .line 2172
    :goto_3
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showDone:Z

    if-eqz v0, :cond_1

    .line 2173
    iget-object v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8, v0}, Lcom/android/camera/ui/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;)V

    .line 2175
    :cond_1
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showRetake:Z

    if-eqz v0, :cond_2

    .line 2176
    const/16 v0, 0x9

    iget-object v1, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    const v4, 0x7f0200b3

    const v5, 0x7f0a01ac

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/camera/ui/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;II)V

    .line 2182
    :cond_2
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showReview:Z

    if-eqz v0, :cond_3

    .line 2183
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomBar;->setReviewButtonVisibility(Z)V

    .line 2184
    const/16 v0, 0xa

    iget-object v1, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->reviewCallback:Landroid/view/View$OnClickListener;

    const v2, 0x7f020114

    const v4, 0x7f0a01ad

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/camera/ui/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;II)V

    .line 2190
    :cond_3
    return-void

    .line 2127
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomBarSideControls;->setCameraButtonVisibility(Z)V

    .line 2128
    iget-boolean v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    if-eqz v0, :cond_5

    .line 2129
    iget-object v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-virtual {v3, v5, v0}, Lcom/android/camera/ui/ButtonManager;->initializeButton(ILcom/android/camera/ui/ButtonManager$ButtonCallback;)V

    goto :goto_0

    .line 2131
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/camera/ui/ButtonManager;->disableButton(I)V

    goto/16 :goto_0

    .line 2140
    :cond_6
    iget-object v0, p1, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->defaultHfrVideoMode:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    sget-object v5, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    if-ne v0, v5, :cond_9

    move v0, v2

    .line 2141
    goto :goto_1

    .line 2150
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v1}, Lcom/android/camera/ui/BottomBarSideControls;->initializeHfrButton(Lcom/android/camera/ui/ButtonManager$ButtonCallback;ZI)V

    .line 2151
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setHfrButtonVisibility(Z)V

    goto :goto_2

    .line 2170
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setCancelButtonVisibility(Z)V

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public final changeBottomBarToVideoStart(Z)V
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomBar;->changeToVideoStart(Z)V

    .line 1875
    return-void
.end method

.method public final changeBottomBarToVideoStop(Z)V
    .locals 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->changeToVideoStop(Z)V

    .line 1871
    return-void
.end method

.method public final clearModuleUI()V
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->moduleUI:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->moduleUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->removeShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 1429
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->tutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1430
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->tutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 1433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1434
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 1436
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "mFocusRing.stopFocusAnimations()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 1438
    return-void
.end method

.method public final clearPreviewTransform()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->clearTransform()V

    .line 733
    return-void
.end method

.method public final clearScrim()V
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->clearScrim()V

    .line 1703
    return-void
.end method

.method public final closeSpecialMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 776
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraAppUI;->isCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->finishActivityWithIntentCanceled()V

    .line 785
    :goto_0
    return-void

    .line 2596
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->previousPhotoVideoMode:Lcom/android/camera/util/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ModeTransitionView;->showModeCover(Lcom/android/camera/util/CameraMode;)V

    .line 2597
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModeTransitionView;->invalidate()V

    .line 2598
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModeTransitionView;->requestLayout()V

    .line 2601
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 2602
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->previousPhotoVideoMode:Lcom/android/camera/util/CameraMode;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 2603
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2602
    invoke-virtual {v1, v2}, Lcom/android/camera/util/CameraMode;->getModeIndex(Landroid/content/res/Resources;)I

    move-result v1

    .line 2604
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->previousPhotoVideoMode:Lcom/android/camera/util/CameraMode;

    sget-object v3, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->showPhotoVideoPaginator(Z)V

    .line 2605
    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraAppUI;->setBottomBarButtonForModeIndex(I)V

    .line 2607
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/camera/ui/CameraAppUI$9;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraAppUI$9;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 783
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->exitToyBoxMode()V

    goto :goto_0

    .line 2604
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final disableBottomBarSideControls()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    .line 11217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setEnabled(Z)V

    .line 1665
    return-void
.end method

.method public final disableFaceDetectionUi()V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    .line 16052
    iget-object v1, v0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 16053
    iget-object v0, v0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 2354
    return-void
.end method

.method public final enableBottomBarSideControls()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    .line 11210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setEnabled(Z)V

    .line 1657
    return-void
.end method

.method public final enableFaceDetectionUi()V
    .locals 2

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    .line 16044
    iget-object v1, v0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 16045
    iget-object v0, v0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 2350
    return-void
.end method

.method public final fadeInScrim()V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->fadeScrim(Z)V

    .line 1689
    return-void
.end method

.method public final fadeOutPhotoVideoCover(Z)V
    .locals 2

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->appRootView:Lcom/android/camera/ui/MainActivityLayout;

    new-instance v1, Lcom/android/camera/ui/CameraAppUI$13;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CameraAppUI$13;-><init>(Lcom/android/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    .line 2281
    return-void
.end method

.method public final fadeOutScrim()V
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->fadeScrim(Z)V

    .line 1696
    return-void
.end method

.method public final forceStopBurst()V
    .locals 2

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstFacadeContainer:Lcom/android/camera/burst/BurstFacadeContainer;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstFacadeContainer:Lcom/android/camera/burst/BurstFacadeContainer;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->FORCE_STOP:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacadeContainer;->stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2386
    :cond_0
    return-void
.end method

.method public final freezeScreenUntilUiIsReady(Lcom/google/common/base/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 925
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "Covering the viewfinder with a screenshot until the camera is ready."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraModuleScreenShotProvider:Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;

    const/4 v1, 0x2

    .line 927
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->getScreenShot(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 929
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->showModeCover(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final getAppRootView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->appRootView:Lcom/android/camera/ui/MainActivityLayout;

    return-object v0
.end method

.method public final getBurstLivePreviewController()Lcom/android/camera/burst/BurstLivePreviewController;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstLivePreviewController:Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

    return-object v0
.end method

.method public final getCurrentPreviewContentAdapter()Lcom/android/camera/ui/PreviewContentAdapter;
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    return-object v0
.end method

.method public final getFaceViewAdaptor()Lcom/android/camera/ui/FaceViewAdapter;
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    return-object v0
.end method

.method public final getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    return-object v0
.end method

.method public final getShutterButtonClickEnabledObservable()Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->getClickEnabledObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getSnapshotButton()Lcom/android/camera/ui/SnapshotButton;
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->snapshotButton:Lcom/android/camera/ui/SnapshotButton;

    return-object v0
.end method

.method public final getSurfaceHeight()I
    .locals 1

    .prologue
    .line 1733
    iget v0, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceHeight:I

    return v0
.end method

.method public final getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final getSurfaceWidth()I
    .locals 1

    .prologue
    .line 1726
    iget v0, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceWidth:I

    return v0
.end method

.method public final hideAccessibilityAffordances()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/camera/util/AccessibilityController;->hideAccessibilityAffordances()V

    .line 1074
    return-void
.end method

.method public final hideBottomBarSideControls()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->hide()V

    .line 1673
    return-void
.end method

.method public final hideFilmstrip()V
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->hideFilmstrip()V

    .line 2247
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    if-eqz v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/camera/util/AccessibilityController;->hideFilmstripItemUI()V

    .line 2250
    :cond_0
    return-void
.end method

.method public final hidePhotoVideoPaginator(Z)V
    .locals 2

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setProgress(FZ)V

    .line 2367
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->hidePaginationDots()V

    .line 2368
    return-void
.end method

.method public final initBurstA11yButtonController(Lcom/android/camera/burst/BurstFacadeContainer;)V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/AccessibilityController;->initBurstA11yButtonController(Lcom/android/camera/burst/BurstFacadeContainer;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public final initBurstFacadeContainer(Lcom/android/camera/burst/BurstFacadeContainer;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI;->burstFacadeContainer:Lcom/android/camera/burst/BurstFacadeContainer;

    .line 1094
    return-void
.end method

.method public final initialDeepResume()V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->showModeCover(Lcom/android/camera/util/CameraMode;)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->showAccessibilityAffordances()V

    .line 1027
    return-void
.end method

.method public final initialize(Lcom/android/camera/ui/views/CameraUi;)V
    .locals 6

    .prologue
    .line 1297
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    invoke-virtual {p1}, Lcom/android/camera/ui/views/CameraUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 1302
    const v0, 0x7f11016c

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomBar;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    .line 1303
    const v0, 0x7f110095

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomBarSideControls;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    .line 1304
    const v0, 0x7f110092

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    .line 1305
    const v0, 0x7f110145

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SnapshotButton;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->snapshotButton:Lcom/android/camera/ui/SnapshotButton;

    .line 1306
    const v0, 0x7f11016b

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .line 1307
    const v0, 0x7f1100d9

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PhotoVideoPaginator;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    .line 1308
    const v0, 0x7f1100c4

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    .line 1309
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setPhotoVideoPaginator(Lcom/android/camera/ui/PhotoVideoPaginator;)V

    .line 1312
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v2

    .line 1313
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootOverlayView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v3

    .line 1314
    const v0, 0x7f1100b9

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstChipHolder:Landroid/widget/FrameLayout;

    .line 1315
    const v0, 0x7f1100b5

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->moduleUI:Landroid/widget/FrameLayout;

    .line 1316
    const v0, 0x7f1100bd

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 1317
    const v0, 0x7f1100b2

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 1318
    const v0, 0x7f1100db

    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->tutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    .line 1319
    const v0, 0x7f1100b6

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CaptureAnimationOverlay;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    .line 1321
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ButtonManager;->load(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V

    .line 1322
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceViewAdapter;->createAndWireUI(Landroid/view/View;Lcom/android/camera/ui/CaptureLayoutHelper;)Lcom/android/camera/ui/FaceViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    .line 1323
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->appRootView:Lcom/android/camera/ui/MainActivityLayout;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 1324
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->createAndWireIntoUI(Landroid/view/View;Landroid/view/TextureView$SurfaceTextureListener;Landroid/view/WindowManager;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/PreviewTransformCalculator;)Lcom/android/camera/ui/PreviewContentAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterTextureView:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 1326
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterTextureView:Lcom/android/camera/ui/PreviewContentAdapter;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 1329
    new-instance v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;

    const-string v1, "Viewfinder"

    new-instance v2, Lcom/android/camera/ui/PreviewContentViewfinderAdapter;

    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    invoke-direct {v2, v3}, Lcom/android/camera/ui/PreviewContentViewfinderAdapter;-><init>(Lcom/android/camera/ui/viewfinder/Viewfinder;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;-><init>(Ljava/lang/String;Lcom/android/camera/ui/PreviewContentAdapter;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 1332
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceViewAlt:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 1333
    new-instance v0, Lcom/android/camera/ui/UISpecsApplier;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1336
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1337
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1338
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/UISpecsApplier;-><init>(Lcom/android/camera/ui/BottomBarSideControls;Lcom/android/camera/settings/SettingsManager;Landroid/content/res/Resources;Lcom/android/camera/ui/ButtonManager;Lcom/android/camera/ui/BottomBar;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uISpecsApplier:Lcom/android/camera/ui/UISpecsApplier;

    .line 1340
    return-void
.end method

.method public final onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1160
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripFragment;->isFilmstripVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->onBackPressed()Z

    move-result v0

    .line 1173
    :cond_0
    :goto_0
    return v0

    .line 1162
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->isDrawerOpen()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->isMenuClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1164
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->closeDrawer()V

    .line 1165
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->closeOptions()V

    goto :goto_0

    .line 1167
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1170
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->closeSpecialMode()V

    goto :goto_0

    .line 1173
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onChangeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1215
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 1216
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 1230
    if-eqz v1, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1232
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v3, "pref_flash_supported_back_camera"

    const/4 v4, 0x0

    .line 1233
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    invoke-interface {v1}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1236
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v3, "pref_flash_supported_back_camera"

    .line 1237
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1241
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v3, "pref_hdr_support_mode_back_camera"

    .line 1242
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    invoke-interface {v1}, Lcom/android/camera/hardware/HardwareSpec;->isHdrPlusSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1245
    const v0, 0x7f0a02ab

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1252
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_hdr_support_mode_back_camera"

    .line 1253
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    .line 1260
    invoke-virtual {p0, v1, v0, v5}, Lcom/android/camera/ui/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V

    .line 1265
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->invalidate()V

    .line 1266
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->requestLayout()V

    .line 1270
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->dirtyLensDetectorSetting:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    const v0, 0x7f0a00a6

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->getResourceString(I)Ljava/lang/String;

    .line 1274
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraAppUI;->shouldDismissSnackbar:Z

    if-eqz v0, :cond_3

    .line 1275
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    .line 1277
    :cond_3
    iput-boolean v5, p0, Lcom/android/camera/ui/CameraAppUI;->shouldDismissSnackbar:Z

    .line 1278
    return-void

    .line 1246
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/hardware/HardwareSpec;->isHdrSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1247
    const v0, 0x7f0a02aa

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1249
    :cond_5
    const v0, 0x7f0a02a9

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 945
    return-void
.end method

.method public final onNewPreviewFrame()V
    .locals 2

    .prologue
    .line 1465
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "onNewPreviewFrame"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->hideModeCover()V

    .line 1467
    return-void
.end method

.method public final onPhotoVideoScrollCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2305
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 2306
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButtonHolder;->setClickable(Z)V

    .line 2307
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setClickable(Z)V

    .line 2308
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setClickable(Z)V

    .line 2309
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 2310
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setAlpha(F)V

    .line 2311
    return-void
.end method

.method public final onPhotoVideoScrollProgress(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2316
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    sub-float v1, v4, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setAlpha(F)V

    .line 2319
    :cond_0
    return-void
.end method

.method public final onPhotoVideoScrollStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2297
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButtonHolder;->setClickable(Z)V

    .line 2298
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setClickable(Z)V

    .line 2299
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setClickable(Z)V

    .line 2300
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 2301
    return-void
.end method

.method public final onPhotoVideoSnapStarted()V
    .locals 1

    .prologue
    .line 2323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 2324
    return-void
.end method

.method public final onPhotoVideoSwitchFinished()V
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0}, Lcom/android/camera/ui/PhotoVideoPaginator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    .line 2288
    invoke-virtual {v0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2289
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 2290
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->onPhotoVideoScrollCancelled()V

    .line 2292
    :cond_1
    return-void
.end method

.method public final onPhotoVideoSwitchStarted(Z)V
    .locals 3

    .prologue
    .line 2258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 2259
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v1

    .line 2260
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    .line 2261
    :goto_0
    if-eq v1, v0, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoStatechart:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-virtual {v1}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->togglePhotoVideoMode()V

    .line 2263
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ShutterButtonHolder;->setAlpha(F)V

    .line 2264
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->onModeSelected(Lcom/android/camera/util/CameraMode;)V

    .line 2266
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->updateModeSpecificUI()V

    .line 2268
    :cond_0
    return-void

    .line 2260
    :cond_1
    sget-object v0, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    goto :goto_0
.end method

.method public final onPreviewStarted()V
    .locals 2

    .prologue
    .line 1451
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/ui/CameraAppUI;->shouldHideModeCover:Z

    .line 1453
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->fadeIn()V

    .line 1456
    :cond_0
    return-void
.end method

.method public final onShutterButtonClick()V
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->closeDrawer()V

    .line 1472
    return-void
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 1482
    return-void
.end method

.method public final onShutterButtonLongPressRelease()V
    .locals 0

    .prologue
    .line 1494
    return-void
.end method

.method public final onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1488
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 1477
    return-void
.end method

.method public final onStop()V
    .locals 5

    .prologue
    .line 989
    .line 3620
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "shutdownPreviewImpl() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    if-eq v0, v1, :cond_0

    .line 3626
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->disconnectPreviewSizeListeners(Lcom/android/camera/ui/PreviewContentAdapter;)V

    .line 3628
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3629
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    :try_start_0
    sget-object v1, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Waiting for Destroy via Future for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 3634
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Got Destroy via Future for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3642
    sget-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    .line 4444
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimationsFast()V

    .line 993
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->closeDrawer()V

    .line 994
    return-void

    .line 3636
    :catch_0
    move-exception v0

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Synchronization close failed on preview switch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3638
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface Destruction Synchronization on Module Switch Timed out."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3636
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1739
    iput p2, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceWidth:I

    .line 1740
    iput p3, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceHeight:I

    .line 1741
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "SurfaceTexture is available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 1746
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 1760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1761
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "SurfaceTexture is destroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 1765
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1751
    iput p2, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceWidth:I

    .line 1752
    iput p3, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceHeight:I

    .line 1753
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 1756
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1771
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 1774
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraAppUI;->shouldHideModeCover:Z

    if-eqz v0, :cond_1

    .line 1775
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->hideModeCover()V

    .line 1776
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ui/CameraAppUI;->shouldHideModeCover:Z

    .line 1778
    :cond_1
    return-void
.end method

.method public final onToyboxModeSelected(Lcom/android/camera/util/CameraMode;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1551
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->closeDrawer()V

    .line 1554
    sget-object v0, Lcom/android/camera/util/CameraMode;->SETTINGS:Lcom/android/camera/util/CameraMode;

    if-ne p1, v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onSettingsSelected()V

    .line 1556
    iput-boolean v2, p0, Lcom/android/camera/ui/CameraAppUI;->shouldDismissSnackbar:Z

    .line 1586
    :goto_0
    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButtonHolder;->setAlpha(F)V

    .line 1562
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previousPhotoVideoMode:Lcom/android/camera/util/CameraMode;

    .line 1564
    sput-boolean v2, Lcom/android/camera/ui/CameraAppUI;->shouldHideModeCover:Z

    .line 1565
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeTransitionView;->showModeCover(Lcom/android/camera/util/CameraMode;)V

    .line 1566
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->onModeSelected(Lcom/android/camera/util/CameraMode;)V

    .line 1569
    sget-object v0, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-ne p1, v0, :cond_1

    .line 1570
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 1571
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraAppUI;->showPhotoVideoPaginator(Z)V

    .line 1572
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getPreviewSwipeGestureStateManager()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipePhotoState()V

    .line 1585
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->updateModeSpecificUI()V

    goto :goto_0

    .line 1573
    :cond_1
    sget-object v0, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne p1, v0, :cond_2

    .line 1574
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 1575
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraAppUI;->showPhotoVideoPaginator(Z)V

    .line 1576
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getPreviewSwipeGestureStateManager()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipeVideoState()V

    goto :goto_1

    .line 1577
    :cond_2
    sget-object v0, Lcom/android/camera/util/CameraMode;->VIDEO_INTENT:Lcom/android/camera/util/CameraMode;

    if-ne p1, v0, :cond_3

    .line 1578
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraAppUI;->hidePhotoVideoPaginator(Z)V

    .line 1579
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    goto :goto_1

    .line 1581
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraAppUI;->hidePhotoVideoPaginator(Z)V

    .line 1582
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    goto :goto_1
.end method

.method public final pausePreviewRendering()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1144
    return-void
.end method

.method public final prepareModuleUI(Lcom/android/camera/ui/views/CameraUi;Lcom/android/camera/filmstrip/FilmstripFragment;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1351
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    invoke-virtual {p1}, Lcom/android/camera/ui/views/CameraUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v2

    .line 1356
    const v0, 0x7f1100ba

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/burstchip/BurstChip;

    .line 1357
    const v1, 0x7f1100d9

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PhotoVideoPaginator;

    .line 1358
    const v3, 0x7f11009a

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/RoundedThumbnailView;

    .line 1360
    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    iget-object v4, p0, Lcom/android/camera/ui/CameraAppUI;->previewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-interface {v3, v4}, Lcom/android/camera/ui/PreviewContentAdapter;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1362
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->updateModeSpecificUI()V

    .line 1365
    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1366
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1367
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1366
    invoke-virtual {v4, v5}, Lcom/android/camera/util/CameraMode;->getModeIndex(Landroid/content/res/Resources;)I

    move-result v4

    .line 1365
    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/CameraAppUI;->resetBottomControls(Lcom/android/camera/module/ModuleController;I)V

    .line 1369
    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraAppUI;->addShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 1370
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraAppUI;->addShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 1372
    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->burstLivePreviewController:Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

    invoke-virtual {v3, v0}, Lcom/android/camera/burst/CameraAppBurstLivePreviewController;->setBurstChip(Lcom/google/android/apps/camera/burstchip/BurstChip;)V

    .line 1373
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstLivePreviewController:Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/CameraAppBurstLivePreviewController;->setPhotoVideoPaginator(Landroid/view/View;)V

    .line 1374
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->burstLivePreviewController:Lcom/android/camera/burst/CameraAppBurstLivePreviewController;

    invoke-virtual {v0, v2}, Lcom/android/camera/burst/CameraAppBurstLivePreviewController;->setRoundedThumbnailView(Lcom/android/camera/widget/RoundedThumbnailView;)V

    .line 1376
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setSnackbarController(Lcom/android/camera/ui/snackbar/SnackbarController;)V

    .line 1378
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setPhotoVideoModeSwitchListener(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;)V

    .line 1380
    new-instance v0, Lcom/android/camera/util/AccessibilityController;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    .line 1383
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityAffordances:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/ui/CameraAppUI;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 1385
    invoke-interface {v4}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v4

    .line 1386
    invoke-interface {p2}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripAccessibilityController()Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/util/AccessibilityController;-><init>(Lcom/android/camera/ui/PreviewOverlay;Landroid/content/ContentResolver;Landroid/view/View;Lcom/google/android/apps/camera/async/AddOnlyLifetime;Lcom/android/camera/filmstrip/FilmstripAccessibilityController;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    .line 1388
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    if-ne v0, v1, :cond_0

    .line 1389
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 1390
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/CameraAppUI;->showPhotoVideoPaginator(Z)V

    .line 1391
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getPreviewSwipeGestureStateManager()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipePhotoState()V

    .line 1401
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    new-instance v1, Lcom/android/camera/ui/CameraAppUI$8;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraAppUI$8;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/PreviewContentAdapter;->addAspectRatioChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V

    .line 1408
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    if-ne v0, v1, :cond_1

    .line 1393
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 1394
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/CameraAppUI;->showPhotoVideoPaginator(Z)V

    .line 1395
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getPreviewSwipeGestureStateManager()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipeVideoState()V

    goto :goto_0

    .line 1397
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/CameraAppUI;->hidePhotoVideoPaginator(Z)V

    .line 1398
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    goto :goto_0
.end method

.method public final removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1294
    return-void
.end method

.method public final removeShutterListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShutterButtonHolder;->removeOnShutterButtonListener(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;)V

    .line 1947
    return-void
.end method

.method public final resetBottomControls(Lcom/android/camera/module/ModuleController;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1817
    .line 11832
    invoke-interface {p1}, Lcom/android/camera/module/ModuleController;->isUsingBottomBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11833
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->showBottomBar()V

    move v0, v1

    .line 1817
    :goto_0
    if-eqz v0, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->setShowBottomBar(Z)V

    .line 1819
    invoke-direct {p0, p2}, Lcom/android/camera/ui/CameraAppUI;->setBottomBarButtonForModeIndex(I)V

    .line 1820
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->resetSideButtons()V

    .line 1824
    :goto_1
    return-void

    .line 11859
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/BottomBar;->setVisibility(I)V

    move v0, v2

    .line 11839
    goto :goto_0

    .line 1822
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CaptureLayoutHelper;->setShowBottomBar(Z)V

    goto :goto_1
.end method

.method public final resume()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripPanel:Lcom/android/camera/filmstrip/FilmstripContentPanel;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->hide()V

    .line 1007
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentMode()Lcom/android/camera/util/CameraMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->showIcon(Lcom/android/camera/util/CameraMode;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->showAccessibilityAffordances()V

    .line 1011
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraAppUI;->isCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->showCloseButton()V

    .line 1013
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setThumbnailVisibility(Z)V

    .line 1017
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->showMenuButton()V

    goto :goto_0
.end method

.method public final resumePreviewRendering()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->cameraRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1151
    return-void
.end method

.method public final setCameraButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ButtonManager;->enableButton(I)V

    .line 1929
    return-void
.end method

.method public final setDefaultBufferSizeToViewDimens()V
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    if-nez v0, :cond_1

    .line 750
    :cond_0
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    const-string v1, "Could not set SurfaceTexture default buffer dimensions, not yet setup"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 754
    invoke-interface {v1}, Lcom/android/camera/ui/PreviewContentAdapter;->getViewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/PreviewContentAdapter;->getViewHeight()I

    move-result v2

    .line 753
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0
.end method

.method public final setIndicatorBottomBarWrapperVisible(Z)V
    .locals 2

    .prologue
    .line 1932
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->setVisibility(I)V

    .line 1933
    return-void

    .line 1932
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final setModeSwitchEnabled(Z)V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setSwipeEnabled(Z)V

    .line 939
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setClickable(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->setEnabled(Z)V

    .line 941
    return-void
.end method

.method public final setPreviewStatusListener(Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;Lcom/android/camera/ui/PreviewStatusListener;)V
    .locals 6

    .prologue
    .line 1186
    .line 7659
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7660
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceViewAlt:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7661
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterTextureView:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7662
    sget-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 7664
    sget-object v0, Lcom/android/camera/ui/CameraAppUI;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Switching PreviewContentImpl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7668
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    if-ne p1, v0, :cond_3

    .line 7669
    iput-object p2, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 1187
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    if-eqz v0, :cond_1

    .line 9200
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewStatusListener;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    .line 9201
    if-eqz v0, :cond_0

    .line 9202
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PreviewOverlay;->setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 9204
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewStatusListener;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 9205
    if-eqz v0, :cond_1

    .line 9206
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PreviewOverlay;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1190
    :cond_1
    return-void

    .line 7662
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7675
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 7680
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    if-eq v0, v1, :cond_5

    .line 7684
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->TEXTURE_VIEW_LEGACY:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    if-ne v0, v1, :cond_4

    .line 7685
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->disconnectPreviewSizeListeners(Lcom/android/camera/ui/PreviewContentAdapter;)V

    .line 7688
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    if-eqz v0, :cond_5

    .line 7689
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7693
    :cond_5
    iput-object p2, p0, Lcom/android/camera/ui/CameraAppUI;->previewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 8595
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8596
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceViewAlt:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8597
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterTextureView:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8599
    invoke-virtual {p1}, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot query next content adapter for a NONE implementation "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8601
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterTextureView:Lcom/android/camera/ui/PreviewContentAdapter;

    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 7694
    :goto_2
    iput-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 7695
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentImpl:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    .line 7697
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7701
    sget-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->TEXTURE_VIEW_LEGACY:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    if-ne p1, v0, :cond_6

    .line 7702
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 8715
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->previewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/PreviewContentAdapter;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8716
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->previewPropertyListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/PreviewContentAdapter;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 7704
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->onModuleActivate()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 8603
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

    if-ne v0, v1, :cond_7

    .line 8604
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceViewAlt:Lcom/android/camera/ui/PreviewContentAdapter;

    goto :goto_2

    .line 8606
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->previewContentAdapterSurfaceView:Lcom/android/camera/ui/PreviewContentAdapter;

    goto :goto_2

    .line 8599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setShouldSuppressCaptureIndicator(Z)V
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureIndicatorController:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->setShouldSuppressCaptureIndicator(Z)V

    .line 1641
    return-void
.end method

.method public final setShutterButtonClickable(Z)V
    .locals 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    new-instance v1, Lcom/android/camera/ui/CameraAppUI$11;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CameraAppUI$11;-><init>(Lcom/android/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->post(Ljava/lang/Runnable;)Z

    .line 1904
    return-void
.end method

.method public final setShutterButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    new-instance v1, Lcom/android/camera/ui/CameraAppUI$10;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CameraAppUI$10;-><init>(Lcom/android/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->post(Ljava/lang/Runnable;)Z

    .line 1887
    return-void
.end method

.method public final setShutterButtonImportantToA11y(Z)V
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonImportantToA11y(Z)V

    .line 1912
    return-void
.end method

.method public final setZoomEnabled(Z)V
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 2372
    return-void
.end method

.method public final showAccessibilityAffordances()V
    .locals 3

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraAppUI;->isCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

    .line 1065
    invoke-virtual {v0}, Lcom/android/camera/util/AccessibilityUtil;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 1067
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    .line 1068
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->isZoomSupported()Z

    move-result v2

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->isBurstSupported()Z

    move-result v0

    .line 1067
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/util/AccessibilityController;->showAccessibilityAffordances(ZZ)V

    .line 1070
    :cond_0
    return-void
.end method

.method public final showBlankViewfinderCover()V
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->hideIcon()V

    .line 1109
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 6086
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setVisibility(I)V

    .line 1110
    return-void
.end method

.method public final showBottomBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1849
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->isShutterButtonReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonEnabledWithoutAnimation(Z)V

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setVisibility(I)V

    .line 1853
    return-void
.end method

.method public final showBottomBarSideControls()V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->show()V

    .line 1649
    return-void
.end method

.method public final showCloseButton()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->closeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1040
    return-void
.end method

.method public final showFilmstrip()V
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->showFilmstrip()V

    .line 14077
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    if-eqz v0, :cond_0

    .line 14078
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityUtil:Lcom/android/camera/util/AccessibilityUtil;

    invoke-virtual {v0}, Lcom/android/camera/util/AccessibilityUtil;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14079
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/camera/util/AccessibilityController;->showFilmstripItemUI()V

    :cond_0
    :goto_0
    return-void

    .line 14081
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->accessibilityController:Lcom/android/camera/util/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/camera/util/AccessibilityController;->hideFilmstripItemUI()V

    goto :goto_0
.end method

.method public final showMenuButton()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->closeButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->setVisibility(I)V

    .line 1045
    return-void
.end method

.method public final showPhotoVideoPaginator(Z)V
    .locals 2

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setProgress(FZ)V

    .line 2360
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->showPaginationDots()V

    .line 2361
    return-void
.end method

.method public final showTutorial(Lcom/android/camera/ui/AbstractTutorialOverlay;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 2216
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->setCaptureUiImportantForAccessibility(I)V

    .line 2218
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->tutorialsPlaceHolderWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;-><init>(Lcom/android/camera/ui/CameraAppUI;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/camera/ui/AbstractTutorialOverlay;->show(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;)V

    .line 2225
    return-void
.end method

.method public final showViewfinderCover(Lcom/android/camera/util/CameraMode;)V
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->showIcon(Lcom/android/camera/util/CameraMode;)V

    .line 1104
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 5086
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setVisibility(I)V

    .line 1105
    return-void
.end method

.method public final startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final switchMode(Z)V
    .locals 3

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->snapCover(FZ)V

    .line 2254
    return-void
.end method

.method public final transitionToCancel()V
    .locals 3

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 1996
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 1997
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    const/4 v2, 0x0

    .line 1995
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/ui/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V

    .line 1999
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->transitionToCancel()V

    .line 12672
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->hide()V

    .line 2001
    return-void
.end method

.method public final transitionToCapture()V
    .locals 1

    .prologue
    .line 1971
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToCapture(Z)V

    .line 1972
    return-void
.end method

.method public final transitionToCapture(Z)V
    .locals 3

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 1983
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 1984
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    const/4 v2, 0x0

    .line 1982
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/ui/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V

    .line 1986
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomBar;->transitionToCapture(Z)V

    .line 12648
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->show()V

    .line 1988
    return-void
.end method

.method public final transitionToCountdownUI(Z)V
    .locals 1

    .prologue
    .line 2041
    if-eqz p1, :cond_0

    .line 2042
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->transitionToCancel()V

    .line 2044
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->hidePaginationDots()V

    .line 2045
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeOut()V

    .line 2053
    :goto_0
    return-void

    .line 2048
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI;->showMenuButton()V

    .line 13971
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToCapture(Z)V

    .line 2050
    invoke-direct {p0}, Lcom/android/camera/ui/CameraAppUI;->showPaginationDots()V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeIn()V

    goto :goto_0
.end method

.method public final transitionToIntentCaptureLayout()V
    .locals 3

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 2009
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 2010
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    const/4 v2, 0x0

    .line 2008
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/ui/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V

    .line 2012
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->transitionToIntentCaptureLayout()V

    .line 2013
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->show()V

    .line 2015
    return-void
.end method

.method public final transitionToIntentReviewLayout()V
    .locals 3

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->controller:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    .line 2023
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    .line 2024
    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    const/4 v2, 0x0

    .line 2022
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/ui/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V

    .line 2026
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->transitionToIntentReviewLayout()V

    .line 2027
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBarSideControls;->hide()V

    .line 2032
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->modeTransitionView:Lcom/android/camera/ui/ModeTransitionView;

    .line 13079
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 2033
    return-void
.end method

.method public final updatePreviewAspectRatio(F)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->updateAspectRatio(F)V

    .line 737
    return-void
.end method

.method public final updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->currentPreviewContentAdapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->updateTransform(Landroid/graphics/Matrix;)V

    .line 765
    return-void
.end method

.method public final zoomIn()F
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->zoomIn()F

    move-result v0

    return v0
.end method

.method public final zoomOut()F
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI;->uncoveredPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->zoomOut()F

    move-result v0

    return v0
.end method
