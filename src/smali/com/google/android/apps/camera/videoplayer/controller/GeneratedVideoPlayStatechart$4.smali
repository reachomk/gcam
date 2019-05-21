.class final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;
.super Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;
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
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V

    return-void
.end method


# virtual methods
.method public final onPausedVideoPrepared()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 78
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->onPausedVideoPrepared()V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 80
    return-void
.end method

.method public final onPlayingVideoPrepared()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 85
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->onPlayingVideoPrepared()V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart$4;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedVideoPlayStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 87
    return-void
.end method
