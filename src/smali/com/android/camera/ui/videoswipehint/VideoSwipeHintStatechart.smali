.class public Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoSwipeHintStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;,
        Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintNotShown;
    }
.end annotation


# instance fields
.field private final delayedExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

.field private final hasSwipedToVideo:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private videoSwipeHintUi:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/DelayedExecutor;)V
    .locals 1
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
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[C)V

    .line 26
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->hasSwipedToVideo:Lcom/google/android/apps/camera/async/Observable;

    .line 27
    iput-object p2, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->delayedExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->videoSwipeHintUi:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)Lcom/google/android/apps/camera/async/DelayedExecutor;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->delayedExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->videoSwipeHintUi:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    .line 33
    return-void
.end method

.method public final onDrawerClosed()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->hasSwipedToVideo:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/camera/statecharts/StateBase;->showHint()V

    .line 71
    :cond_0
    return-void
.end method
