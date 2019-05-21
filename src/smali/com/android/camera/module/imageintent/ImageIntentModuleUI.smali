.class public final Lcom/android/camera/module/imageintent/ImageIntentModuleUI;
.super Ljava/lang/Object;
.source "ImageIntentModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;
    }
.end annotation


# instance fields
.field private final appUI:Lcom/android/camera/ui/CameraAppUI;

.field private final countdownView:Lcom/android/camera/ui/CountDownView;

.field private final intentReviewImageView:Landroid/widget/ImageView;

.field private final listener:Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

.field private final previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private final previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

.field private final rootView:Landroid/view/View;

.field private final zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/CameraAppUI;Landroid/view/LayoutInflater;Landroid/view/View;Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 238
    new-instance v0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$2;-><init>(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 69
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    .line 70
    iput-object p4, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->listener:Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

    .line 71
    iput-object p3, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f110089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    const v1, 0x7f040028

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 79
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProgressOverlay;

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

    .line 80
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Lcom/android/camera/ui/ProgressOverlay;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->listener:Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

    return-object v0
.end method


# virtual methods
.method public final applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 100
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;Z)V

    .line 101
    return-void
.end method

.method public final cancelCountDown()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 176
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 177
    return-void
.end method

.method public final freezeScreenUntilPreviewReady()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->freezeScreenUntilUiIsReady(Lcom/google/common/base/Optional;)V

    .line 230
    return-void
.end method

.method public final getPreviewSurfaceSize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final initializeZoom(F)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 141
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->getMinZoom()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final isCountingDown()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public final onModulePaused()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 121
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 122
    return-void
.end method

.method public final onModuleResumed()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 113
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 114
    return-void
.end method

.method public final onPreviewStarted()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onPreviewStarted()V

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->fadeOutPhotoVideoCover(Z)V

    .line 131
    return-void
.end method

.method public final setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 184
    return-void
.end method

.method public final setShutterButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 146
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 147
    return-void
.end method

.method public final showPictureCaptureUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 216
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 220
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->enableModeOptions()V

    .line 221
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    .line 222
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraAppUI;->setCameraButtonEnabled(Z)V

    .line 225
    return-void
.end method

.method public final showPictureReviewUI(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->intentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 205
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->hideModeOptions()V

    .line 206
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->disableModeOptions()V

    .line 207
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 208
    return-void
.end method

.method public final showViewfinderCover()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 234
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    sget-object v1, Lcom/android/camera/util/CameraMode;->CAPTURE_INTENT:Lcom/android/camera/util/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->showViewfinderCover(Lcom/android/camera/util/CameraMode;)V

    .line 235
    return-void
.end method

.method public final startCountdown(I)V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 166
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->hideModeOptions()V

    .line 167
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->transitionToCancel()V

    .line 168
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 169
    return-void
.end method

.method public final startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
