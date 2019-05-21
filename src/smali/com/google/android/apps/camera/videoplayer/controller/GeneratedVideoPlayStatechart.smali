.class public final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;
.super Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;
.source "GeneratedVideoPlayStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateBackground:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statePaused:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statePlaying:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statePreparingVideo:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$1;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)V

    .line 34
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->stateBackground:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 35
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)V

    .line 50
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePaused:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 51
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)V

    .line 73
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePlaying:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 74
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)V

    .line 89
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePreparingVideo:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 90
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePreparingVideo:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePaused:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->stateBackground:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePlaying:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 173
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->stateBackground:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePaused:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePlaying:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statePreparingVideo:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 182
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->enter()V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 162
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->exit()V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 168
    return-void
.end method

.method public final initialize(Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;Landroid/net/Uri;Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;IZ)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->initialize(Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;Landroid/net/Uri;Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;IZ)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onFragmentPaused()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFragmentPaused()V

    goto :goto_0
.end method

.method public final onFragmentResumed()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFragmentResumed()V

    goto :goto_0
.end method

.method public final onPausedVideoPrepared()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onPausedVideoPrepared()V

    goto :goto_0
.end method

.method public final onPlayingVideoPrepared()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onPlayingVideoPrepared()V

    goto :goto_0
.end method

.method public final onVideoComplete()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onVideoComplete()V

    goto :goto_0
.end method

.method public final pauseVideo()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->pauseVideo()V

    goto :goto_0
.end method

.method public final playVideo()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->playVideo()V

    goto :goto_0
.end method
