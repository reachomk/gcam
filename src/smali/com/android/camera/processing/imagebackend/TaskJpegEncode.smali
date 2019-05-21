.class public abstract Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskJpegEncode.java"


# instance fields
.field private final extraExifDecoration:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/util/ExifUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "TaskJpegEnc"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;I)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;I)V

    .line 49
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode$1;

    invoke-direct {v0}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->extraExifDecoration:Lcom/google/android/apps/camera/util/Callback;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V

    .line 75
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode$2;

    invoke-direct {v0}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode$2;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->extraExifDecoration:Lcom/google/android/apps/camera/util/Callback;

    .line 82
    return-void
.end method

.method public static convertNv21toJpeg([BII[I)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 219
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 221
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    .line 225
    invoke-static {v3}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v3

    .line 223
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 228
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertYUV420ImageToPackedNV21(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;[BZ)[B
    .locals 15

    .prologue
    .line 139
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v2

    .line 140
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v3

    .line 141
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v1

    .line 143
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 144
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 145
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 146
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v7

    .line 147
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v8

    .line 148
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v9

    .line 149
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v10

    .line 150
    mul-int v11, v2, v3

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 153
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    .line 154
    mul-int v12, v0, v2

    add-int/2addr v12, v1

    .line 155
    mul-int v13, v1, v7

    mul-int v14, v0, v8

    add-int/2addr v13, v14

    .line 156
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, p1, v12

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 160
    :cond_1
    if-eqz p2, :cond_3

    .line 161
    const/4 v0, 0x0

    :goto_2
    div-int/lit8 v1, v3, 0x2

    if-ge v0, v1, :cond_5

    .line 162
    const/4 v1, 0x0

    :goto_3
    div-int/lit8 v4, v2, 0x2

    if-ge v1, v4, :cond_2

    .line 163
    mul-int v4, v2, v0

    add-int/2addr v4, v11

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    .line 164
    const/16 v5, -0x80

    aput-byte v5, p1, v4

    .line 165
    add-int/lit8 v4, v4, 0x1

    const/16 v5, -0x80

    aput-byte v5, p1, v4

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_3
    const/4 v0, 0x0

    :goto_4
    div-int/lit8 v1, v3, 0x2

    if-ge v0, v1, :cond_5

    .line 170
    const/4 v1, 0x0

    :goto_5
    div-int/lit8 v4, v2, 0x2

    if-ge v1, v4, :cond_4

    .line 171
    mul-int v4, v2, v0

    add-int/2addr v4, v11

    shl-int/lit8 v7, v1, 0x1

    add-int/2addr v4, v7

    .line 172
    mul-int v7, v0, v10

    mul-int v8, v1, v9

    add-int/2addr v7, v8

    .line 173
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 174
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 169
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 179
    :cond_5
    return-object p1
.end method


# virtual methods
.method protected final createExif(Lcom/google/common/base/Optional;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/exif/ExifInterface;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Lcom/android/camera/util/ExifUtil;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1, v0}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 285
    :goto_0
    const/4 v2, 0x0

    .line 287
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :goto_1
    iget v2, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget v3, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    iget-object v4, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 294
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 293
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/camera/util/ExifUtil;->populateExif(IILcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/base/Optional;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->extraExifDecoration:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v1}, Lcom/android/camera/util/ExifUtil;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ExifUtil;->create()Lcom/android/camera/util/ExifUtil;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final onJpegEncodeDone$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMMQ29HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEP9AO______(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BI)V
    .locals 7

    .prologue
    .line 311
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 313
    new-instance v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    invoke-direct {v2, p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 314
    return-void
.end method

.method public final onUriResolved$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ31DPI74RR9CGNMSPBK5TAN4Q9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEP9AO______(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;I)V
    .locals 7

    .prologue
    .line 331
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 333
    invoke-interface {v0, v1, p5}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 334
    return-void
.end method
