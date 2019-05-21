.class public final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;
.super Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;
.source "GeneratedProgressBarStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateNotScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)V

    .line 29
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateNotScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 30
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)V

    .line 38
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 39
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateNotScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateNotScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

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
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateNotScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->stateScrubbing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 89
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->enter()V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 71
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->exit()V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 77
    return-void
.end method

.method public final initialize(Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;Lcom/google/android/apps/camera/videoplayer/controller/ProgressUpdater;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->initialize(Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;Lcom/google/android/apps/camera/videoplayer/controller/ProgressUpdater;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onScrubbingDone()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScrubbingDone()V

    goto :goto_0
.end method

.method public final onScrubbingStarted()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScrubbingStarted()V

    goto :goto_0
.end method
