.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$1;->this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaxDurationReached()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$1;->this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventMaxFileSizeOrMaxDurationReached;

    invoke-direct {v1}, Lcom/android/camera/module/videointent/event/Events$EventMaxFileSizeOrMaxDurationReached;-><init>()V

    .line 184
    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public final onMaxFileSizeReached()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1$1;->this$2:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventMaxFileSizeOrMaxDurationReached;

    invoke-direct {v1}, Lcom/android/camera/module/videointent/event/Events$EventMaxFileSizeOrMaxDurationReached;-><init>()V

    .line 191
    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 193
    return-void
.end method
