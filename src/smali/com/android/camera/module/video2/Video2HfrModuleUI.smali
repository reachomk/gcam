.class public final Lcom/android/camera/module/video2/Video2HfrModuleUI;
.super Lcom/android/camera/module/video2/Video2ModuleUI;
.source "Video2HfrModuleUI.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Landroid/view/View;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/controller/VideoRecordingState;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/module/video2/Video2ModuleUI;-><init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Landroid/view/View;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/controller/VideoRecordingState;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final buildStorageDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/module/video2/Video2HfrModuleUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video2/Video2HfrModuleUI$1;-><init>(Lcom/android/camera/module/video2/Video2HfrModuleUI;)V

    return-object v0
.end method

.method protected final buildStorageForceBackToPhotoModeDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/module/video2/Video2HfrModuleUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video2/Video2HfrModuleUI$2;-><init>(Lcom/android/camera/module/video2/Video2HfrModuleUI;)V

    return-object v0
.end method

.method protected final setModeSwitchEnabled(ZZ)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Lcom/android/camera/module/video2/Video2ModuleUI;->setModeSwitchEnabled(ZZ)V

    .line 59
    return-void
.end method

.method public final showViewfinderCover()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2HfrModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO_HFR:Lcom/android/camera/util/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->showViewfinderCover(Lcom/android/camera/util/CameraMode;)V

    .line 64
    return-void
.end method
