.class public final Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;
.source "GeneratedOptionsBarStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateFadingIn:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateFadingOut:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$1;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)V

    .line 41
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateFadingIn:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 42
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)V

    .line 57
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateFadingOut:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 58
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$3;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)V

    .line 73
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 74
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$4;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)V

    .line 89
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 90
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateFadingIn:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateFadingOut:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 157
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateFadingIn:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateFadingOut:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateHidden:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->stateShown:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 166
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->enter()V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 146
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->exit()V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 152
    return-void
.end method

.method public final fadeIn()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;->fadeIn()V

    goto :goto_0
.end method

.method public final fadeOut()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;->fadeOut()V

    goto :goto_0
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;->hide()V

    goto :goto_0
.end method

.method public final initialize(Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->initialize(Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onAnimationComplete()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;->onAnimationComplete()V

    goto :goto_0
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;->show()V

    goto :goto_0
.end method
