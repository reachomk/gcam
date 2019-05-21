.class public final Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;
.super Lcom/android/camera/ui/controller/VideoIntentStatechart;
.source "GeneratedVideoIntentStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;-><init>()V

    .line 24
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)V

    .line 32
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 33
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)V

    .line 48
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 49
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;-><init>(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)V

    .line 57
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 58
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 117
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 125
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->enter()V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 106
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->exit()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 112
    return-void
.end method

.method public final initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onRecordingStarted()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/VideoIntentState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentState;->onRecordingStarted()V

    goto :goto_0
.end method

.method public final onRecordingStopFailed()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/VideoIntentState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentState;->onRecordingStopFailed()V

    goto :goto_0
.end method

.method public final onRetakeRequested()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/VideoIntentState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentState;->onRetakeRequested()V

    goto :goto_0
.end method

.method public final onVideoReadyForReview()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/VideoIntentState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentState;->onVideoReadyForReview()V

    goto :goto_0
.end method
