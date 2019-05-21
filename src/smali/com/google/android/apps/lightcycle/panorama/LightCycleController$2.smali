.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;
.super Landroid/os/AsyncTask;
.source "LightCycleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACD9GNCO9FDHGMSPPFAPNMIP1R()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 507
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-object v8

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    .line 512
    if-eqz v2, :cond_0

    .line 520
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 521
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 523
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-result-object v3

    .line 1229
    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v3

    .line 1230
    const/4 v4, 0x6

    aget v3, v3, v4

    neg-float v3, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    .line 1231
    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, v3

    .line 523
    invoke-static {v1, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;D)D

    .line 527
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v1

    if-nez v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)D

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$802(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;D)D

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 533
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)D

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 534
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 535
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    invoke-static {v4, v5}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->shouldAutoFocusPitchChange(D)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 537
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 541
    :goto_1
    if-eqz v1, :cond_5

    .line 542
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Auto-focusing."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 544
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1302(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;I)I

    .line 545
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 549
    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 551
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 550
    invoke-virtual {v2, v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    .line 537
    goto :goto_1

    .line 590
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mFocusRetrySemaphore.acquire() InterruptedException "

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACD9GNCO9FDHGMSPPFAPNMIP1R()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
