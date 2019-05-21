.class public final Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;
.super Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;
.source "GeneratedVideoSwipeHintStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateHintNotShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateHintShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/DelayedExecutor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/DelayedExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/DelayedExecutor;)V

    .line 23
    new-instance v0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;-><init>(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)V

    .line 31
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintNotShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 32
    new-instance v0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;-><init>(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)V

    .line 40
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 41
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintNotShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintNotShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 84
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintNotShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->stateHintShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 91
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->enter()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 73
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->exit()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 79
    return-void
.end method

.method public final hideHint()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->hideHint()V

    goto :goto_0
.end method

.method public final initialize(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->initialize(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final showHint()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->showHint()V

    goto :goto_0
.end method
