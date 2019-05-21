.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCountDownFinished()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;

    iget-object v2, v2, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->val$captureLoggingInfo:Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    invoke-direct {v1, v2}, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;-><init>(Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    .line 240
    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public final onCountDownStarted()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->playCountDownStartSound()V

    .line 235
    return-void
.end method

.method public final onRemainingSecondsChanged(I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    invoke-interface {v0, p1}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->playCountDownSound(I)V

    .line 230
    return-void
.end method
