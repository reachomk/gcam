.class public Lcom/android/camera/processing/ProcessingModule;
.super Ljava/lang/Object;
.source "ProcessingModule.java"


# instance fields
.field private final actionBar:Landroid/app/ActionBar;

.field private activityContext:Landroid/content/Context;

.field private final cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

.field private final filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

.field private final filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

.field private final filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

.field private final filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

.field private final filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

.field private final filmstripTransitioningStatechart:Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

.field private final filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

.field private resources:Landroid/content/res/Resources;

.field private sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/filmstrip/FilmstripBottomPanelController;Lcom/android/camera/filmstrip/FilmstripBadgeController;Lcom/android/camera/filmstrip/FilmstripDeleteController;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/app/ActionBar;Landroid/content/res/Resources;Landroid/view/Window;Lcom/android/camera/util/activity/SysUiFlagApplier;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    .line 1055
    iput-object p2, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripTransitioningStatechart:Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    .line 1056
    iput-object p3, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    .line 1057
    iput-object p4, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    .line 1058
    iput-object p5, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    .line 1059
    iput-object p6, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    .line 1060
    iput-object p7, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    .line 1061
    iput-object p8, p0, Lcom/android/camera/processing/ProcessingModule;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    .line 1062
    iput-object p9, p0, Lcom/android/camera/processing/ProcessingModule;->actionBar:Landroid/app/ActionBar;

    .line 1063
    iput-object p10, p0, Lcom/android/camera/processing/ProcessingModule;->resources:Landroid/content/res/Resources;

    .line 1064
    iput-object p11, p0, Lcom/android/camera/processing/ProcessingModule;->window:Landroid/view/Window;

    .line 1065
    iput-object p12, p0, Lcom/android/camera/processing/ProcessingModule;->sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

    .line 1066
    iput-object p13, p0, Lcom/android/camera/processing/ProcessingModule;->activityContext:Landroid/content/Context;

    .line 1067
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 11

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripBottomPanelController:Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    iget-object v3, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripBadgeController:Lcom/android/camera/filmstrip/FilmstripBadgeController;

    iget-object v4, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    iget-object v5, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    iget-object v6, p0, Lcom/android/camera/processing/ProcessingModule;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v7, p0, Lcom/android/camera/processing/ProcessingModule;->actionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/android/camera/processing/ProcessingModule;->resources:Landroid/content/res/Resources;

    iget-object v9, p0, Lcom/android/camera/processing/ProcessingModule;->window:Landroid/view/Window;

    iget-object v10, p0, Lcom/android/camera/processing/ProcessingModule;->sysUiFlagApplier:Lcom/android/camera/util/activity/SysUiFlagApplier;

    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG89NN8T3FDL862RJ5DH1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E1162P37CL1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E126AR35EHIK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O4CSJ1CTMMARJK7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TQMIBQ3C5MMASJ18PKMORBJEHP6IS2LD4TKOOBECHP6UQB45TGN0S1F85HN8QBFDP162SHR9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNM2ORKD5R6IT3P5T9NISQLD536OOB785O70R39CLP3MAAM(Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/filmstrip/FilmstripBottomPanelController;Lcom/android/camera/filmstrip/FilmstripBadgeController;Lcom/android/camera/filmstrip/FilmstripDeleteController;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/app/ActionBar;Landroid/content/res/Resources;Landroid/view/Window;Lcom/android/camera/util/activity/SysUiFlagApplier;)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripTransitioningStatechart:Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingModule;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->initialize(Lcom/android/camera/filmstrip/FilmstripFragment;Landroid/content/Context;)V

    .line 1082
    return-void
.end method
