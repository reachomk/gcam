.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;
.super Ljava/lang/Thread;
.source "LightCycleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->undoLastCapturedPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1221
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->undoAddImage()Z

    .line 1222
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->finalizeHitTargets()V

    .line 1223
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->undoAddImage()I

    move-result v0

    .line 1224
    if-nez v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reset()V

    .line 1228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL96ARJ4CLP6ASHR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEO_(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)I

    move-result v0

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 1229
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL96ARJ4CLP6ASHR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEO_(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)I

    move-result v0

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->CALIBRATION$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v0, v1, :cond_1

    .line 1230
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1231
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1232
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->initWithRotation([F)V

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/Reticle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->resetCountdown()V

    .line 1235
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetVelocityLimit()V

    .line 1236
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z

    .line 1237
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showShortMessage(I)V

    .line 1241
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1242
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 1243
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getCurrentPhotoIndex()I

    move-result v2

    .line 1242
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->updateCalibrationMessage(ZI)V

    .line 1245
    :cond_3
    return-void
.end method
