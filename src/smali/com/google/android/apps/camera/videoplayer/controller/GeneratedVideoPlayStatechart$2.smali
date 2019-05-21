.class final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;
.super Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;
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
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V

    return-void
.end method


# virtual methods
.method public final onFragmentPaused()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 39
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;->onFragmentPaused()V

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$200(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 41
    return-void
.end method

.method public final playVideo()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 46
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;->playVideo()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 48
    return-void
.end method
