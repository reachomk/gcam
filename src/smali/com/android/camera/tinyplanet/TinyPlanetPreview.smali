.class public Lcom/android/camera/tinyplanet/TinyPlanetPreview;
.super Landroid/view/View;
.source "TinyPlanetPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;
    }
.end annotation


# instance fields
.field private lock:Ljava/util/concurrent/locks/Lock;

.field private paint:Landroid/graphics/Paint;

.field private preview:Landroid/graphics/Bitmap;

.field private previewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->paint:Landroid/graphics/Paint;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->size:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->paint:Landroid/graphics/Paint;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->size:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->paint:Landroid/graphics/Paint;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->size:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->lock:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->preview:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    :cond_1
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->previewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    if-eqz v0, :cond_0

    .line 90
    sub-int v0, p4, p2

    .line 91
    sub-int v1, p5, p3

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->previewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->previewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    invoke-interface {v1, v0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;->onSizeChanged(I)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;Ljava/util/concurrent/locks/Lock;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->preview:Landroid/graphics/Bitmap;

    .line 52
    iput-object p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->lock:Ljava/util/concurrent/locks/Lock;

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->invalidate()V

    .line 54
    return-void
.end method

.method public final setPreviewSizeChangeListener(Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->previewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    .line 61
    return-void
.end method
