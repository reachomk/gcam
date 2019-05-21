.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setAddNextFrame()V

    .line 657
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1702(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPhotoFinished()V

    .line 665
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setImageData([B)V

    .line 668
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->returnCallbackBuffer([B)V

    goto :goto_0
.end method
