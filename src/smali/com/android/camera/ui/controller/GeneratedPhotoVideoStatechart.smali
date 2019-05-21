.class public final Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;
.super Lcom/android/camera/ui/controller/PhotoVideoStatechart;
.source "GeneratedPhotoVideoStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private statePhoto:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateVideoReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateVideoRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/controller/CountdownStatechart;Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 27
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)V

    .line 42
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statePhoto:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 43
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)V

    .line 58
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v5, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p5, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->stateVideoReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 59
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$3;-><init>(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)V

    .line 67
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v4, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->stateVideoRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 68
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statePhoto:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->stateVideoReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->stateVideoRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statePhoto:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 127
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statePhoto:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->stateVideoReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->stateVideoRecording:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 135
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->enter()V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 116
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->exit()V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 122
    return-void
.end method

.method public final initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onStartRecording()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/PhotoVideoState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/PhotoVideoState;->onStartRecording()V

    goto :goto_0
.end method

.method public final onStopRecording()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/PhotoVideoState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/PhotoVideoState;->onStopRecording()V

    goto :goto_0
.end method

.method public final setVideoMode()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/PhotoVideoState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/PhotoVideoState;->setVideoMode()V

    goto :goto_0
.end method

.method public final togglePhotoVideoMode()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/PhotoVideoState;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/PhotoVideoState;->togglePhotoVideoMode()V

    goto :goto_0
.end method
