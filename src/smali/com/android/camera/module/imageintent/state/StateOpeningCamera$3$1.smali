.class final Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

.field private synthetic val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$500(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 128
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getCameraDeviceStatechart()Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iget-object v1, v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 130
    invoke-static {v1}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iget-object v2, v2, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$400(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/statecharts/StateBase;->cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$800(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 132
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iget-object v1, v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 133
    invoke-static {v1}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$600(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    iget-object v2, v2, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$700(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V

    .line 134
    return-void
.end method
