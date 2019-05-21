.class public final Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;
.source "GeneratedOptionsBarExpansionStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateClosing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateExpanded:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateExpanding:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;-><init>(Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;Ljava/util/HashSet;)V

    .line 27
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)V

    .line 35
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 36
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)V

    .line 44
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 45
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$3;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)V

    .line 53
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateExpanded:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 54
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$4;-><init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)V

    .line 62
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateExpanding:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 63
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateExpanding:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateExpanded:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 106
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateClosing:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateExpanded:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->stateExpanding:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 115
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;->close()V

    goto :goto_0
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->enter()V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 95
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->exit()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 101
    return-void
.end method

.method public final expand(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;->expand(Landroid/widget/ImageButton;Landroid/view/View;)V

    goto :goto_0
.end method

.method public final bridge synthetic isClosed()Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationComplete()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;->onAnimationComplete()V

    goto :goto_0
.end method

.method public final bridge synthetic onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public final bridge synthetic onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void
.end method

.method public final bridge synthetic onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
