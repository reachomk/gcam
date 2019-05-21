.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$19;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$19;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureProgressCanceled()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public final onQuickExpose()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$19;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventCameraQuickExpose;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventCameraQuickExpose;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 608
    return-void
.end method

.method public final onTakePictureProgress(F)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method
