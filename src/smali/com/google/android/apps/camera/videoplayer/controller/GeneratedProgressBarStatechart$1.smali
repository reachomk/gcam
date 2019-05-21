.class final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;
.super Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;
.source "GeneratedProgressBarStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;)V

    return-void
.end method


# virtual methods
.method public final onScrubbingStarted()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 25
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;->onScrubbingStarted()V

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 27
    return-void
.end method
