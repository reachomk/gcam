.class final Lcom/android/camera/module/imageintent/state/StateStartingPreview$5;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateStartingPreview;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$5;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$5;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewFailed;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewFailed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$5;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewSucceeded;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewSucceeded;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 139
    return-void
.end method
