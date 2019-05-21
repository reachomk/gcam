.class final Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;
.super Ljava/lang/Object;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/RoundedThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RevealRequest"
.end annotation


# instance fields
.field private accessibilityString:Ljava/lang/String;

.field private animationDisabled:Z

.field private rippleAnimationFinished:Z

.field private thumbnailAnimationFinished:Z

.field private thumbnailPaint:Landroid/graphics/Paint;

.field private viewSize:F


# direct methods
.method private constructor <init>(FLjava/lang/String;)V
    .locals 0

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    iput-object p2, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->accessibilityString:Ljava/lang/String;

    .line 951
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->viewSize:F

    .line 952
    return-void
.end method

.method static createAnimatedRevealRequest(FLjava/lang/String;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;
    .locals 1

    .prologue
    .line 939
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;-><init>(FLjava/lang/String;)V

    return-object v0
.end method

.method static createNonAnimatedRevealRequest(FLjava/lang/String;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;
    .locals 2

    .prologue
    .line 927
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;-><init>(FLjava/lang/String;)V

    .line 928
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->animationDisabled:Z

    .line 929
    return-object v0
.end method


# virtual methods
.method public final finishRippleAnimation()V
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->rippleAnimationFinished:Z

    .line 1041
    return-void
.end method

.method public final finishThumbnailAnimation()V
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailAnimationFinished:Z

    .line 1034
    return-void
.end method

.method public final getAccessibilityString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->accessibilityString:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final isAnimationDisabled()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->animationDisabled:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailAnimationFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->rippleAnimationFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setThumbnailBitmap(Landroid/graphics/Bitmap;I)V
    .locals 11

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0x32

    const/4 v7, 0x0

    const/16 v1, 0x200

    const/4 v6, 0x0

    .line 1050
    .line 1052
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 2093
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2094
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 2095
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "scaleDownBitmapIfNeeded srcBitmap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    if-gt v0, v1, :cond_2

    if-gt v2, v1, :cond_2

    .line 3069
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3070
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3071
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "cropCenterBitmap srcBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    if-lt v0, v1, :cond_4

    .line 3074
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "cropCenterBitmap dstBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    .line 3076
    invoke-static {p1, v0, v7, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3980
    :goto_1
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "precomputeThumbnailPaint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3982
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 3984
    if-eqz v0, :cond_1

    .line 3988
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3993
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 3995
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->viewSize:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 3998
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v2, v6, v6, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3999
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->viewSize:F

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->viewSize:F

    invoke-direct {v0, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4001
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 4004
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v2, v0, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 4007
    int-to-float v0, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v9

    invoke-virtual {v3, v0, v4, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 4009
    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 4013
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailPaint:Landroid/graphics/Paint;

    .line 4014
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4015
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->thumbnailPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4016
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "precomputeThumbnailPaint finished"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_1
    return-void

    .line 2102
    :cond_2
    if-le v0, v2, :cond_3

    .line 2104
    shl-int/lit8 v2, v2, 0x9

    div-int v0, v2, v0

    .line 2109
    :goto_2
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "scaleDownBitmapIfNeeded dstBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    invoke-static {p1, v1, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0

    .line 2107
    :cond_3
    shl-int/lit8 v0, v0, 0x9

    div-int/2addr v0, v2

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_2

    .line 3078
    :cond_4
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "cropCenterBitmap dstBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 3080
    invoke-static {p1, v7, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move-object v0, p1

    goto/16 :goto_1
.end method
