.class public final Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;
.super Lcom/android/camera/ui/controller/ImageIntentStatechart;
.source "GeneratedImageIntentStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;-><init>()V

    .line 22
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;)V

    .line 30
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 31
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;)V

    .line 39
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 40
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 83
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReady:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->stateReview:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 90
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->enter()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 72
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->exit()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 78
    return-void
.end method

.method public final initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onImageReadyForReview()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onImageReadyForReview()V

    goto :goto_0
.end method

.method public final onRetakeRequested()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onRetakeRequested()V

    goto :goto_0
.end method
