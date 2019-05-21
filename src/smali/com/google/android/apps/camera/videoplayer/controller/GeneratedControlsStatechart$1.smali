.class final Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;
.super Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart$Hidden;
.source "GeneratedControlsStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart$Hidden;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;)V

    return-void
.end method


# virtual methods
.method public final onScreenTapped()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 25
    invoke-super {p0}, Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart$Hidden;->onScreenTapped()V

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart$1;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/GeneratedControlsStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 27
    return-void
.end method
