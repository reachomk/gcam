.class final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;
.super Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$Scrubbing;
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
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$Scrubbing;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrubbingDone()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 34
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart$Scrubbing;->onScrubbingDone()V

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart$2;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;->access$200(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedProgressBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 36
    return-void
.end method
