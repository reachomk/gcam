.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
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
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 6

    .prologue
    .line 273
    .line 1276
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$800(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1279
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;)V

    .line 1280
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1288
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/settings/CameraFacingSetting;->get()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    .line 1289
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v4

    .line 1291
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    .line 1293
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$7;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 1295
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 273
    return-object v0
.end method
