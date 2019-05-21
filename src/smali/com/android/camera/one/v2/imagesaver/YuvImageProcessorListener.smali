.class final Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;
.super Ljava/lang/Object;
.source "YuvImageProcessorListener.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# instance fields
.field private final imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final pictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private final session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;


# direct methods
.method constructor <init>(Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 35
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 36
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->pictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public final onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 2

    .prologue
    .line 55
    iget v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->pictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v1, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureSaverCallback;->onRemoteThumbnailAvailable([B)V

    .line 59
    :cond_0
    return-void
.end method

.method public final onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 65
    iget v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;->data:[I

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 68
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/camera/session/StackableSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;->data:[I

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v3, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 74
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 79
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v2, v0}, Lcom/android/camera/session/StackableSession;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const v2, 0x7f0a01e0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 2

    .prologue
    .line 41
    iget v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageProcessorListener;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
