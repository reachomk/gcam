.class Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart$Hidden;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "ControlsStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Hidden"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;)V
    .locals 1

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart$Hidden;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[Z)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart$Hidden;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->hideControls()V

    .line 37
    return-void
.end method

.method public onScreenTapped()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
