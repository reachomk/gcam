.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;
.super Ljava/lang/Object;
.source "StateRecordingVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;

.field private synthetic val$camcorderVideoFileOptional:Lcom/google/common/base/Optional;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;Lcom/google/common/base/Optional;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;

    iput-object p2, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;->val$camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$500(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderDevice;->close()V

    .line 225
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;->this$1:Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventVideoFileReady;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$9$1;->val$camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    invoke-direct {v1, v2}, Lcom/android/camera/module/videointent/event/Events$EventVideoFileReady;-><init>(Lcom/google/common/base/Optional;)V

    .line 226
    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 227
    return-void
.end method
