.class public final Lcom/google/android/apps/refocus/viewer/RGBZViewer;
.super Ljava/lang/Object;
.source "RGBZViewer.java"

# interfaces
.implements Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;
.implements Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;
    }
.end annotation


# instance fields
.field private averageBlur:F

.field private final context:Landroid/content/Context;

.field private currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

.field private focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private imageView:Landroid/widget/ImageView;

.field private imageViewBitmap:Landroid/graphics/Bitmap;

.field private initDone:Ljava/util/concurrent/CountDownLatch;

.field private lensController:Lcom/google/android/apps/refocus/viewer/LensController;

.field private progressListener:Lcom/google/android/apps/refocus/ViewerActivity$ProgressListener;

.field private final renderHandler:Landroid/os/Handler;

.field private renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

.field private settingsChanged:Z

.field private tempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->context:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderHandler:Landroid/os/Handler;

    .line 86
    iput-object p3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/refocus/viewer/RGBZViewer;Lcom/google/android/apps/refocus/image/RGBZ;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->finishInitialize(Lcom/google/android/apps/refocus/image/RGBZ;)V

    return-void
.end method

.method private final finishInitialize(Lcom/google/android/apps/refocus/image/RGBZ;)V
    .locals 4

    .prologue
    .line 307
    new-instance v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;-><init>(Lcom/google/android/apps/refocus/image/RGBZ;I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->initDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 317
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, v1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 316
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->tempBitmap:Landroid/graphics/Bitmap;

    .line 320
    new-instance v0, Lcom/google/android/apps/refocus/viewer/LensController;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, v1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-direct {v0, v1}, Lcom/google/android/apps/refocus/viewer/LensController;-><init>(Lcom/google/android/apps/refocus/image/RGBZ;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    .line 322
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->hasFocusSettings()Z

    move-result v0

    if-nez v0, :cond_3

    .line 324
    new-instance v0, Lcom/google/android/apps/refocus/processing/FaceDetector;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/refocus/processing/FaceDetector;-><init>(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, v1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/refocus/processing/FocusSettings;->createDefault(Lcom/google/android/apps/refocus/processing/FaceDetector;Lcom/google/android/apps/refocus/image/RGBZ;Lcom/google/android/apps/refocus/viewer/LensController;)Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 330
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v1, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v3, v3, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    .line 331
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/refocus/viewer/LensController;->averageBlurFromBlurInfinity(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->averageBlur:F

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->initDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 336
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->hasFocusSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->render()V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    goto :goto_1
.end method

.method private final imageToLayout(FF)[F
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 294
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 295
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 296
    return-object v1
.end method

.method private final render()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->settingsChanged:Z

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;->cancel()V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v1, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iput v1, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->focalDepth:F

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v1, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 355
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v3, v3, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->blurInfinity:F

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v1, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iput v1, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->depthOfField:F

    .line 357
    new-instance v0, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    invoke-direct {v0, p0, v4}, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZViewer;Lcom/google/android/apps/refocus/viewer/RGBZViewer$1;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v6, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/apps/refocus/viewer/RenderTask;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    iget-object v5, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->tempBitmap:Landroid/graphics/Bitmap;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/refocus/viewer/RenderTask;-><init>(Landroid/content/Context;Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;Lcom/google/android/apps/refocus/processing/ProgressCallback;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    :cond_0
    return-void
.end method

.method private final waitForInitializeToFinish()V
    .locals 1

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->initDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;->cancel()V

    .line 254
    :cond_0
    return-void
.end method

.method public final getBokeh()F
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->waitForInitializeToFinish()V

    .line 189
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->averageBlur:F

    const v1, 0x3c83126f    # 0.016f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getFocusPoint()[F
    .locals 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 199
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->waitForInitializeToFinish()V

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    if-nez v0, :cond_2

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageToLayout(FF)[F

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v0, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v1, v1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 209
    invoke-virtual {v1}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v1, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 210
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1286
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 1287
    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    .line 1288
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    .line 1289
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1287
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageToLayout(FF)[F

    move-result-object v0

    goto :goto_0
.end method

.method public final getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    return-object v0
.end method

.method public final onBokehChanged(F)V
    .locals 5

    .prologue
    .line 108
    const v0, 0x3c83126f    # 0.016f

    mul-float/2addr v0, p1

    .line 1158
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    if-eqz v1, :cond_0

    .line 1162
    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->averageBlur:F

    .line 1163
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v3, v3, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iget v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->averageBlur:F

    .line 1164
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/refocus/viewer/LensController;->blurInfinityFromAverageBlur(FFF)F

    move-result v1

    iput v1, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    .line 1166
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->render()V

    .line 109
    :cond_0
    return-void
.end method

.method public final onFocusPointChanged(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    int-to-float v0, p1

    int-to-float v1, p2

    .line 1220
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->waitForInitializeToFinish()V

    .line 1221
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 1223
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 1274
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1275
    iget-object v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1277
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1278
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 1276
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1280
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v6

    aput v1, v2, v7

    .line 1281
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1230
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 1231
    aget v1, v2, v6

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_0

    aget v1, v2, v6

    .line 1232
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_0

    aget v1, v2, v7

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_0

    aget v1, v2, v7

    .line 1234
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    aget v3, v2, v6

    float-to-int v3, v3

    aget v4, v2, v7

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepth(II)F

    move-result v3

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    .line 1239
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    aget v3, v2, v6

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 1240
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    aget v2, v2, v7

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    .line 1241
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v3, v3, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iget v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->averageBlur:F

    .line 1242
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/refocus/viewer/LensController;->blurInfinityFromAverageBlur(FFF)F

    move-result v1

    iput v1, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    .line 1244
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->render()V

    goto/16 :goto_0
.end method

.method public final onRenderTaskDone(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    :cond_0
    return-void
.end method

.method public final openDataset(Lcom/google/android/apps/refocus/image/RGBZ;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->settingsChanged:Z

    .line 125
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->lensController:Lcom/google/android/apps/refocus/viewer/LensController;

    .line 126
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 127
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->renderOptions:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    .line 128
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->currentRenderProgress:Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;

    .line 129
    iput-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->tempBitmap:Landroid/graphics/Bitmap;

    .line 130
    const v0, 0x3b83126f    # 0.004f

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->averageBlur:F

    .line 132
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->initDone:Ljava/util/concurrent/CountDownLatch;

    .line 141
    new-instance v0, Lcom/google/android/apps/refocus/viewer/RGBZViewer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/refocus/viewer/RGBZViewer$1;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZViewer;Lcom/google/android/apps/refocus/image/RGBZ;Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/viewer/RGBZViewer$1;->start()V

    goto :goto_0
.end method

.method public final setProgressListener(Lcom/google/android/apps/refocus/ViewerActivity$ProgressListener;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->progressListener:Lcom/google/android/apps/refocus/ViewerActivity$ProgressListener;

    .line 104
    return-void
.end method

.method public final setView(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageView:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->imageViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final settingsChanged()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer;->settingsChanged:Z

    return v0
.end method
