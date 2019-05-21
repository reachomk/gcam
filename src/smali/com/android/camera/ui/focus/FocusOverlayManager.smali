.class public final Lcom/android/camera/ui/focus/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/focus/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;
    }
.end annotation


# static fields
.field private static AE_REGION_BOX:F

.field private static AF_REGION_BOX:F

.field private static final RESET_TOUCH_FOCUS_DELAY_MILLIS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aeAwbLock:Z

.field private final appController:Lcom/android/camera/app/AppController;

.field private capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private coordinateTransformer:Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

.field private final defaultFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field private displayOrientation:I

.field private focusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private focusAreaSupported:Z

.field private focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private final focusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final handler:Landroid/os/Handler;

.field private initialized:Z

.field listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

.field private lockAeAwbNeeded:Z

.field private meteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private meteringAreaSupported:Z

.field private mirror:Z

.field private overrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private final previewRect:Landroid/graphics/Rect;

.field private previousMoving:Z

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;

.field private state:I

.field private touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

.field private touchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "FocusOverlayMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    .line 52
    const/16 v0, 0xfa0

    sput v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->RESET_TOUCH_FOCUS_DELAY_MILLIS:I

    .line 54
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->AF_REGION_BOX:F

    .line 55
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->AE_REGION_BOX:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/app/AppController;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            "Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;",
            "Z",
            "Landroid/os/Looper;",
            "Lcom/android/camera/ui/focus/FocusRing;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->appController:Lcom/android/camera/app/AppController;

    .line 151
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 152
    new-instance v0, Lcom/android/camera/ui/focus/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/ui/focus/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/ui/focus/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->defaultFocusModes:Ljava/util/List;

    .line 154
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/focus/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 155
    iput-object p4, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    .line 1193
    iput-boolean p5, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->mirror:Z

    .line 1194
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->resetCoordinateTransformer()V

    .line 157
    iput-object p7, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/focus/FocusOverlayManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method private final autoFocus(I)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;->autoFocus()V

    .line 425
    iput p1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    return-void
.end method

.method private final cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->resetTouchFocus()V

    .line 451
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 452
    iput v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 454
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    return-void
.end method

.method private final capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iput v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 460
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    :cond_0
    return-void
.end method

.method private final computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 538
    div-int/lit8 v0, p3, 0x2

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v0

    .line 539
    div-int/lit8 v1, p3, 0x2

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p3

    invoke-static {v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v1

    .line 541
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->coordinateTransformer:Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private final resetCoordinateTransformer()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

    iget-boolean v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->mirror:Z

    iget v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->displayOrientation:I

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    .line 206
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;-><init>(ZILandroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->coordinateTransformer:Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "The coordinate transformer could not be built because the preview rectdid not have a width and height"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 247
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->initialized:Z

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_2

    move v0, v1

    .line 251
    :goto_1
    if-nez v0, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 2574
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 256
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 257
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    if-ne v0, v1, :cond_6

    .line 259
    iput v3, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    goto :goto_0

    .line 260
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    if-nez v0, :cond_0

    .line 3442
    invoke-direct {p0, v3}, Lcom/android/camera/ui/focus/FocusOverlayManager;->autoFocus(I)V

    goto :goto_0
.end method

.method public final getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    return-object v0
.end method

.method public final getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 5

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->overrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->overrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "returning override focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->overrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 508
    :goto_0
    return-object v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-nez v0, :cond_1

    .line 471
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "no capabilities, returning default AUTO focus mode"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 475
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusAreaSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 476
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "in tap to focus, returning AUTO focus mode"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 497
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 501
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "no supported focus mode, falling back to AUTO"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 508
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->appController:Lcom/android/camera/app/AppController;

    .line 481
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_focusmode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    sget-object v2, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    const-string v3, "stored focus setting for camera: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 485
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "focus mode resolved from setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->defaultFocusModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 489
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 490
    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 491
    sget-object v1, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "selected supported focus mode from default list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 482
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 504
    :cond_7
    sget-object v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "no supported focus mode, falling back to current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto/16 :goto_2
.end method

.method public final getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringArea:Ljava/util/List;

    return-object v0
.end method

.method public final isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAutoFocus(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 266
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 270
    if-eqz p1, :cond_1

    .line 271
    iput v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 275
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->capture()V

    .line 299
    :cond_0
    :goto_1
    return-void

    .line 273
    :cond_1
    iput v3, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    goto :goto_0

    .line 276
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    if-eqz p1, :cond_3

    .line 281
    iput v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 287
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/ui/focus/FocusOverlayManager;->RESET_TOUCH_FOCUS_DELAY_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 283
    :cond_3
    iput v3, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    goto :goto_2
.end method

.method public final onAutoFocusMoving(Z)V
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->initialized:Z

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    if-nez v0, :cond_0

    .line 313
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previousMoving:Z

    if-nez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->centerFocusLocation()V

    .line 320
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previousMoving:Z

    goto :goto_0

    .line 317
    :cond_3
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isPassiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    goto :goto_1
.end method

.method public final onCameraReleased()V
    .locals 1

    .prologue
    .line 407
    .line 7403
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 408
    return-void
.end method

.method public final onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 189
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2179
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2180
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2181
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->configurePreviewDimensions$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8HHR55B0____()V

    .line 2182
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->resetCoordinateTransformer()V

    .line 2183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->initialized:Z

    .line 190
    :cond_0
    return-void
.end method

.method public final onPreviewStarted()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    .line 399
    return-void
.end method

.method public final onSingleTapUp(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 354
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->cancelAutoFocus()V

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusAreaSupported:Z

    if-eqz v0, :cond_5

    .line 4334
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    if-nez v0, :cond_4

    .line 4335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    .line 4336
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4340
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 5325
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/focus/FocusOverlayManager;->AF_REGION_BOX:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 4340
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 372
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringAreaSupported:Z

    if-eqz v0, :cond_7

    .line 5344
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringArea:Ljava/util/List;

    if-nez v0, :cond_6

    .line 5345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringArea:Ljava/util/List;

    .line 5346
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5350
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringArea:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 6330
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/focus/FocusOverlayManager;->AE_REGION_BOX:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 5350
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startActiveFocus()V

    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusRing:Lcom/android/camera/ui/focus/FocusRing;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusRing;->setFocusLocation(FF)V

    .line 380
    new-instance v0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->touchTime:J

    .line 387
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 388
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusAreaSupported:Z

    if-eqz v0, :cond_8

    .line 6434
    invoke-direct {p0, v6}, Lcom/android/camera/ui/focus/FocusOverlayManager;->autoFocus(I)V

    goto/16 :goto_0

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    sget v1, Lcom/android/camera/ui/focus/FocusOverlayManager;->RESET_TOUCH_FOCUS_DELAY_MILLIS:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public final overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->overrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 563
    return-void
.end method

.method public final removeMessages()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    return-void
.end method

.method public final resetTouchFocus()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 520
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->initialized:Z

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iput-object v8, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusArea:Ljava/util/List;

    .line 525
    iput-object v8, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringArea:Ljava/util/List;

    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 530
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    if-eqz v0, :cond_0

    .line 531
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    const v2, 0x3a83126f    # 0.001f

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->touchTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Float;)V

    .line 533
    iput-object v8, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    goto :goto_0
.end method

.method public final setAeAwbLock(Z)V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->aeAwbLock:Z

    .line 567
    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->displayOrientation:I

    .line 199
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->resetCoordinateTransformer()V

    .line 200
    return-void
.end method

.method public final updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 2

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->focusAreaSupported:Z

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->meteringAreaSupported:Z

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager;->lockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
