.class final Lcom/android/camera/module/imageintent/state/StateOpeningCamera$6;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$6;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFlashSupported()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$6;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public final isFrontCameraSupported()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$6;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$2200(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method

.method public final isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public final isHdrSupported()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method
