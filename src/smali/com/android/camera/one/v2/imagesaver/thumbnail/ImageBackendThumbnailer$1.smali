.class final Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;
.super Ljava/lang/Object;
.source "ImageBackendThumbnailer.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# instance fields
.field private synthetic val$filmstripThumbnail:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private synthetic val$roundedThumbnail:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;->val$roundedThumbnail:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;->val$orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;->val$filmstripThumbnail:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No compressed result expected for thumbnail generation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;->data:[I

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v3, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    iget v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    sget v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    if-ne v2, v3, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;->val$roundedThumbnail:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    sget v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    if-ne v2, v3, :cond_0

    .line 115
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;->val$orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 118
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;->val$filmstripThumbnail:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No URI expected for thumbnail generation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
