.class Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoSwipeHintStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HintShown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->this$0:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[C)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->this$0:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->access$000(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->showHint()V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->this$0:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->access$100(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)Lcom/google/android/apps/camera/async/DelayedExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown$1;-><init>(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/DelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->this$0:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->access$000(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;->hideHint()V

    .line 59
    return-void
.end method

.method public hideHint()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
