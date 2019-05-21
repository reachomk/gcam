.class final Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;
.super Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintNotShown;
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
    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintNotShown;-><init>()V

    return-void
.end method


# virtual methods
.method public final showHint()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->access$000(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 27
    invoke-super {p0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintNotShown;->showHint()V

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->access$000(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart$1;->this$0:Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;->access$100(Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 29
    return-void
.end method
