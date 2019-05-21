.class final Lcom/google/android/apps/lightcycle/PanoramaModule$7;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isTakingPhoto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    :cond_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo is being taken, ignoring undo button."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2208(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2300(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_3

    .line 485
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t undo capture, no images captured."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_3
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->canUndo()Z

    move-result v0

    if-nez v0, :cond_4

    .line 489
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t undo capture, LightCycle not ready to undo."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2300(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    if-lez v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2310(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->undoLastCapturedPhoto()V

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisible(Z)V

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2300(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2700(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0
.end method
