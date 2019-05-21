.class public final Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;
.super Lcom/android/camera/ui/controller/ImageIntentAppStatechart;
.source "GeneratedImageIntentAppStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateImageIntentAppState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ui/controller/ImageIntentAppStatechart;-><init>()V

    .line 18
    new-instance v0, Lcom/android/camera/ui/controller/ImageIntentAppStatechart$ImageIntentAppState;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/ImageIntentAppStatechart$ImageIntentAppState;-><init>(Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;)V

    .line 20
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->stateImageIntentAppState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 21
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->stateImageIntentAppState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    .line 23
    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 40
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->stateImageIntentAppState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 46
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/camera/ui/controller/ImageIntentAppStatechart;->enter()V

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 29
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/camera/ui/controller/ImageIntentAppStatechart;->exit()V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 35
    return-void
.end method
