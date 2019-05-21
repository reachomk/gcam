.class final Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;
.super Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;
.source "GeneratedVideoIntentStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;-><init>(Lcom/android/camera/ui/controller/VideoIntentStatechart;)V

    return-void
.end method


# virtual methods
.method public final onRecordingStopFailed()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;->onRecordingStopFailed()V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 39
    return-void
.end method

.method public final onVideoReadyForReview()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 44
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;->onVideoReadyForReview()V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$300(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 46
    return-void
.end method
