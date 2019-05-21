.class Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoPlayStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Playing"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[[B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setPlaying()V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$500(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->enter()V

    .line 103
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$500(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->exit()V

    .line 113
    return-void
.end method

.method public onFragmentPaused()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setPosition(I)V

    .line 125
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Playing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 119
    return-void
.end method
