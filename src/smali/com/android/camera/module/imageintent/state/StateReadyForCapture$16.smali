.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
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
    .line 520
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isVisibleLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Visible lifecycle closed, not displaying rest of UI"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2900(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->cancelCountDown()V

    .line 528
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->showPictureCaptureUI()V

    .line 529
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 530
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 531
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$16;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 533
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 535
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    .line 537
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxZoom()F

    move-result v0

    .line 532
    invoke-virtual {v2, v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->initializeZoom(F)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 529
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    goto :goto_0
.end method
