.class final Lcom/android/camera/module/capture/CaptureModule$24;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ui/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 6

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3100(Lcom/android/camera/module/capture/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v0

    .line 1449
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ButtonManager;->disableButton(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3200(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraFacingSetting;->isFacingBack()Z

    move-result v1

    .line 1455
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3400(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1456
    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModule;->access$3300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUOR1E1Q7ASJ55T1M2S3KELP6AJBFCHQMOP9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/ui/DetailsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    .line 1455
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1459
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3500(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->cameraChange()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->create()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/CameraChangeSession;

    .line 1463
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModule;->access$3600(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1464
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModule;->access$3600(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1465
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/module/capture/CaptureModule;->access$3602(Lcom/android/camera/module/capture/CaptureModule;Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1468
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModule;->access$3200(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/settings/CameraFacingSetting;->isFacingBack()Z

    move-result v2

    .line 1469
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1470
    iget-object v4, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1472
    invoke-static {v4}, Lcom/android/camera/module/capture/CaptureModule;->access$300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/CameraAppUI;->getShutterButtonClickEnabledObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v4

    new-instance v5, Lcom/android/camera/module/capture/CaptureModule$24$1;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/camera/module/capture/CaptureModule$24$1;-><init>(Lcom/android/camera/stats/CameraChangeSession;ZZLjava/util/concurrent/atomic/AtomicReference;)V

    .line 1471
    invoke-static {v4, v5}, Lcom/google/android/apps/camera/async/Observables;->addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 1470
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1498
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-static {v1, v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3602(Lcom/android/camera/module/capture/CaptureModule;Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1499
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3700(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModule;->access$3600(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1501
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Start to switch camera. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$24;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$500(Lcom/android/camera/module/capture/CaptureModule;Z)V

    goto/16 :goto_0
.end method
