.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACD9GNCO9FDHGMSPPFAPNMIP1R()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

.field private synthetic val$c:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->val$c:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1304(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Past trial succeeded so nothing to do, shouldn\'t have gotten to this."

    .line 557
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    return-void

    .line 563
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->val$c:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 569
    :cond_2
    if-eqz p1, :cond_3

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$802(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;D)D

    .line 579
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    goto :goto_0

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const-wide v2, -0x3f3c7d0000000000L    # -9990.0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$802(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;D)D

    goto :goto_1
.end method
