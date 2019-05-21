.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateOpeningCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 11

    .prologue
    .line 108
    check-cast p1, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;

    .line 1111
    invoke-virtual {p1}, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;->getCamcorder()Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v3

    .line 1113
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$000(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-interface {v3}, Lcom/android/camera/camcorder/CamcorderDevice;->close()V

    .line 1116
    new-instance v0, Lcom/android/camera/module/videointent/state/StateBackgroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1117
    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$100(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/videointent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 1116
    :goto_0
    return-object v0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$500(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 1121
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3$1;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;)V

    .line 1122
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1135
    new-instance v0, Lcom/android/camera/module/videointent/state/StateStartingPreview;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1137
    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$100(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1139
    invoke-static {v4}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$600(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1140
    invoke-static {v5}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$700(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1141
    invoke-static {v6}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$300(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1142
    invoke-static {v7}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$800(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1143
    invoke-static {v8}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$900(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1144
    invoke-static {v9}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$1000(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/module/video2/Video2OrientationCalculator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1145
    invoke-static {v10}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$1100(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/module/videointent/state/StateStartingPreview;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V

    goto :goto_0
.end method
