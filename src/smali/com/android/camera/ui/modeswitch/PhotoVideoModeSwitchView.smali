.class public Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;
.super Landroid/view/View;
.source "PhotoVideoModeSwitchView.java"

# interfaces
.implements Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;
    }
.end annotation


# instance fields
.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private final iconSize:I

.field private isScrollInProgress:Z

.field private final photoIconDrawable:Landroid/graphics/drawable/Drawable;

.field private photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

.field private photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

.field private previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

.field private final uncoveredPreviewRect:Landroid/graphics/RectF;

.field private final videoIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->uncoveredPreviewRect:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$1;

    invoke-direct {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconSize:I

    .line 129
    sget-object v0, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    invoke-virtual {p0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/CameraMode;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    sget-object v0, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    invoke-virtual {p0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/CameraMode;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->videoIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->videoIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 136
    const v0, 0x7f0b020a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setBackgroundColor(I)V

    .line 1167
    new-instance v0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;)V

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    .line 1168
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipePhotoState()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/PhotoVideoPaginator;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;IZ)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setIconOffset(IZ)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress:Z

    return v0
.end method

.method private final setIconOffset(IZ)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 370
    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 374
    :cond_0
    if-eqz p2, :cond_1

    .line 375
    neg-int p1, p1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 380
    iget v2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconSize:I

    div-int/lit8 v2, v2, 0x2

    .line 381
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    add-int/2addr v4, p1

    sub-int v5, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 386
    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->videoIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private final setIconPosition(FZ)V
    .locals 2

    .prologue
    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setIconOffset(IZ)V

    .line 359
    return-void
.end method


# virtual methods
.method public final fadeOutCover(Z)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setIconPosition(FZ)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setProgress(FZ)V

    .line 412
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 413
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    new-instance v1, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$9;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 436
    :cond_0
    return-void

    .line 412
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getPreviewSwipeGestureStateManager()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    return-object v0
.end method

.method public final isScrollInProgress()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 397
    return-void
.end method

.method public final resetAndHide(Z)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setProgress(FZ)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->endTransition(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoScrollCancelled()V

    .line 197
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public final scrollCover(FZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress:Z

    if-nez v0, :cond_0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoScrollStarted()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress:Z

    .line 211
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setVisibility(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setAlpha(F)V

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setIconPosition(FZ)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PhotoVideoPaginator;->setProgress(FZ)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoScrollProgress(F)V

    .line 216
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoScrollCancelled()V

    .line 218
    iput-boolean v4, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress:Z

    .line 220
    :cond_1
    return-void
.end method

.method public final setCoverState(Z)V
    .locals 1

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipePhotoState()V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipeVideoState()V

    goto :goto_0
.end method

.method public final setPhotoVideoModeSwitchListener(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;)V
    .locals 1

    .prologue
    .line 156
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    iput-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    .line 157
    return-void
.end method

.method public final setPhotoVideoPaginator(Lcom/android/camera/ui/PhotoVideoPaginator;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    new-instance v1, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public final setSwipeEnabled(Z)V
    .locals 1

    .prologue
    .line 443
    .line 2160
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->previewSwipeGestureStateManager:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    .line 443
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setSwipeEnabled(Z)V

    .line 444
    return-void
.end method

.method public final setUncoveredPreviewRect(Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 173
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 176
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 177
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoIconDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->videoIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->videoIconDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    return-void
.end method

.method public final snapCover(FZ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoSnapStarted()V

    .line 226
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0}, Lcom/android/camera/ui/PhotoVideoPaginator;->startTransition()V

    .line 229
    sub-float v0, v2, p1

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 234
    new-array v1, v3, [F

    aput p1, v1, v4

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    new-instance v2, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$3;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$3;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    new-array v2, v3, [I

    aput v0, v2, v4

    aput v4, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    new-instance v2, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$4;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 262
    new-instance v0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$5;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 271
    return-void
.end method

.method public final snapCoverBack(FZ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoSnapStarted()V

    .line 276
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/PhotoVideoPaginator;->endTransition(Z)V

    .line 279
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 284
    new-array v1, v3, [F

    aput p1, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    new-instance v2, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$6;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$6;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    new-array v2, v3, [I

    aput v0, v2, v4

    const/16 v0, 0xfa

    aput v0, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    new-instance v2, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$7;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$7;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 311
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 312
    new-instance v0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$8;-><init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Z)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 327
    return-void
.end method

.method public final startScrolling()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0}, Lcom/android/camera/ui/PhotoVideoPaginator;->startTransition()V

    .line 203
    return-void
.end method

.method public final switchMode(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoModeSwitchListener:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoSwitchStarted(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->endTransition(Z)V

    .line 333
    iput-boolean v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->isScrollInProgress:Z

    .line 334
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
