.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$400(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 129
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideoCamcorderDeviceStatechart()Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;

    iget-object v1, v1, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 130
    invoke-static {v1}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$200(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;

    iget-object v3, v3, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 131
    invoke-static {v3}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$300(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/statecharts/StateBase;->camcorderOpened(ZZLcom/android/camera/one/OneCameraCharacteristics;)V

    .line 132
    return-void
.end method
