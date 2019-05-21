.class public abstract Lcom/android/camera/module/ForwardingModuleController;
.super Ljava/lang/Object;
.source "ForwardingModuleController.java"

# interfaces
.implements Lcom/android/camera/module/ModuleController;


# instance fields
.field private delegate:Lcom/android/camera/module/ModuleController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->close()V

    .line 58
    return-void
.end method

.method protected abstract create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPA3DTN78SJFDHM6ASHR(Lcom/android/camera/app/AppController;)Lcom/android/camera/module/ModuleController;
.end method

.method public final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    return-object v0
.end method

.method public final getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getPeekAccessibilityString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V

    .line 88
    return-void
.end method

.method public final init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/camera/module/ForwardingModuleController;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPA3DTN78SJFDHM6ASHR(Lcom/android/camera/app/AppController;)Lcom/android/camera/module/ModuleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    .line 26
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/app/AppController;)V

    .line 28
    return-void
.end method

.method public final isBurstSupported()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->isBurstSupported()Z

    move-result v0

    return v0
.end method

.method public final isSupportingSurfaceViewPreviewCallbacks()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->isSupportingSurfaceViewPreviewCallbacks()Z

    move-result v0

    return v0
.end method

.method public final isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->isUsingBottomBar()Z

    move-result v0

    return v0
.end method

.method public final isZoomSupported()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public final onBackPressed()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public final onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 82
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/ModuleController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/ModuleController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLayoutOrientationChanged(Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->onLayoutOrientationChanged(Z)V

    .line 70
    return-void
.end method

.method public final onPreviewVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->onPreviewVisibilityChanged(I)V

    .line 64
    return-void
.end method

.method public final onShutterButtonClick()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->onShutterButtonClick()V

    .line 130
    return-void
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->onShutterButtonFocus(Z)V

    .line 118
    return-void
.end method

.method public final onShutterButtonLongPressRelease()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->onShutterButtonLongPressRelease()V

    .line 142
    return-void
.end method

.method public final onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/android/camera/module/ModuleController;->onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V

    .line 124
    return-void
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->pause()V

    .line 46
    return-void
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->resume()V

    .line 40
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->start()V

    .line 34
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/android/camera/module/ForwardingModuleController;->delegate:Lcom/android/camera/module/ModuleController;

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->stop()V

    .line 52
    return-void
.end method
