.class public final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;
.super Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;
.source "GeneratedControlsStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)V

    .line 29
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 30
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$2;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)V

    .line 45
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 46
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 89
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 96
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;->enter()V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 78
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;->exit()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 84
    return-void
.end method

.method public final initialize(Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;->initialize(Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onPlaybackStarted()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onPlaybackStarted()V

    goto :goto_0
.end method

.method public final onScreenTapped()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScreenTapped()V

    goto :goto_0
.end method
