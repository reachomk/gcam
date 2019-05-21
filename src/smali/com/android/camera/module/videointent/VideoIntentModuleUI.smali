.class public final Lcom/android/camera/module/videointent/VideoIntentModuleUI;
.super Ljava/lang/Object;
.source "VideoIntentModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;
    }
.end annotation


# instance fields
.field private final activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

.field private final appUI:Lcom/android/camera/ui/CameraAppUI;

.field private final elapsedTimeFormat:Lcom/google/android/apps/camera/util/time/ElapsedTimeFormat;

.field private final focusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private listener:Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

.field private final previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private final previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final rootView:Landroid/view/View;

.field private final videoUI:Lcom/android/camera/module/videointent/VideoUI;

.field private final zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "VideoUI"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/module/videointent/VideoController;Landroid/view/View;Lcom/android/camera/ui/CameraAppUI;Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;Lcom/android/camera/ui/controller/VideoIntentStatechart;)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI$1;-><init>(Lcom/android/camera/module/videointent/VideoIntentModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 222
    new-instance v0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI$2;-><init>(Lcom/android/camera/module/videointent/VideoIntentModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 64
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 66
    iput-object p3, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->rootView:Landroid/view/View;

    .line 67
    iput-object p5, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->listener:Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

    .line 68
    iput-object p4, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    .line 69
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 74
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->rootView:Landroid/view/View;

    const v1, 0x7f1100b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 75
    new-instance v0, Lcom/android/camera/module/videointent/VideoUI;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-direct {v0, v1, p2, p3}, Lcom/android/camera/module/videointent/VideoUI;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/module/videointent/VideoController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    .line 77
    new-instance v0, Lcom/google/android/apps/camera/util/time/ElapsedTimeFormat;

    invoke-direct {v0}, Lcom/google/android/apps/camera/util/time/ElapsedTimeFormat;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->elapsedTimeFormat:Lcom/google/android/apps/camera/util/time/ElapsedTimeFormat;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/videointent/VideoIntentModuleUI;)Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->listener:Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

    return-object v0
.end method


# virtual methods
.method public final changeBottomBarToVideoStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->changeBottomBarToVideoStart(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showBottomBarSideControls()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 155
    return-void
.end method

.method public final getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public final getPreviewSurfaceSize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraAppUI;->getSurfaceHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final hideReviewControls()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoUI;->hideReviewControls()V

    .line 167
    return-void
.end method

.method public final initializeZoom(F)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->getMinZoom()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final onModulePaused()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 196
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 197
    return-void
.end method

.method public final onModuleResumed()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 188
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->previewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 189
    return-void
.end method

.method public final onPreviewStarted(Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraAppUI;->applyVideoModuleSpecs(Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onPreviewStarted()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->fadeOutPhotoVideoCover(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonImportantToA11y(Z)V

    .line 89
    return-void
.end method

.method public final setRecordingTime(J)V
    .locals 3

    .prologue
    .line 170
    invoke-static {p1, p2}, Lcom/google/android/apps/camera/util/time/ElapsedTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/videointent/VideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public final showRecordingUI(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoUI;->cancelAnimations()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoUI;->hidePassiveFocusIndicator()V

    .line 136
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->hideBottomBarSideControls()V

    .line 137
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraAppUI;->changeBottomBarToVideoStop(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->setModeSwitchEnabled(Z)V

    .line 140
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->hideModeOptions()V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/videointent/VideoUI;->showRecordingUI(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 149
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showCloseButton()V

    goto :goto_0
.end method

.method public final showReviewControls()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoUI;->showReviewControls()V

    .line 163
    return-void
.end method

.method public final showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->videoUI:Lcom/android/camera/module/videointent/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/videointent/VideoUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 159
    return-void
.end method

.method public final showViewfinderCover()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 98
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO_INTENT:Lcom/android/camera/util/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->showViewfinderCover(Lcom/android/camera/util/CameraMode;)V

    .line 99
    return-void
.end method
