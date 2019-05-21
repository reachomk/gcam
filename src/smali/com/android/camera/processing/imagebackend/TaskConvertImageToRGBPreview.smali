.class public Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskConvertImageToRGBPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final targetSize:Lcom/android/camera/util/Size;

.field private thumbnailShape$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "TaskRGBPreview"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V

    .line 86
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->targetSize:Lcom/android/camera/util/Size;

    .line 87
    iput p7, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->thumbnailShape$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    .line 88
    return-void
.end method

.method protected static calculateInputImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6

    .prologue
    .line 874
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v2, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 876
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 877
    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 878
    invoke-interface {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/google/android/apps/camera/util/layout/Orientation;IIILandroid/graphics/Rect;)V

    .line 874
    return-object v0
.end method

.method private static calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I
    .locals 2

    .prologue
    .line 145
    div-int v0, p4, p2

    mul-int/2addr v0, p7

    div-int v1, p5, p2

    mul-int/2addr v1, p6

    add-int/2addr v0, v1

    div-int v1, p1, p3

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    div-int v1, p0, p3

    mul-int/2addr v1, p5

    add-int/2addr v0, v1

    return v0
.end method

.method private colorInscribedDataCircleFromYuvImageJava(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;I)[I
    .locals 40

    .prologue
    .line 242
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 243
    invoke-interface/range {p1 .. p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v10

    .line 244
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 246
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Incorrect number planes ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in YUV Image Object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 250
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 251
    div-int v5, v3, p3

    .line 252
    div-int v4, v4, p3

    .line 255
    invoke-static {v5, v4}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v29

    .line 262
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 1098
    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v9, v3, 0x1

    .line 263
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2098
    div-int/lit8 v2, v2, 0x2

    shl-int/lit8 v8, v2, 0x1

    .line 266
    if-le v5, v4, :cond_3

    .line 267
    const/4 v2, 0x0

    .line 270
    div-int/lit8 v3, v5, 0x2

    sub-int v3, v3, v29

    .line 3098
    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v6, v3, 0x1

    .line 271
    div-int/lit8 v3, v5, 0x2

    add-int v3, v3, v29

    .line 4098
    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v3, v3, 0x1

    move/from16 v24, v4

    move/from16 v25, v2

    move/from16 v26, v3

    move v2, v6

    .line 280
    :goto_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v30

    .line 281
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 282
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v32

    .line 283
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v3

    mul-int v6, v3, p3

    .line 284
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v3

    mul-int v14, v3, p3

    .line 285
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v3

    mul-int v20, v3, p3

    .line 286
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    mul-int v7, v3, p3

    .line 287
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    mul-int v15, v3, p3

    .line 288
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    mul-int v21, v3, p3

    .line 289
    shl-int/lit8 v33, v29, 0x1

    .line 290
    div-int/lit8 v34, v4, 0x2

    .line 291
    div-int/lit8 v35, v5, 0x2

    .line 293
    mul-int v3, v29, v29

    shl-int/lit8 v3, v3, 0x2

    .line 294
    new-array v0, v3, [I

    move-object/from16 v36, v0

    .line 297
    const-string v3, "TIMER_BEGIN Starting Native Java YUV420-to-RGB Circular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v11, 0x26

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "\t Y-Plane Size="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 299
    const/4 v3, 0x1

    .line 301
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v4

    const/4 v3, 0x1

    .line 303
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v11, 0x33

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "\t U-Plane Size="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pixel Stride="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 304
    const/4 v3, 0x2

    .line 306
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v4

    const/4 v3, 0x2

    .line 308
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v10, 0x33

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "\t V-Plane Size="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pixel Stride="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    move/from16 v3, v25

    .line 311
    :goto_1
    move/from16 v0, v24

    if-ge v3, v0, :cond_2e

    .line 312
    sub-int v4, v3, v25

    mul-int v28, v4, v33

    .line 313
    const/4 v5, 0x1

    move/from16 v4, p3

    .line 314
    invoke-static/range {v2 .. v9}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v27

    .line 323
    const/4 v13, 0x2

    div-int/lit8 v16, v8, 0x2

    div-int/lit8 v17, v9, 0x2

    move v10, v2

    move v11, v3

    move/from16 v12, p3

    .line 324
    invoke-static/range {v10 .. v17}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v5

    .line 333
    const/16 v19, 0x2

    div-int/lit8 v22, v8, 0x2

    div-int/lit8 v23, v9, 0x2

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, p3

    .line 334
    invoke-static/range {v16 .. v23}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v4

    .line 347
    mul-int v10, v29, v29

    sub-int v11, v3, v34

    sub-int v12, v3, v34

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    float-to-double v10, v10

    .line 348
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v10, v10

    .line 349
    sub-int v19, v35, v10

    .line 350
    add-int v22, v35, v10

    .line 351
    mul-int v10, v29, v29

    add-int/lit8 v11, v3, 0x1

    sub-int v11, v11, v34

    add-int/lit8 v12, v3, 0x1

    sub-int v12, v12, v34

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    float-to-double v10, v10

    .line 352
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v10, v10

    .line 353
    sub-int v23, v35, v10

    .line 354
    add-int v37, v35, v10

    move v12, v2

    move v13, v4

    move/from16 v16, v5

    move/from16 v17, v27

    move/from16 v18, v28

    .line 360
    :goto_2
    move/from16 v0, v26

    if-ge v12, v0, :cond_2d

    .line 368
    move/from16 v0, v22

    if-le v12, v0, :cond_1

    move/from16 v0, v37

    if-gt v12, v0, :cond_2

    :cond_1
    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    move/from16 v0, v23

    if-ge v12, v0, :cond_4

    .line 369
    :cond_2
    const/4 v4, 0x0

    aput v4, v36, v18

    .line 370
    add-int/lit8 v4, v18, 0x1

    const/4 v5, 0x0

    aput v5, v36, v4

    .line 371
    add-int v4, v18, v33

    const/4 v5, 0x0

    aput v5, v36, v4

    .line 372
    add-int v4, v18, v33

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput v5, v36, v4

    .line 361
    :goto_3
    add-int/lit8 v4, v12, 0x2

    mul-int/lit8 v5, v7, 0x2

    add-int v11, v17, v5

    add-int/lit8 v12, v18, 0x2

    add-int v10, v16, v15

    .line 362
    add-int v5, v13, v21

    move v13, v5

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v12, v4

    goto :goto_2

    .line 273
    :cond_3
    const/4 v6, 0x0

    .line 276
    div-int/lit8 v2, v4, 0x2

    sub-int v2, v2, v29

    .line 5098
    div-int/lit8 v2, v2, 0x2

    shl-int/lit8 v3, v2, 0x1

    .line 277
    div-int/lit8 v2, v4, 0x2

    add-int v2, v2, v29

    .line 6098
    div-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v5

    move v2, v6

    .line 277
    goto/16 :goto_0

    .line 378
    :cond_4
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x80

    .line 379
    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    .line 380
    mul-int/lit16 v10, v5, 0x166

    shr-int/lit8 v27, v10, 0x8

    .line 381
    mul-int/lit8 v10, v4, -0x58

    mul-int/lit16 v5, v5, -0xb6

    add-int/2addr v5, v10

    shr-int/lit8 v28, v5, 0x8

    .line 382
    mul-int/lit16 v4, v4, 0x1c5

    shr-int/lit8 v38, v4, 0x8

    .line 384
    move/from16 v0, v22

    if-gt v12, v0, :cond_5

    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    .line 385
    :cond_5
    const/4 v4, 0x0

    aput v4, v36, v18

    .line 421
    :goto_4
    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v22

    if-gt v4, v0, :cond_6

    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v19

    if-ge v4, v0, :cond_12

    .line 422
    :cond_6
    add-int/lit8 v4, v18, 0x1

    const/4 v5, 0x0

    aput v5, v36, v4

    .line 455
    :goto_5
    move/from16 v0, v37

    if-gt v12, v0, :cond_7

    move/from16 v0, v23

    if-ge v12, v0, :cond_1b

    .line 456
    :cond_7
    add-int v4, v18, v33

    const/4 v5, 0x0

    aput v5, v36, v4

    .line 488
    :goto_6
    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v37

    if-gt v4, v0, :cond_8

    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v23

    if-ge v4, v0, :cond_24

    .line 489
    :cond_8
    add-int v4, v18, v33

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput v5, v36, v4

    goto/16 :goto_3

    .line 388
    :cond_9
    move/from16 v0, v22

    if-eq v12, v0, :cond_a

    move/from16 v0, v19

    if-ne v12, v0, :cond_11

    :cond_a
    const/high16 v4, -0x80000000

    .line 390
    :goto_7
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v10, v5, 0xff

    .line 392
    add-int v11, v10, v28

    .line 393
    add-int v5, v10, v38

    .line 394
    add-int v10, v10, v27

    .line 397
    if-gez v11, :cond_b

    .line 398
    const/4 v11, 0x0

    .line 400
    :cond_b
    if-gez v10, :cond_c

    .line 401
    const/4 v10, 0x0

    .line 403
    :cond_c
    if-gez v5, :cond_d

    .line 404
    const/4 v5, 0x0

    .line 407
    :cond_d
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v11, v0, :cond_e

    .line 408
    const/16 v11, 0xff

    .line 410
    :cond_e
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v10, v0, :cond_f

    .line 411
    const/16 v10, 0xff

    .line 413
    :cond_f
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v5, v0, :cond_10

    .line 414
    const/16 v5, 0xff

    .line 417
    :cond_10
    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v36, v18

    goto :goto_4

    .line 388
    :cond_11
    const/high16 v4, -0x1000000

    goto :goto_7

    .line 424
    :cond_12
    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_13

    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_1a

    .line 425
    :cond_13
    const/high16 v4, -0x80000000

    .line 426
    :goto_8
    add-int v5, v17, v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v10, v5, 0xff

    .line 427
    add-int v11, v10, v28

    .line 428
    add-int v5, v10, v38

    .line 429
    add-int v10, v10, v27

    .line 432
    if-gez v11, :cond_14

    .line 433
    const/4 v11, 0x0

    .line 435
    :cond_14
    if-gez v10, :cond_15

    .line 436
    const/4 v10, 0x0

    .line 438
    :cond_15
    if-gez v5, :cond_16

    .line 439
    const/4 v5, 0x0

    .line 442
    :cond_16
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v11, v0, :cond_17

    .line 443
    const/16 v11, 0xff

    .line 445
    :cond_17
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v10, v0, :cond_18

    .line 446
    const/16 v10, 0xff

    .line 448
    :cond_18
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v5, v0, :cond_19

    .line 449
    const/16 v5, 0xff

    .line 451
    :cond_19
    add-int/lit8 v39, v18, 0x1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v36, v39

    goto/16 :goto_5

    .line 425
    :cond_1a
    const/high16 v4, -0x1000000

    goto :goto_8

    .line 458
    :cond_1b
    move/from16 v0, v37

    if-eq v12, v0, :cond_1c

    move/from16 v0, v23

    if-ne v12, v0, :cond_23

    :cond_1c
    const/high16 v4, -0x80000000

    .line 459
    :goto_9
    add-int v5, v17, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v10, v5, 0xff

    .line 460
    add-int v11, v10, v28

    .line 461
    add-int v5, v10, v38

    .line 462
    add-int v10, v10, v27

    .line 465
    if-gez v11, :cond_1d

    .line 466
    const/4 v11, 0x0

    .line 468
    :cond_1d
    if-gez v10, :cond_1e

    .line 469
    const/4 v10, 0x0

    .line 471
    :cond_1e
    if-gez v5, :cond_1f

    .line 472
    const/4 v5, 0x0

    .line 474
    :cond_1f
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v11, v0, :cond_20

    .line 475
    const/16 v11, 0xff

    .line 477
    :cond_20
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v10, v0, :cond_21

    .line 478
    const/16 v10, 0xff

    .line 480
    :cond_21
    const/16 v39, 0xff

    move/from16 v0, v39

    if-le v5, v0, :cond_22

    .line 481
    const/16 v5, 0xff

    .line 484
    :cond_22
    add-int v39, v18, v33

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v36, v39

    goto/16 :goto_6

    .line 458
    :cond_23
    const/high16 v4, -0x1000000

    goto :goto_9

    .line 491
    :cond_24
    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v37

    if-eq v4, v0, :cond_25

    add-int/lit8 v4, v12, 0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_2c

    .line 492
    :cond_25
    const/high16 v4, -0x80000000

    .line 493
    :goto_a
    add-int v5, v17, v6

    add-int/2addr v5, v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v10, v5, 0xff

    .line 494
    add-int v11, v10, v28

    .line 495
    add-int v5, v10, v38

    .line 496
    add-int v10, v10, v27

    .line 499
    if-gez v11, :cond_26

    .line 500
    const/4 v11, 0x0

    .line 502
    :cond_26
    if-gez v10, :cond_27

    .line 503
    const/4 v10, 0x0

    .line 505
    :cond_27
    if-gez v5, :cond_28

    .line 506
    const/4 v5, 0x0

    .line 509
    :cond_28
    const/16 v27, 0xff

    move/from16 v0, v27

    if-le v11, v0, :cond_29

    .line 510
    const/16 v11, 0xff

    .line 513
    :cond_29
    const/16 v27, 0xff

    move/from16 v0, v27

    if-le v10, v0, :cond_2a

    .line 514
    const/16 v10, 0xff

    .line 516
    :cond_2a
    const/16 v27, 0xff

    move/from16 v0, v27

    if-le v5, v0, :cond_2b

    .line 517
    const/16 v5, 0xff

    .line 519
    :cond_2b
    add-int v27, v18, v33

    add-int/lit8 v27, v27, 0x1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v36, v27

    goto/16 :goto_3

    .line 492
    :cond_2c
    const/high16 v4, -0x1000000

    goto :goto_a

    .line 311
    :cond_2d
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    .line 524
    :cond_2e
    const-string v2, "TIMER_END Starting Native Java YUV420-to-RGB Circular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 526
    return-object v36
.end method

.method private colorSubSampleFromYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;IZ)[I
    .locals 33

    .prologue
    .line 582
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 583
    invoke-interface/range {p1 .. p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v12

    .line 584
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 585
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 586
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Incorrect number planes ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in YUV Image Object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 590
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 591
    div-int v4, v1, p3

    .line 592
    div-int v2, v2, p3

    .line 596
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v29

    .line 597
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v30

    .line 598
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 599
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v1

    mul-int v5, v1, p3

    .line 600
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v1

    mul-int v13, v1, p3

    .line 601
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v1

    mul-int v19, v1, p3

    .line 602
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v1

    mul-int v6, v1, p3

    .line 603
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v1

    mul-int v14, v1, p3

    .line 604
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v1

    mul-int v20, v1, p3

    .line 613
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 7098
    div-int/lit8 v1, v1, 0x2

    shl-int/lit8 v8, v1, 0x1

    .line 614
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 8098
    div-int/lit8 v1, v1, 0x2

    shl-int/lit8 v7, v1, 0x1

    .line 616
    if-eqz p4, :cond_1a

    .line 617
    invoke-static {v4, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v1

    .line 618
    mul-int v3, v1, v1

    shl-int/lit8 v10, v3, 0x2

    .line 619
    shl-int/lit8 v11, v1, 0x1

    .line 621
    if-le v4, v2, :cond_19

    .line 623
    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v3, v1

    .line 9098
    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v9, v3, 0x1

    .line 624
    div-int/lit8 v3, v4, 0x2

    add-int/2addr v1, v3

    .line 10098
    div-int/lit8 v1, v1, 0x2

    shl-int/lit8 v3, v1, 0x1

    .line 625
    const/4 v1, 0x0

    move/from16 v23, v2

    move/from16 v24, v1

    move/from16 v25, v3

    move/from16 v26, v11

    move v3, v10

    move v1, v9

    .line 643
    :goto_0
    new-array v0, v3, [I

    move-object/from16 v32, v0

    .line 646
    const-string v3, "TIMER_BEGIN Starting Native Java YUV420-to-RGB Rectangular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v9, 0x26

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "\t Y-Plane Size="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 648
    const/4 v2, 0x1

    .line 650
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v3

    const/4 v2, 0x1

    .line 652
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x33

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "\t U-Plane Size="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pixel Stride="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 653
    const/4 v2, 0x2

    .line 655
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v3

    const/4 v2, 0x2

    .line 657
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x33

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "\t V-Plane Size="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pixel Stride="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    move/from16 v2, v24

    .line 660
    :goto_1
    move/from16 v0, v23

    if-ge v2, v0, :cond_1c

    .line 661
    sub-int v3, v2, v24

    mul-int v28, v3, v26

    .line 662
    const/4 v4, 0x1

    move/from16 v3, p3

    .line 663
    invoke-static/range {v1 .. v8}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v27

    .line 672
    const/4 v12, 0x2

    div-int/lit8 v15, v7, 0x2

    div-int/lit8 v16, v8, 0x2

    move v9, v1

    move v10, v2

    move/from16 v11, p3

    .line 673
    invoke-static/range {v9 .. v16}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v4

    .line 682
    const/16 v18, 0x2

    div-int/lit8 v21, v7, 0x2

    div-int/lit8 v22, v8, 0x2

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, p3

    .line 683
    invoke-static/range {v15 .. v22}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v3

    move v10, v1

    move v11, v3

    move v12, v4

    move/from16 v15, v27

    move/from16 v16, v28

    .line 697
    :goto_2
    move/from16 v0, v25

    if-ge v10, v0, :cond_1b

    .line 708
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    .line 709
    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x80

    .line 710
    mul-int/lit16 v9, v4, 0x166

    shr-int/lit8 v17, v9, 0x8

    .line 711
    mul-int/lit8 v9, v3, -0x58

    mul-int/lit16 v4, v4, -0xb6

    add-int/2addr v4, v9

    shr-int/lit8 v18, v4, 0x8

    .line 712
    mul-int/lit16 v3, v3, 0x1c5

    shr-int/lit8 v21, v3, 0x8

    .line 717
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v4, v3, 0xff

    .line 719
    add-int v9, v4, v18

    .line 720
    add-int v3, v4, v21

    .line 721
    add-int v4, v4, v17

    .line 724
    if-gez v9, :cond_1

    .line 725
    const/4 v9, 0x0

    .line 727
    :cond_1
    if-gez v4, :cond_2

    .line 728
    const/4 v4, 0x0

    .line 730
    :cond_2
    if-gez v3, :cond_3

    .line 731
    const/4 v3, 0x0

    .line 734
    :cond_3
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v9, v0, :cond_4

    .line 735
    const/16 v9, 0xff

    .line 737
    :cond_4
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v4, v0, :cond_5

    .line 738
    const/16 v4, 0xff

    .line 740
    :cond_5
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v3, v0, :cond_6

    .line 741
    const/16 v3, 0xff

    .line 744
    :cond_6
    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v4, v9

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    aput v3, v32, v16

    .line 747
    add-int v3, v15, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v4, v3, 0xff

    .line 748
    add-int v9, v4, v18

    .line 749
    add-int v3, v4, v21

    .line 750
    add-int v4, v4, v17

    .line 753
    if-gez v9, :cond_7

    .line 754
    const/4 v9, 0x0

    .line 756
    :cond_7
    if-gez v4, :cond_8

    .line 757
    const/4 v4, 0x0

    .line 759
    :cond_8
    if-gez v3, :cond_9

    .line 760
    const/4 v3, 0x0

    .line 763
    :cond_9
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v9, v0, :cond_a

    .line 764
    const/16 v9, 0xff

    .line 766
    :cond_a
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v4, v0, :cond_b

    .line 767
    const/16 v4, 0xff

    .line 769
    :cond_b
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v3, v0, :cond_c

    .line 770
    const/16 v3, 0xff

    .line 772
    :cond_c
    add-int/lit8 v22, v16, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v4, v9

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    aput v3, v32, v22

    .line 776
    add-int v3, v15, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v4, v3, 0xff

    .line 777
    add-int v9, v4, v18

    .line 778
    add-int v3, v4, v21

    .line 779
    add-int v4, v4, v17

    .line 782
    if-gez v9, :cond_d

    .line 783
    const/4 v9, 0x0

    .line 785
    :cond_d
    if-gez v4, :cond_e

    .line 786
    const/4 v4, 0x0

    .line 788
    :cond_e
    if-gez v3, :cond_f

    .line 789
    const/4 v3, 0x0

    .line 791
    :cond_f
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v9, v0, :cond_10

    .line 792
    const/16 v9, 0xff

    .line 794
    :cond_10
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v4, v0, :cond_11

    .line 795
    const/16 v4, 0xff

    .line 797
    :cond_11
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v3, v0, :cond_12

    .line 798
    const/16 v3, 0xff

    .line 801
    :cond_12
    add-int v22, v16, v26

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v4, v9

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    aput v3, v32, v22

    .line 805
    add-int v3, v15, v5

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v4, v3, 0xff

    .line 806
    add-int v9, v4, v18

    .line 807
    add-int v3, v4, v21

    .line 808
    add-int v4, v4, v17

    .line 811
    if-gez v9, :cond_13

    .line 812
    const/4 v9, 0x0

    .line 814
    :cond_13
    if-gez v4, :cond_14

    .line 815
    const/4 v4, 0x0

    .line 817
    :cond_14
    if-gez v3, :cond_15

    .line 818
    const/4 v3, 0x0

    .line 821
    :cond_15
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v9, v0, :cond_16

    .line 822
    const/16 v9, 0xff

    .line 825
    :cond_16
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v4, v0, :cond_17

    .line 826
    const/16 v4, 0xff

    .line 828
    :cond_17
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v3, v0, :cond_18

    .line 829
    const/16 v3, 0xff

    .line 831
    :cond_18
    add-int v17, v16, v26

    add-int/lit8 v17, v17, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v4, v9

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    aput v3, v32, v17

    .line 698
    add-int/lit8 v3, v10, 0x2

    mul-int/lit8 v4, v6, 0x2

    add-int v10, v15, v4

    add-int/lit8 v15, v16, 0x2

    add-int v9, v12, v14

    .line 699
    add-int v4, v11, v20

    move v11, v4

    move v12, v9

    move/from16 v16, v15

    move v15, v10

    move v10, v3

    goto/16 :goto_2

    .line 628
    :cond_19
    const/4 v9, 0x0

    .line 631
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v3, v1

    .line 11098
    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v3, v3, 0x1

    .line 632
    div-int/lit8 v15, v2, 0x2

    add-int/2addr v1, v15

    .line 12098
    div-int/lit8 v1, v1, 0x2

    shl-int/lit8 v1, v1, 0x1

    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v11

    move v3, v10

    move v1, v9

    .line 634
    goto/16 :goto_0

    .line 636
    :cond_1a
    mul-int v11, v4, v2

    .line 637
    const/4 v10, 0x0

    .line 13098
    div-int/lit8 v1, v4, 0x2

    shl-int/lit8 v9, v1, 0x1

    .line 639
    const/4 v3, 0x0

    .line 14098
    div-int/lit8 v1, v2, 0x2

    shl-int/lit8 v1, v1, 0x1

    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v9

    move/from16 v26, v4

    move v3, v11

    move v1, v10

    .line 640
    goto/16 :goto_0

    .line 660
    :cond_1b
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    .line 835
    :cond_1c
    const-string v1, "TIMER_END Starting Native Java YUV420-to-RGB Rectangular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 837
    return-object v32
.end method

.method private static inscribedCircleRadius(II)I
    .locals 1

    .prologue
    .line 113
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected final calculateResultImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6

    .prologue
    .line 891
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v1, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 894
    iget v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->thumbnailShape$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    sget v2, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    if-ne v1, v2, :cond_0

    .line 895
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int v2, v1, p2

    .line 896
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int v3, v0, p2

    .line 904
    :goto_0
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/google/android/apps/camera/util/layout/Orientation;IIILandroid/graphics/Rect;)V

    return-object v0

    .line 899
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, p2

    invoke-static {v1, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v0

    .line 900
    mul-int/lit8 v2, v0, 0x2

    .line 901
    mul-int/lit8 v3, v0, 0x2

    goto :goto_0
.end method

.method public logWrapper(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final onPreviewDone$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1FAHGN6QQ9DLGMEPA3DTN78OB9DPIN492KC5PMMIBDC5JMAEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRGE9NM6PBJEDKMSPPFD5MM2PR5C9GM6QR5DPI2UL31EDLKIRB1CTIK6RREEHGMIRJ5E8I58OBJDD4MQOB7CKTLMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRGE9NM6PBJEDKMSPPFD5MM2PR5C9GM6QR5DPI2UL31EDLKIRB1CTIK6RREEHGMIRJ5E8I58OBJDD4MSPJF4H26ASRKD5N62T39DTN3MAAM(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[II)V
    .locals 7

    .prologue
    .line 988
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->id:J

    move-object v4, p2

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 989
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 991
    new-instance v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    invoke-direct {v2, p3}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;-><init>([I)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    .line 992
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 942
    iget-object v7, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 943
    iget-object v0, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 945
    invoke-static {v7, v8}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateInputImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v4

    .line 947
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 948
    iget v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->thumbnailShape$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    sget v2, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_CIRCULAR_INSET$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->thumbnailShape$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    sget v2, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_NO_INSET$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    if-ne v1, v2, :cond_1

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->targetSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->calculateSquareSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v0

    .line 955
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateResultImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v5

    .line 959
    :try_start_0
    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->id:J

    sget v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->onStart$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNL8OBJDD4MQOB7CL1MURJKC5KMSPBI4HA62SRB95N6CRP48HIN6T39DPGN8QBFDOTIILG_(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 961
    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 963
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    iget-object v2, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 965
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x66

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TIMER_END Rendering preview YUV buffer available, w="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of subsample "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 969
    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-virtual {p0, v1, v8, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->runSelectedConversion(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    .line 974
    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    invoke-virtual {p0, v5, v4, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->onPreviewDone$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1FAHGN6QQ9DLGMEPA3DTN78OB9DPIN492KC5PMMIBDC5JMAEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRGE9NM6PBJEDKMSPPFD5MM2PR5C9GM6QR5DPI2UL31EDLKIRB1CTIK6RREEHGMIRJ5E8I58OBJDD4MQOB7CKTLMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRGE9NM6PBJEDKMSPPFD5MM2PR5C9GM6QR5DPI2UL31EDLKIRB1CTIK6RREEHGMIRJ5E8I58OBJDD4MSPJF4H26ASRKD5N62T39DTN3MAAM(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[II)V

    .line 975
    return-void

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->targetSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v0

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    throw v0
.end method

.method protected final runSelectedConversion(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;I)[I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 921
    iget v0, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->thumbnailShape$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    .line 933
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 14850
    :pswitch_0
    const-string v0, "RUNNING DUMMY dummyColorInscribedDataCircleFromYuvImage"

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 14851
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    div-int/2addr v0, p3

    .line 14852
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v2

    div-int/2addr v2, p3

    .line 14853
    invoke-static {v0, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v2

    .line 14854
    mul-int v0, v2, v2

    shl-int/lit8 v3, v0, 0x2

    .line 14855
    new-array v0, v3, [I

    .line 14858
    :goto_1
    if-ge v1, v3, :cond_0

    .line 14859
    mul-int/lit8 v4, v2, 0x2

    rem-int v4, v1, v4

    .line 14860
    mul-int/lit8 v5, v2, 0x2

    div-int v5, v1, v5

    .line 14861
    const/high16 v6, -0x1000000

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aput v4, v0, v1

    .line 14858
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15194
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 15195
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v2

    .line 15196
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 15197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15198
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Incorrect number planes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in YUV Image Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15201
    :cond_1
    const-string v3, "TIMER_BEGIN Starting Native JNI YUV420-to-RGB Circular Conversion"

    invoke-virtual {p0, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 15203
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 15204
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 15205
    div-int/2addr v3, p3

    .line 15206
    div-int/2addr v0, p3

    .line 15209
    invoke-static {v3, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v0

    .line 15211
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15212
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15213
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15214
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15215
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15216
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15217
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15218
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15219
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15221
    mul-int/2addr v0, v0

    shl-int/lit8 v0, v0, 0x2

    .line 15222
    new-array v0, v0, [I

    .line 15235
    const-string v1, "TIMER_END Starting Native JNI YUV420-to-RGB Circular Conversion"

    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 927
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorInscribedDataCircleFromYuvImageJava(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v0

    goto/16 :goto_0

    .line 929
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorSubSampleFromYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;IZ)[I

    move-result-object v0

    goto/16 :goto_0

    .line 931
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorSubSampleFromYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;IZ)[I

    move-result-object v0

    goto/16 :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
