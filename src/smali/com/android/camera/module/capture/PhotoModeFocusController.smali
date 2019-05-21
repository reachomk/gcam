.class public final Lcom/android/camera/module/capture/PhotoModeFocusController;
.super Ljava/lang/Object;
.source "PhotoModeFocusController.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final autoFocusTrigger:Lcom/android/camera/one/AutoFocusTrigger;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final focusController:Lcom/android/camera/ui/focus/FocusController;

.field private final focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

.field private isFocusLockHolding:Z

.field private final longPressListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

.field private final previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

.field private final tapListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

.field private final usageStatistics:Lcom/android/camera/stats/UsageStatistics;

.field private final zoom:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "PhotoFocusControl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/capture/PhotoModeFocusController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/module/FocusPointNormalizer;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/one/AutoFocusTrigger;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/stats/UsageStatistics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/ui/focus/FocusController;",
            "Lcom/android/camera/module/FocusPointNormalizer;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            "Lcom/android/camera/one/AutoFocusTrigger;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/stats/UsageStatistics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->isFocusLockHolding:Z

    .line 105
    new-instance v0, Lcom/android/camera/module/capture/PhotoModeFocusController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/capture/PhotoModeFocusController$1;-><init>(Lcom/android/camera/module/capture/PhotoModeFocusController;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->tapListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    .line 122
    new-instance v0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/capture/PhotoModeFocusController$2;-><init>(Lcom/android/camera/module/capture/PhotoModeFocusController;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->longPressListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 59
    iput-object p1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 60
    iput-object p2, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 61
    iput-object p3, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    .line 62
    iput-object p4, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 63
    iput-object p5, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 64
    iput-object p6, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    .line 65
    iput-object p7, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->autoFocusTrigger:Lcom/android/camera/one/AutoFocusTrigger;

    .line 66
    iput-object p8, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 67
    iput-object p9, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 68
    iput-object p10, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 70
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->tapListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    invoke-virtual {p5, v0}, Lcom/android/camera/ui/wirers/PreviewTapListener;->setListener(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->longPressListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    invoke-virtual {p6, v0}, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->setListener(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;)V

    .line 74
    invoke-interface {p2}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    .line 75
    invoke-interface {p8}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/camera/ui/focus/FocusController;->setAutoFocusSupported(Z)V

    .line 76
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/camera/ui/focus/FocusController;->setPassiveFocusEnabled(Z)V

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/camera/module/capture/PhotoModeFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->focusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/capture/PhotoModeFocusController;Landroid/graphics/Point;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/capture/PhotoModeFocusController;->triggerFocusAndMeterAtPoint(Landroid/graphics/Point;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/capture/PhotoModeFocusController;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->isFocusLockHolding:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/module/capture/PhotoModeFocusController;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->isFocusLockHolding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method

.method private final triggerFocusAndMeterAtPoint(Landroid/graphics/Point;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 87
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    iget-object v2, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 88
    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    .line 87
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/module/FocusPointNormalizer;->normalize(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/android/camera/one/OneCamera$Facing;)Landroid/graphics/PointF;

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->autoFocusTrigger:Lcom/android/camera/one/AutoFocusTrigger;

    new-instance v3, Lcom/google/android/apps/camera/aaa/FocusPoint;

    invoke-direct {v3, v0, p2}, Lcom/google/android/apps/camera/aaa/FocusPoint;-><init>(Landroid/graphics/PointF;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v3}, Lcom/android/camera/one/AutoFocusTrigger;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    .line 97
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 98
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;-><init>(FFFF)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Float;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/wirers/PreviewTapListener;->clearListener()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->clearListener()V

    .line 83
    return-void
.end method
