.class final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;
.super Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;
.source "GeneratedVideoPlayStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V

    return-void
.end method


# virtual methods
.method public final onFragmentPaused()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 55
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->onFragmentPaused()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$200(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 57
    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 62
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->onVideoComplete()V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 64
    return-void
.end method

.method public final pauseVideo()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 69
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->pauseVideo()V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$3;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 71
    return-void
.end method
