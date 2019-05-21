.class final Lcom/google/android/apps/refocus/RefocusModule$13;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken$51DK4J33DTMIUOBECHP6UQB45TINGBR3C5MMASJ168NN0RRIEHGM4QBCD5Q7IBQ3C5MMASJ185JMARJK4H1M2RB5E9GL0SJFF1SJMAAM([B)V
    .locals 5

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    invoke-static {}, Lcom/google/android/apps/refocus/RefocusModule;->access$1900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPictureTaken called after camera released"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    new-instance v2, Lcom/google/android/apps/refocus/image/ColorImage;

    .line 734
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    .line 735
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    .line 736
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoFormat()I

    move-result v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fromImageFormat(I)I

    move-result v0

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/google/android/apps/refocus/image/ColorImage;-><init>(III[B)V

    .line 732
    invoke-static {v1, v2}, Lcom/google/android/apps/refocus/RefocusModule;->access$2002(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/image/ColorImage;)Lcom/google/android/apps/refocus/image/ColorImage;

    .line 738
    new-instance v0, Lcom/google/android/apps/refocus/RefocusModule$13$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/refocus/RefocusModule$13$1;-><init>(Lcom/google/android/apps/refocus/RefocusModule$13;)V

    .line 743
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/RefocusModule$13$1;->start()V

    .line 744
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$2100(Lcom/google/android/apps/refocus/RefocusModule;)V

    .line 745
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/ui/focus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->resetTouchFocus()V

    goto :goto_0
.end method
