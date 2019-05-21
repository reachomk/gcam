.class final Lcom/google/android/apps/lightcycle/PanoramaModule$22;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

.field private synthetic val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 0

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone()V
    .locals 3

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->calibrateFieldOfViewDeg(Ljava/lang/String;)F

    move-result v0

    .line 1523
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1524
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FOV Calibration Succeeded!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v1, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4700(Lcom/google/android/apps/lightcycle/PanoramaModule;F)V

    .line 1537
    :goto_0
    return-void

    .line 1532
    :cond_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOV Calibration failed!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1535
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$22;->val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/processing/LightCycleStitchTask;-><init>(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->enqueue(Lcom/android/camera/processing/ProcessingTask;)V

    goto :goto_0
.end method
