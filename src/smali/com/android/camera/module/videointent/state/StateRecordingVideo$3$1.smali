.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;
.super Ljava/lang/Object;
.source "StateRecordingVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$600(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideoIntentStatechart()Lcom/android/camera/ui/controller/VideoIntentStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->onRecordingStopFailed()V

    .line 118
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$700(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->changeBottomBarToVideoStart()V

    .line 119
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$800(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->showRecordingUI(Z)V

    .line 120
    return-void
.end method
