.class public Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;
.super Landroid/view/View;
.source "FilmstripTransitionThumbnailView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapPaint:Landroid/graphics/Paint;

.field private currentRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "FsTransThumbnail"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->currentRadius:F

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setWillNotDraw(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->currentRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 71
    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->currentRadius:F

    iget-object v3, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    .line 38
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 41
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->requestLayout()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 47
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 48
    return-void
.end method

.method public final setRadius(F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->currentRadius:F

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->invalidate()V

    .line 58
    return-void
.end method
