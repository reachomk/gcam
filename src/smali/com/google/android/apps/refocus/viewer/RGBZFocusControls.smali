.class public Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;
.super Landroid/widget/FrameLayout;
.source "RGBZFocusControls.java"

# interfaces
.implements Lcom/google/android/apps/refocus/ViewerActivity$ProgressListener;
.implements Lcom/google/android/apps/refocus/viewer/RGBZView$ImageRectChangedListener;
.implements Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;,
        Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

.field private clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

.field private final clingWidth:I

.field private editingFinishedlistener:Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;

.field private focusController:Lcom/android/camera/ui/focus/FocusController;

.field private focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

.field private focusSound:Lcom/android/camera/ui/focus/FocusSound;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final imageRect:Landroid/graphics/RectF;

.field private lastFocusPoint:Landroid/graphics/Point;

.field private refocusControlBar:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "RGBZFcsCtrls"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->imageRect:Landroid/graphics/RectF;

    .line 90
    iput v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->width:I

    .line 91
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    .line 99
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->editingFinishedlistener:Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    const v1, 0x7f0c0194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 181
    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    new-instance v0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$1;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)V

    .line 198
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->gestureDetector:Landroid/view/GestureDetector;

    .line 199
    invoke-virtual {p0, v4}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setWillNotDraw(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingWidth:I

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "should_show_cling_for_refocus_scrubber"

    const/4 v2, 0x1

    .line 203
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingWidth:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 207
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    new-instance v1, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    .line 209
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_0
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingView;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/ui/focus/FocusRingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusRingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v0, Lcom/android/camera/ui/focus/FocusSound;

    check-cast p1, Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-virtual {p1}, Lcom/google/android/apps/refocus/ViewerActivity;->getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v1

    sget v2, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->FOCUS_SOUND:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusSound;-><init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusSound:Lcom/android/camera/ui/focus/FocusSound;

    .line 218
    new-instance v0, Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusSound:Lcom/android/camera/ui/focus/FocusSound;

    new-instance v3, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/focus/FocusSound;Lcom/google/android/apps/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->addView(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->width:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->imageRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;ZII)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setFocusPoint(ZII)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->updateFromClient()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->refocusControlBar:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;)Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->refocusControlBar:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;F)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->updateFocusIndicator(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->editingFinishedlistener:Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;

    return-object v0
.end method

.method private final setBokeh(ZF)V
    .locals 1

    .prologue
    .line 305
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    invoke-interface {v0, p2}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;->onBokehChanged(F)V

    .line 309
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->updateFocusIndicator(F)V

    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->invalidate()V

    .line 311
    return-void
.end method

.method private final setFocusPoint(ZII)V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->lastFocusPoint:Landroid/graphics/Point;

    .line 367
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    invoke-interface {v0, p2, p3}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;->onFocusPointChanged(II)V

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->lastFocusPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->lastFocusPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 373
    :cond_0
    return-void
.end method

.method private final updateFocusIndicator(F)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 339
    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    .line 340
    :cond_0
    sget-object v2, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Bokeh indicator value was out of (0..1) range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    :goto_0
    move p1, v0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusRingView;->isActiveFocusRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusRingView:Lcom/android/camera/ui/focus/FocusRingView;

    .line 345
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusRingView;->isPassiveFocusRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->lastFocusPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->lastFocusPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->lastFocusPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1355
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v1, v2

    .line 350
    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setFocusRatio(F)V

    .line 351
    return-void

    :cond_3
    move v0, v1

    .line 341
    goto :goto_0
.end method

.method private final updateFromClient()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    invoke-interface {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;->getBokeh()F

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setBokeh(ZF)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    invoke-interface {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;->getFocusPoint()[F

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    aget v1, v0, v3

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setFocusPoint(ZII)V

    goto :goto_0
.end method


# virtual methods
.method public final getCurrentBokeh()F
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    invoke-interface {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;->getBokeh()F

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBokehChanged(F)V
    .locals 3

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setBokeh(ZF)V

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->refocusControlBar:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->removeSliderUpdateListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->removeView(Landroid/view/View;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->clingView:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "should_show_cling_for_refocus_scrubber"

    const/4 v2, 0x0

    .line 325
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    :cond_0
    return-void
.end method

.method public final onImageRectChanged(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->focusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 379
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 278
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 279
    sub-int v0, p4, p2

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->width:I

    .line 280
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->updateFromClient()V

    .line 281
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public final setEditingFinishedListener(Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->editingFinishedlistener:Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;

    .line 386
    return-void
.end method

.method public final setFocusClient(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->client:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;

    .line 230
    new-instance v0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method
