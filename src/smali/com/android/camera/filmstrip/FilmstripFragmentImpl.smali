.class public Lcom/android/camera/filmstrip/FilmstripFragmentImpl;
.super Landroid/app/Fragment;
.source "FilmstripFragmentImpl.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripFragment;


# instance fields
.field activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field activityWindowManager:Landroid/view/WindowManager;

.field private cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

.field cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

.field private filmstripAccessibilityController:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

.field filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

.field private filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

.field filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

.field filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

.field private filmstripControlsContainer:Landroid/widget/FrameLayout;

.field filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

.field private filmstripFragmentContainer:Landroid/widget/FrameLayout;

.field private filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

.field filmstripTransitioningStatechart:Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

.field filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

.field filmstripUiStatechartInitializer$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUHJ9DHMN6T3ID5O5AQAJEHGN8PB3D1GN4T29DPKN8QB1DHKNKPBI7C______:Lcom/android/camera/processing/ProcessingModule;

.field private filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

.field private hasBeenSwitchedOut:Z

.field private isActivityPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "FilmstripFrgmntImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->isActivityPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final initializeOnce()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/main/HasCameraActivityComponents;

    .line 131
    invoke-interface {v0}, Lcom/android/camera/activity/main/HasCameraActivityComponents;->getUiComponent()Lcom/android/camera/activity/main/CameraActivityUiComponent;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/one/v2/preview/SimplePreviewModule;-><init>(Lcom/android/camera/filmstrip/FilmstripFragmentImpl;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;)V

    .line 134
    invoke-interface {v0, v1}, Lcom/android/camera/activity/main/CameraActivityUiComponent;->createFilmstripFragmentComponent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78JBFCHQMOP9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78GRFDLO6URJ5DPQ3M___(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)Lcom/android/camera/filmstrip/FilmstripFragmentComponent;

    move-result-object v0

    .line 136
    invoke-interface {v0, p0}, Lcom/android/camera/filmstrip/FilmstripFragmentComponent;->inject(Lcom/android/camera/filmstrip/FilmstripFragmentImpl;)V

    .line 137
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripFragmentComponent;->inject(Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;)V

    .line 138
    iput-boolean v3, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->hasBeenSwitchedOut:Z

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public final getBottomPanelController()Lcom/android/camera/filmstrip/FilmstripBottomPanelController;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    return-object v0
.end method

.method public final getFilmstripAccessibilityController()Lcom/android/camera/filmstrip/FilmstripAccessibilityController;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripAccessibilityController:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must initialize the filmstrip fragment first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripAccessibilityController:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    return-object v0
.end method

.method public final getFilmstripBadgeController()Lcom/android/camera/filmstrip/FilmstripBadgeController;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripBadgeController;

    return-object v0
.end method

.method public final getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    return-object v0
.end method

.method public final getFilmstripController()Lcom/android/camera/filmstrip/FilmstripController;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripController;

    return-object v0
.end method

.method public final getFilmstripViewController()Lcom/android/camera/filmstrip/FilmstripViewController;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripViewController;

    return-object v0
.end method

.method public final getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->activityWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final hideFilmstrip()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->hide()V

    .line 177
    return-void
.end method

.method public final initializeData()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->initializeOnce()V

    .line 83
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripController;->initializeData()V

    .line 84
    return-void
.end method

.method public final initializeUi$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB99TH76PBIEPGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESI50R31F5B6IP35DT4MST35DPQ3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP31EHGIUJ3FCDGMOHJ9DHMN6T3ID5O48OBKC50M8OBGEHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRND5I6EPBK5T96UTBECHIM8L38ELMM4RJ1D5M5CQB5ESTIILG_(Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/one/v2/lifecycle/StartTasks;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/app/AppController;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/one/v2/lifecycle/StartTasks;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Lcom/android/camera/widget/RoundedThumbnailView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->initializeOnce()V

    .line 96
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 99
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    iget-object v5, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UTR9CHJMAT1F8PKMORBJEHP6IS2MD5INE92GDHGNILJ9CHIMUIBEEHIMST1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUHJ9DHMN6T3ID5O5AQAJEHGN8PB3D1GN4T1R55B0____(Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/app/AppController;Lcom/android/camera/one/v2/lifecycle/StartTasks;Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getFilmstripViewController()Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->setImageGap(I)V

    .line 104
    invoke-interface {v0, p4}, Lcom/android/camera/filmstrip/FilmstripViewController;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iget-object v4, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v5, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    iget-object v6, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripTransitioningStatechart:Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->init$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQLD57M4SR5E9R62OJCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKORR3C5M4CQBCDLPN8SJ9E1262T3185I62S3KCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTR9CHJMAT1FA9NNARJ4CLI58Q3LDLH6SOB9DHB6IPBN7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUORFDPQ74RRCDHIN4BQ3C5MMASJ1ALKL6T31EHIM6Q31E9Q3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UTB95T36IR3DEDQ74QBGAHP62RJJD5Q6IRRED5N6EKRKC5Q6AOR8C5P78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0HJIC5JMQPBEEGTIILG_(Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/widget/RoundedThumbnailView;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;Lcom/android/camera/filmstrip/FilmstripFragment;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 118
    new-instance v0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;-><init>(Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripAccessibilityController:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    .line 122
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripUiStatechartInitializer$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUHJ9DHMN6T3ID5O5AQAJEHGN8PB3D1GN4T29DPKN8QB1DHKNKPBI7C______:Lcom/android/camera/processing/ProcessingModule;

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingModule;->initialize()V

    .line 123
    return-void
.end method

.method public final isActivityFinishing()Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActivityPaused()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->isActivityPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isFilmstripVisible()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 219
    const v0, 0x7f040026

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripFragmentContainer:Landroid/widget/FrameLayout;

    .line 221
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripFragmentContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 222
    const v0, 0x7f1100c9

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    .line 223
    const v0, 0x7f1100cc

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/FilmstripView;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 224
    const v0, 0x7f110100

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    .line 225
    const v0, 0x7f1100ce

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripControlsContainer:Landroid/widget/FrameLayout;

    .line 228
    const v0, 0x7f04007b

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripControlsContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripFragmentContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->createFrom$51662RJ4E9NMIP1FEPKMATPFAPKMATPR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TQMIBQ3C5MMASJ18PKMORBJEHP6IS2LD4TG____(Landroid/view/View;)Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    .line 235
    invoke-direct {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->initializeOnce()V

    .line 237
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripFragmentContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 254
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->isActivityPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 256
    iput-boolean v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->hasBeenSwitchedOut:Z

    .line 257
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->endCurrentSwipe()V

    .line 258
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->isActivityPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->hasBeenSwitchedOut:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getFilmstripController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripController;->removeDeleted()V

    .line 247
    iput-boolean v1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->hasBeenSwitchedOut:Z

    .line 249
    :cond_0
    return-void
.end method

.method public final showFilmstrip()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->show()V

    .line 172
    return-void
.end method
