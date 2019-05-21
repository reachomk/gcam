.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 259
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;

    .line 1262
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$402(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z

    .line 1264
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;->getCaptureLoggingInfo()Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    .line 1266
    :cond_0
    const/4 v0, 0x0

    .line 259
    return-object v0
.end method
