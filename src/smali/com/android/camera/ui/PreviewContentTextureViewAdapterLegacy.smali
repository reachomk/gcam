.class public final Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;
.super Ljava/lang/Object;
.source "PreviewContentTextureViewAdapterLegacy.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/PreviewContentAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aspectRatio:F

.field private final aspectRatioChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private currentCreateSync:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private currentDestroySync:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final fixedSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private height:I

.field private lastMultiWindowState:Z

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private orientation:I

.field private final preview:Landroid/view/TextureView;

.field private previewArea:Landroid/graphics/RectF;

.field private final previewSizeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private width:I

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "TexViewHelper"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/TextureView;Lcom/android/camera/ui/CaptureLayoutHelper;Landroid/view/WindowManager;Landroid/view/TextureView$SurfaceTextureListener;Lcom/android/camera/module/PreviewTransformCalculator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatioChangedListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewSizeChangedListeners:Ljava/util/ArrayList;

    .line 61
    iput v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    .line 62
    iput v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    .line 68
    iput-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 69
    iput-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->orientation:I

    .line 71
    iput-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->currentCreateSync:Lcom/google/common/util/concurrent/SettableFuture;

    .line 72
    iput-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->currentDestroySync:Lcom/google/common/util/concurrent/SettableFuture;

    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    .line 83
    iput-object p3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->windowManager:Landroid/view/WindowManager;

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 86
    iput-object p2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 87
    iput-object p4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->fixedSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 88
    iput-object p5, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 89
    return-void
.end method

.method public static createAndWireIntoUI(Landroid/view/View;Landroid/view/TextureView$SurfaceTextureListener;Landroid/view/WindowManager;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/module/PreviewTransformCalculator;)Lcom/android/camera/ui/PreviewContentAdapter;
    .locals 8

    .prologue
    .line 565
    const v0, 0x7f110156

    .line 566
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 567
    const-string v0, "Can\'t find TextureView after previewBackedWithTextureView has been inflated.  Check the naming of your resource XMLs"

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v6, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;

    const-string v7, "TextureViewLegacy --"

    new-instance v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;-><init>(Landroid/view/TextureView;Lcom/android/camera/ui/CaptureLayoutHelper;Landroid/view/WindowManager;Landroid/view/TextureView$SurfaceTextureListener;Lcom/android/camera/module/PreviewTransformCalculator;)V

    invoke-direct {v6, v7, v0}, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;-><init>(Ljava/lang/String;Lcom/android/camera/ui/PreviewContentAdapter;)V

    return-object v6
.end method

.method private final onAspectRatioChanged()V
    .locals 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatioChangedListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;

    .line 175
    iget v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    invoke-interface {v1, v4}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;->onPreviewAspectRatioChanged(F)V

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private final onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 351
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    new-instance v2, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;

    invoke-direct {v2, v0, p1}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;-><init>(Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method private final setAspectRatio(F)V
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "aspect ratio changed from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput p1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    .line 167
    invoke-direct {p0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onAspectRatioChanged()V

    .line 169
    :cond_0
    return-void
.end method

.method private final setVisibility(I)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    .line 587
    return-void
.end method

.method private final updatePreviewArea(Landroid/graphics/Matrix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 239
    return-void
.end method

.method private final updateTransform()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 328
    sget-object v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    const-string v1, "updateTransform"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v11

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->windowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->orientation:I

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    new-instance v1, Lcom/android/camera/util/Size;

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    iget v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/module/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 344
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 345
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->updatePreviewArea(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 340
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->orientation:I

    new-instance v2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 342
    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 1269
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1270
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_1

    .line 1273
    :cond_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1274
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1278
    new-instance v4, Landroid/graphics/RectF;

    .line 1280
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 1281
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    .line 1282
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 1283
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1285
    invoke-static {v1}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    .line 1291
    invoke-virtual {v1}, Lcom/google/android/apps/camera/util/layout/Orientation;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1306
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 1293
    :pswitch_0
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v3, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1294
    const/high16 v1, 0x43870000    # 270.0f

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    .line 1297
    :pswitch_1
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1298
    const/high16 v1, 0x43340000    # 180.0f

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    .line 1301
    :pswitch_2
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v3, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1302
    const/high16 v1, 0x42b40000    # 90.0f

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    .line 1291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final addAspectRatioChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public final addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 413
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 416
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, v0}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p1, v0}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public final clearTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 145
    invoke-direct {p0, v3}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->setAspectRatio(F)V

    .line 146
    return-void
.end method

.method public final getPreviewArea()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public final getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 377
    .line 1630
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    if-nez v0, :cond_1

    .line 1631
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 379
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v3, p1

    .line 380
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    div-int v4, v0, p1

    .line 383
    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    :cond_0
    move-object v0, v2

    .line 393
    :goto_1
    return-object v0

    .line 1633
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1634
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    int-to-float v5, v5

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1635
    iget-object v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v4, v3}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0, v3, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_3

    .line 390
    iget-object v5, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    .line 391
    invoke-virtual {v5, v2}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x1

    move v2, v1

    .line 390
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 393
    goto :goto_1
.end method

.method public final getViewHeight()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getViewWidth()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    return v0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sub-int v0, p4, p2

    .line 113
    sub-int v1, p5, p3

    .line 114
    sget-object v2, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onLayoutChange: "

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

    .line 116
    iget-object v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v2}, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow()Z

    move-result v2

    .line 118
    iget-object v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->windowManager:Landroid/view/WindowManager;

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v3

    .line 119
    iget v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    if-ne v4, v1, :cond_2

    iget v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->orientation:I

    if-ne v4, v3, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->lastMultiWindowState:Z

    if-eq v4, v2, :cond_3

    .line 123
    :cond_2
    iput v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    .line 124
    iput v1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    .line 125
    iput v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->orientation:I

    .line 126
    invoke-direct {p0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->updateTransform()Z

    .line 127
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->lastMultiWindowState:Z

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    goto :goto_0
.end method

.method public final onModuleActivate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->setVisibility(I)V

    .line 612
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x1

    const-string v1, "Last Create Synchronization has not finished yet."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 599
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->setVisibility(I)V

    .line 600
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 438
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 442
    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->updateTransform()Z

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->fixedSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 454
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->fixedSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->fixedSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 459
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->fixedSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 476
    return-void
.end method

.method public final removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .prologue
    .line 430
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->previewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    .line 496
    return-void
.end method

.method public final setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 244
    return-void
.end method

.method public final updateAspectRatio(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 150
    sget-object v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "updateAspectRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    .line 156
    div-float p1, v3, p1

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->setAspectRatio(F)V

    .line 159
    invoke-direct {p0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->updateTransform()Z

    goto :goto_0
.end method

.method public final updateTransform(Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 192
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->width:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->height:I

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 193
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 195
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 196
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 197
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v4

    if-nez v3, :cond_1

    .line 198
    :cond_0
    sget-object v1, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x37

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid preview size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 201
    :cond_1
    div-float/2addr v0, v2

    .line 202
    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    div-float v0, v5, v0

    .line 203
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->aspectRatio:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 204
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->setAspectRatio(F)V

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 209
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    iget-object v3, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v3}, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow()Z

    move-result v3

    if-nez v3, :cond_4

    .line 212
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, v0, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 214
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->preview:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->updatePreviewArea(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
