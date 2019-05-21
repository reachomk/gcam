.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;
.super Ljava/lang/Object;
.source "StateRecordingVideo.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateRecordingVideo;->handleStopRecording()Lcom/android/camera/module/videointent/state/VideoIntentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventVideoStopFailed;

    invoke-direct {v1}, Lcom/android/camera/module/videointent/event/Events$EventVideoStopFailed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 216
    check-cast p1, Lcom/google/common/base/Optional;

    .line 1219
    new-instance v1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$2000(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1220
    new-instance v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;-><init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;Lcom/google/common/base/Optional;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method
