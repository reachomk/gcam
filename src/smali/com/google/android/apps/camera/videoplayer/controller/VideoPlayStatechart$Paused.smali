.class Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoPlayStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Paused"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[[B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Paused;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setPaused()V

    .line 141
    return-void
.end method

.method public onFragmentPaused()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public playVideo()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
