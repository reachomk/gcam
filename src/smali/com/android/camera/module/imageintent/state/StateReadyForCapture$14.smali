.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$14;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 486
    check-cast p1, Ljava/lang/Boolean;

    .line 1489
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventCameraReady;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventCameraReady;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventCameraBusy;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventCameraBusy;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    goto :goto_0
.end method
