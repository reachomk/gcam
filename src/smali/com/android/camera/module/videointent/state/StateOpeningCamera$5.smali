.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$5;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateOpeningCamera;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
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
        "Lcom/android/camera/camcorder/CamcorderDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to open camera: "

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraFailed;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraFailed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 295
    check-cast p1, Lcom/android/camera/camcorder/CamcorderDevice;

    .line 1298
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;

    invoke-direct {v1, p1}, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;-><init>(Lcom/android/camera/camcorder/CamcorderDevice;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 295
    return-void
.end method
