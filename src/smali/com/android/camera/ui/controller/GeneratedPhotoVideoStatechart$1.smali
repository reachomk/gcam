.class final Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;
.super Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;
.source "GeneratedPhotoVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/controller/CountdownStatechart;Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;-><init>(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)V

    return-void
.end method


# virtual methods
.method public final setVideoMode()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 31
    invoke-super {p0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;->setVideoMode()V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 33
    return-void
.end method

.method public final togglePhotoVideoMode()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 38
    invoke-super {p0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;->togglePhotoVideoMode()V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedPhotoVideoStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 40
    return-void
.end method
