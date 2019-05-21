.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 426
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;)V

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 439
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1900(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    .line 428
    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 440
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 442
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHUTTER_SOUND:I

    .line 443
    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 444
    return-void
.end method
