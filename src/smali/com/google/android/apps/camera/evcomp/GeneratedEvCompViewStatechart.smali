.class public final Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;
.super Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;
.source "GeneratedEvCompViewStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateDisabled:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;-><init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)V

    .line 31
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateDisabled:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 32
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;-><init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)V

    .line 47
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 48
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$3;-><init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)V

    .line 70
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 71
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateDisabled:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateDisabled:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 130
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateDisabled:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->stateVisible:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 138
    return-void
.end method

.method public final disable()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->disable()V

    goto :goto_0
.end method

.method public final enable(IIF)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/camera/statecharts/StateBase;->enable(IIF)V

    goto :goto_0
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->enter()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 119
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->exit()V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 125
    return-void
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->hide()V

    goto :goto_0
.end method

.method public final initialize(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ObjectAnimator;Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->initialize(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ObjectAnimator;Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final showAffordance()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->showAffordance()V

    goto :goto_0
.end method
