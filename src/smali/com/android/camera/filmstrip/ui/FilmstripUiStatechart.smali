.class public Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "FilmstripUiStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsInvisible;,
        Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsVisible;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

.field private filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

.field private filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

.field private filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

.field private resources:Landroid/content/res/Resources;

.field private sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

.field private window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "FilmstripUiState"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(C)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->showFilmstripUi()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->showNavigationBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->hideFilmstripUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->hideNavigationBar()V

    return-void
.end method

.method private final hideFilmstripUi()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 146
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v0, v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripTopBarGradient:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v0, v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    invoke-virtual {v0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setVisible(Z)V

    .line 150
    return-void
.end method

.method private final hideNavigationBar()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

    const/16 v1, 0x1707

    invoke-interface {v0, v1}, Lcom/android/camera/util/activity/SysUiFlagApplier;->applySysUIFlag(I)V

    .line 160
    return-void
.end method

.method private final showFilmstripUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 137
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v0, v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripTopBarGradient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v0, v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    invoke-virtual {v0, v2}, Lcom/android/camera/filmstrip/FilmstripBadgeController;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    invoke-interface {v0, v2}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setVisible(Z)V

    .line 141
    return-void
.end method

.method private final showNavigationBar()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

    const/16 v1, 0x701

    invoke-interface {v0, v1}, Lcom/android/camera/util/activity/SysUiFlagApplier;->applySysUIFlag(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const v2, 0x7f0b0220

    .line 71
    sget-object v0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->TAG:Ljava/lang/String;

    const-string v1, "Filmstrip Ui Enter"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v0, v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->noPhotosIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 81
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const v2, 0x7f0b0212

    .line 85
    sget-object v0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->TAG:Ljava/lang/String;

    const-string v1, "Filmstrip Ui Exit"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

    const/16 v1, 0x705

    invoke-interface {v0, v1}, Lcom/android/camera/util/activity/SysUiFlagApplier;->applySysUIFlag(I)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v0, v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->noPhotosIndicator:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->dismissUntoDelete()V

    .line 93
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 98
    return-void
.end method

.method public initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG89NN8T3FDL862RJ5DH1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E1162P37CL1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E126AR35EHIK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O4CSJ1CTMMARJK7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TQMIBQ3C5MMASJ18PKMORBJEHP6IS2LD4TKOOBECHP6UQB45TGN0S1F85HN8QBFDP162SHR9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNM2ORKD5R6IT3P5T9NISQLD536OOB785O70R39CLP3MAAM(Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/filmstrip/FilmstripBottomPanelController;Lcom/android/camera/filmstrip/FilmstripBadgeController;Lcom/android/camera/filmstrip/FilmstripDeleteController;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/app/ActionBar;Landroid/content/res/Resources;Landroid/view/Window;Lcom/android/camera/util/activity/SysUiFlagApplier;)V
    .locals 0

    .prologue
    .line 58
    iput-object p2, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    .line 59
    iput-object p3, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    .line 60
    iput-object p4, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    .line 62
    iput-object p6, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    .line 63
    iput-object p7, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->actionBar:Landroid/app/ActionBar;

    .line 64
    iput-object p8, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->resources:Landroid/content/res/Resources;

    .line 65
    iput-object p9, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->window:Landroid/view/Window;

    .line 66
    iput-object p10, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

    .line 67
    return-void
.end method
