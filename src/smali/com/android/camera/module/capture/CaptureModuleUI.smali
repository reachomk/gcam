.class public final Lcom/android/camera/module/capture/CaptureModuleUI;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;
    }
.end annotation


# instance fields
.field private countdownView:Lcom/android/camera/ui/CountDownView;

.field private final faceToLegacyFaceConverter:Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;

.field private final faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

.field private focusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final layoutParent:Landroid/view/View;

.field private final listener:Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;

.field private final optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

.field private previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

.field private final zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "CaptureModuleUI"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;Lcom/android/camera/ui/PreviewContentAdapter;Lcom/android/camera/ui/FaceViewAdapter;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;

    invoke-direct {v0}, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->faceToLegacyFaceConverter:Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;

    .line 59
    new-instance v0, Lcom/android/camera/module/capture/CaptureModuleUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/capture/CaptureModuleUI$1;-><init>(Lcom/android/camera/module/capture/CaptureModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 83
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->listener:Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;

    .line 85
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    .line 86
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->layoutInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->layoutParent:Landroid/view/View;

    .line 88
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/module/capture/CaptureModuleUI;->resume()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/capture/CaptureModuleUI;)Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->listener:Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;

    return-object v0
.end method


# virtual methods
.method public final cancelCountDown()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 144
    return-void
.end method

.method public final cancelPictureTakingProgress()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProgressOverlay;->cancelProgress()V

    .line 167
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setTouchEnabled(Z)V

    .line 168
    return-void
.end method

.method public final initializeZoom(F)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 178
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 180
    return-object v0
.end method

.method public final isCountingDown()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public final resume()V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->layoutParent:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 99
    const v0, 0x7f1100b5

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040028

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    const v0, 0x7f1100bd

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 103
    const v0, 0x7f1100e0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProgressOverlay;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

    .line 104
    const v0, 0x7f1100b2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 105
    const v0, 0x7f1100e2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    .line 106
    return-void
.end method

.method public final setAutoHdrPlusIndicator$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNK2TBKDT36OOBJD1468SIGDHQN6H35CDKN6QBFDOTLKAAM(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)V
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->setHdrPlusHint(Z)V

    .line 222
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 130
    return-void
.end method

.method public final setFaces$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRREA9IN6TBCEGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H362OR9DPJJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UKR9F9IJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSEQ955B0____(Lcom/google/android/libraries/smartburst/utils/handles/Handles;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/google/android/apps/camera/util/layout/Orientation;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_2

    .line 195
    array-length v0, v2

    new-array v3, v0, [Landroid/hardware/Camera$Face;

    .line 196
    new-instance v0, Landroid/graphics/RectF;

    .line 198
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->getCropRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    .line 200
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    .line 197
    invoke-static {v0, v4, v5}, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->toTransformMatrix(Landroid/graphics/RectF;II)Landroid/graphics/Matrix;

    move-result-object v4

    move v0, v1

    .line 201
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 202
    iget-object v5, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->faceToLegacyFaceConverter:Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;

    aget-object v6, v2, v0

    .line 203
    invoke-virtual {v5, v4, v6}, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->toLegacyFace(Landroid/graphics/Matrix;Landroid/hardware/camera2/params/Face;)Landroid/hardware/Camera$Face;

    move-result-object v5

    aput-object v5, v3, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    invoke-virtual {v0, v1, p5, p4}, Lcom/android/camera/ui/FaceViewAdapter;->configureOrientation(ZILcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->faceViewAdapter:Lcom/android/camera/ui/FaceViewAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FaceViewAdapter;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 209
    :cond_2
    return-void
.end method

.method public final setPictureTakingProgress(I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->progressOverlay:Lcom/android/camera/ui/ProgressOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressOverlay;->setProgress(I)V

    .line 153
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setTouchEnabled(Z)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimationsFast()V

    .line 157
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setTouchEnabled(Z)V

    goto :goto_0
.end method

.method public final startCountdown(I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI;->countdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 123
    return-void
.end method
