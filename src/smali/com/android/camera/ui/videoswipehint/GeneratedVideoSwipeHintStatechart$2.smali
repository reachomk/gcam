.class final Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;
.super Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;
.source "GeneratedVideoSwipeHintStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/DelayedExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;-><init>(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)V

    return-void
.end method


# virtual methods
.method public final hideHint()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->access$000(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->hideHint()V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->access$000(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$2;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->access$200(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 38
    return-void
.end method
