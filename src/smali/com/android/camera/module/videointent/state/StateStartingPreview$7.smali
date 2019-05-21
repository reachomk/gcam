.class final Lcom/android/camera/module/videointent/state/StateStartingPreview$7;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateStartingPreview;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
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
        "Lcom/android/camera/camcorder/CamcorderCaptureSession;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$7;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 242
    check-cast p1, Lcom/android/camera/camcorder/CamcorderCaptureSession;

    .line 1245
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$7;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventOnStartPreviewSucceeded;

    invoke-direct {v1, p1}, Lcom/android/camera/module/videointent/event/Events$EventOnStartPreviewSucceeded;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSession;)V

    .line 1246
    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 242
    return-void
.end method
