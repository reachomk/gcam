.class Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "ProgressBarStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotScrubbing"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;)V
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[F)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressUpdater;->runUpdates()V

    .line 35
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$NotScrubbing;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressUpdater;->pauseUpdates()V

    .line 40
    return-void
.end method

.method public onScrubbingStarted()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
