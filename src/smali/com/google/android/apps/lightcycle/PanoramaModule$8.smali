.class final Lcom/google/android/apps/lightcycle/PanoramaModule$8;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/util/Callback;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 511
    .line 1514
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2300(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2802(Lcom/google/android/apps/lightcycle/PanoramaModule;J)J

    .line 1516
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2900(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3000(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/util/activity/ScreenOnController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/activity/ScreenOnController;->setModeExtendedTimeout()V

    .line 1520
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2308(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    .line 1521
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1522
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->PANORAMA_SINGLE_PHOTO_SHUTTER_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 1524
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3202(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z

    .line 1526
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingServiceManager;->suspendProcessing()Z

    .line 511
    :cond_1
    return-void
.end method
