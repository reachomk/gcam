.class final Lcom/google/android/apps/refocus/RefocusModule$3;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewStarted()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    .line 240
    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/ui/focus/FocusOverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    .line 241
    invoke-static {v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/RefocusModule;->cancelAutoFocus()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$900(Lcom/google/android/apps/refocus/RefocusModule;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/ui/focus/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1000(Lcom/google/android/apps/refocus/RefocusModule;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onPreviewStarted()V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/ui/focus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->onPreviewStarted()V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    new-instance v1, Lcom/google/android/apps/refocus/capture/Tracker;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v2}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getFocalLength35mm()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/refocus/capture/Tracker;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$1202(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/capture/Tracker;)Lcom/google/android/apps/refocus/capture/Tracker;

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$002$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUSJ5CPNM6TBJ5T96APJFCDQN6JBFCHQMOP94ADQ62T357CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNN4PB6DTHNASPFA9IMCRR3ELPKQRR4ELM6A92JEHGN8P9R(Lcom/google/android/apps/refocus/RefocusModule;I)I

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ui/ButtonManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ButtonManager;->enableButton(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$3;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    goto/16 :goto_0
.end method
