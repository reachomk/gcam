.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$7$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$1600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideoCamcorderDeviceStatechart()Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->camcorderClosed()V

    .line 240
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7$1;->this$1:Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$1700(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->showViewfinderCover()V

    .line 241
    return-void
.end method
