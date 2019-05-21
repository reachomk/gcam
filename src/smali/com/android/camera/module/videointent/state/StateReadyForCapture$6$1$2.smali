.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->run()V
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
        "Lcom/android/camera/camcorder/CamcorderRecordingSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;->this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 197
    check-cast p1, Lcom/android/camera/camcorder/CamcorderRecordingSession;

    .line 1201
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;->this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$1400(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 1202
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2$1;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;)V

    .line 1203
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1212
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$2;->this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventRecordingStarted;

    invoke-direct {v1, p1}, Lcom/android/camera/module/videointent/event/Events$EventRecordingStarted;-><init>(Lcom/android/camera/camcorder/CamcorderRecordingSession;)V

    .line 1213
    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
