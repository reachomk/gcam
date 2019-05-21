.class public final Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;
.super Lcom/android/camera/ui/controller/CountdownStatechart;
.source "GeneratedCountdownStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateCountingDown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CountdownStatechart;-><init>()V

    .line 24
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)V

    .line 32
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateCountingDown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 33
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)V

    .line 41
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 42
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateCountingDown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 85
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateCountingDown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 92
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/camera/ui/controller/CountdownStatechart;->enter()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 74
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/camera/ui/controller/CountdownStatechart;->exit()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 80
    return-void
.end method

.method public final initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1K6UT3FAPKM8PBF9LNM8PAJETKN8OR8APKMATPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR5EPHMURBG5T2NCGRFDLO5CQB5ET1MURJKE9NMOR35E8TIILG_(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/controller/CountdownStatechart;->initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1K6UT3FAPKM8PBF9LNM8PAJETKN8OR8APKMATPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR5EPHMURBG5T2NCGRFDLO5CQB5ET1MURJKE9NMOR35E8TIILG_(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final startCountdown()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->startCountdown()V

    goto :goto_0
.end method

.method public final stopCountdown()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->stopCountdown()V

    goto :goto_0
.end method
