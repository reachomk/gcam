.class public final Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;
.super Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;
.source "GeneratedEvCompVisibleStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateAffordance:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateResting:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateScrolling:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;-><init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)V

    .line 34
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateAffordance:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 35
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$2;-><init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)V

    .line 43
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateResting:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 44
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$3;-><init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)V

    .line 52
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateScrolling:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 53
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateAffordance:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateScrolling:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateResting:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 96
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateAffordance:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateResting:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->stateScrolling:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 104
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->enter()V

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 85
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->exit()V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 91
    return-void
.end method

.method public final initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBNADQ62T35CDK62SJK7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBN7D662RJ4E9NMIP1FC5N6IRB1EHKMURHFAPGMOTB585N6IRB1EHNN4EQ99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQ655B0____(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ValueAnimator;ILcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;",
            "Lcom/google/android/apps/camera/evcomp/EvCompView;",
            "Landroid/animation/ValueAnimator;",
            "I",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBNADQ62T35CDK62SJK7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBN7D662RJ4E9NMIP1FC5N6IRB1EHKMURHFAPGMOTB585N6IRB1EHNN4EQ99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQ655B0____(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ValueAnimator;ILcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;F)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final onFingerUp()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFingerUp()V

    goto :goto_0
.end method

.method public final onScroll(F)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScroll(F)V

    goto :goto_0
.end method
