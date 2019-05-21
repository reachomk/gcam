.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

.field final synthetic val$captureLoggingInfo:Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

.field private synthetic val$countDownDuration:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;I)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->val$captureLoggingInfo:Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    iput p3, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->val$countDownDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 244
    iget v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;->val$countDownDuration:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->startCountdown(I)V

    .line 245
    return-void
.end method
