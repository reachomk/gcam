.class public final Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;
.super Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;
.source "GeneratedFilmstripUiStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateFilmstripControlsInvisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateFilmstripControlsVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;-><init>()V

    .line 29
    new-instance v0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;-><init>(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)V

    .line 37
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsInvisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 38
    new-instance v0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$2;-><init>(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)V

    .line 46
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 47
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsInvisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 82
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsInvisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->stateFilmstripControlsVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 89
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->enter()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 71
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->exit()V

    .line 76
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 77
    return-void
.end method

.method public final initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG89NN8T3FDL862RJ5DH1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E1162P37CL1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E126AR35EHIK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O4CSJ1CTMMARJK7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TQMIBQ3C5MMASJ18PKMORBJEHP6IS2LD4TKOOBECHP6UQB45TGN0S1F85HN8QBFDP162SHR9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNM2ORKD5R6IT3P5T9NISQLD536OOB785O70R39CLP3MAAM(Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/filmstrip/FilmstripBottomPanelController;Lcom/android/camera/filmstrip/FilmstripBadgeController;Lcom/android/camera/filmstrip/FilmstripDeleteController;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/app/ActionBar;Landroid/content/res/Resources;Landroid/view/Window;Lcom/android/camera/util/activity/SysUiFlagApplier;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG89NN8T3FDL862RJ5DH1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E1162P37CL1MURJKE9NMOR35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NKCQBCDLPN8SJ9E126AR35EHIK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UHJ9DHMN6T3ID5O4CSJ1CTMMARJK7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TQMIBQ3C5MMASJ18PKMORBJEHP6IS2LD4TKOOBECHP6UQB45TGN0S1F85HN8QBFDP162SHR9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNM2ORKD5R6IT3P5T9NISQLD536OOB785O70R39CLP3MAAM(Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/filmstrip/FilmstripBottomPanelController;Lcom/android/camera/filmstrip/FilmstripBadgeController;Lcom/android/camera/filmstrip/FilmstripDeleteController;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/app/ActionBar;Landroid/content/res/Resources;Landroid/view/Window;Lcom/android/camera/util/activity/SysUiFlagApplier;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final toggleControlsVisibility()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->toggleControlsVisibility()V

    goto :goto_0
.end method
