.class public Lcom/android/camera/ui/PreviewOverlay;
.super Landroid/view/View;
.source "PreviewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;,
        Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;,
        Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private currA11yZoomLevel:I

.field private currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isTouchEnabled:Z

.field private isViewfinderGestureManagerEnabled:Z

.field private final locationInWindow:[I

.field private maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private onPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

.field private snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

.field private touchListener:Landroid/view/View$OnTouchListener;

.field private zoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "PreviewOverlay"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->locationInWindow:[I

    .line 50
    iput-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 51
    iput-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->touchListener:Landroid/view/View$OnTouchListener;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    .line 60
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->isTouchEnabled:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->isViewfinderGestureManagerEnabled:Z

    .line 71
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 81
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 87
    iput v2, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    .line 91
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$1;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewOverlay;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 160
    return-void

    .line 49
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PreviewOverlay;F)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewOverlay;->updateZoom(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    return-object v0
.end method

.method public static getMinZoom()F
    .locals 1

    .prologue
    .line 248
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private final getZoomAtLevel(I)F
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 263
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 264
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 266
    add-int/lit8 v0, p1, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v3

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v1, v2

    .line 264
    goto :goto_1
.end method

.method private final updateZoom(F)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 163
    .line 1277
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1280
    sub-float v1, p1, v3

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 1281
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v3

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    div-float v0, v1, v0

    add-float/2addr v0, v3

    .line 1282
    float-to-int v0, v0

    .line 163
    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 165
    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomValueChanged(F)V

    goto :goto_2

    :cond_0
    move v0, v2

    .line 1277
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1278
    goto :goto_1

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method public final addZoomChangedListener(Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    invoke-interface {p1}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onMaxZoomChanged$5132ILG_()V

    .line 190
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/PreviewOverlay$2;-><init>(Lcom/android/camera/ui/PreviewOverlay;Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 197
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$3;

    invoke-direct {v0}, Lcom/android/camera/ui/PreviewOverlay$3;-><init>()V

    goto :goto_0
.end method

.method public final getCurrentZoom()F
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getMaxZoom()F
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getScaleListener()Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->draw(Landroid/graphics/Canvas;)V

    .line 349
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 339
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->locationInWindow:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewOverlay;->getLocationInWindow([I)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->locationInWindow:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->locationInWindow:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setDrawOrigin(II)V

    .line 343
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 305
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->isTouchEnabled:Z

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 309
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->isViewfinderGestureManagerEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->onPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->onPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;->onPreviewTouched(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->touchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    goto :goto_0
.end method

.method public final removeZoomChangedListener(Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 377
    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->touchListener:Landroid/view/View$OnTouchListener;

    .line 378
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    .line 379
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public final setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 362
    :cond_0
    return-void
.end method

.method public final setOnPreviewTouchedListener(Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay;->onPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    .line 335
    return-void
.end method

.method public final setPreviewRect(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setPreviewRect(Landroid/graphics/RectF;)V

    .line 572
    return-void
.end method

.method public final setSnackbarController(Lcom/android/camera/ui/snackbar/SnackbarController;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay;->snackbarController:Lcom/android/camera/ui/snackbar/SnackbarController;

    .line 327
    return-void
.end method

.method public final setTouchEnabled(Z)V
    .locals 0

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->isTouchEnabled:Z

    .line 293
    return-void
.end method

.method public final setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay;->touchListener:Landroid/view/View$OnTouchListener;

    .line 370
    return-void
.end method

.method public final setViewfinderGestureManagerEnabled(Z)V
    .locals 0

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->isViewfinderGestureManagerEnabled:Z

    .line 576
    return-void
.end method

.method public final setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/PreviewOverlay;->addZoomChangedListener(Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->zoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-static {v1, p1, p2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$400(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;FF)V

    .line 182
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->maxZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 183
    return-object v0
.end method

.method public final zoomIn()F
    .locals 2

    .prologue
    const/4 v0, 0x7

    .line 222
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    if-lt v1, v0, :cond_0

    .line 223
    :goto_0
    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PreviewOverlay;->getZoomAtLevel(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 223
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final zoomOut()F
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 235
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    if-gt v1, v0, :cond_0

    .line 236
    :goto_0
    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PreviewOverlay;->getZoomAtLevel(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currentZoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 236
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->currA11yZoomLevel:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
