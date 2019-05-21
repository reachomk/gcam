.class public final Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;
.super Lcom/android/camera/ui/controller/CameraUiStatechart;
.source "GeneratedCameraUiStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateCapture:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateFilmstrip:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CameraUiStatechart;-><init>()V

    .line 25
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;)V

    .line 33
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v4, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateCapture:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 34
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;)V

    .line 42
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v4, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p2, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateFilmstrip:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 43
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateCapture:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateFilmstrip:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateCapture:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 86
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateCapture:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->stateFilmstrip:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 93
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->enter()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 75
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->exit()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 81
    return-void
.end method

.method public final initialize(Landroid/view/Window;Lcom/google/android/apps/camera/async/PropertyResetter;Lcom/android/camera/ui/PhotoVideoPaginator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/controller/CameraUiStatechart;->initialize(Landroid/view/Window;Lcom/google/android/apps/camera/async/PropertyResetter;Lcom/android/camera/ui/PhotoVideoPaginator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onFilmstripClosed()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFilmstripClosed()V

    goto :goto_0
.end method

.method public final onFilmstripOpened()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFilmstripOpened()V

    goto :goto_0
.end method
