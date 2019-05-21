.class public Lcom/google/android/libraries/smartburst/media/BitmapAllocators;
.super Ljava/lang/Object;
.source "BitmapAllocators.java"


# static fields
.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static checkBitmapAndHandle(Landroid/graphics/Bitmap;Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V
    .locals 6

    .prologue
    .line 546
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Got: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    return-void
.end method

.method private static checkBitmapConfig(Lcom/google/android/libraries/smartburst/media/BitmapHandle;Landroid/graphics/Bitmap$Config;)V
    .locals 6

    .prologue
    .line 579
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 580
    if-eq v1, p1, :cond_0

    .line 581
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 582
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x35

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Config of bitmap ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") does not match expected config ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    return-void
.end method

.method private static checkBitmapWidthHeight(Lcom/google/android/libraries/smartburst/media/BitmapHandle;II)V
    .locals 5

    .prologue
    .line 561
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 562
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 563
    if-ne v1, p1, :cond_0

    if-eq v2, p2, :cond_1

    .line 564
    :cond_0
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 565
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Size of bitmap ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match expected size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_1
    return-void
.end method

.method public static copyBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v8, v3

    invoke-static/range {v0 .. v8}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 9

    .prologue
    .line 290
    .line 1528
    if-gtz p5, :cond_0

    .line 1529
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "width must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1531
    :cond_0
    if-gtz p6, :cond_1

    .line 1532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_1
    add-int/lit8 v1, p5, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 293
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "x + width must be <= bitmap.width()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_2
    add-int/lit8 v1, p6, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "y + height must be <= bitmap.height()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_3
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 305
    new-instance v5, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p5, 0x0

    add-int/lit8 v6, p6, 0x0

    invoke-direct {v5, v1, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 306
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p5

    int-to-float v7, p6

    invoke-direct {v6, v1, v2, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 308
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 309
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_4

    .line 312
    sget-object v2, Lcom/google/android/libraries/smartburst/media/BitmapAllocators$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 323
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 328
    :cond_4
    :goto_0
    if-eqz p7, :cond_5

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 330
    :cond_5
    invoke-interface {p0, p1, p5, p6, v2}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v2

    .line 331
    const/4 v1, 0x0

    move-object v3, v2

    move-object v2, v1

    .line 357
    :cond_6
    :goto_1
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 358
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 359
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 361
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    invoke-virtual {v4, p2, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    return-object v3

    .line 314
    :pswitch_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 317
    :pswitch_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 333
    :cond_7
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 335
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 336
    move-object/from16 v0, p7

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 338
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 339
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 342
    if-eqz v1, :cond_8

    .line 343
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 342
    :cond_8
    invoke-interface {p0, p1, v3, v8, v2}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v3

    .line 345
    iget v2, v7, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v4, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 348
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 349
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 350
    if-eqz v1, :cond_6

    .line 351
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_1

    .line 333
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmapFromByteBuffer(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 2

    .prologue
    .line 383
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, p1, p3, p4, v0}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v1

    .line 384
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 385
    return-object v1
.end method

.method public static createBlankWhiteBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/utils/Size;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 435
    iget v0, p1, Lcom/google/android/libraries/smartburst/utils/Size;->width:I

    iget v1, p1, Lcom/google/android/libraries/smartburst/utils/Size;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, p2, v0, v1, v2}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v1

    .line 437
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 440
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 442
    return-object v1
.end method

.method public static createScaledBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 170
    const-class v1, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v7, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-nez v7, :cond_0

    .line 177
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 181
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 182
    int-to-float v0, p3

    int-to-float v1, v5

    div-float/2addr v0, v1

    .line 183
    int-to-float v1, p4

    int-to-float v2, v6

    div-float v2, v1, v2

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":scaled:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move-object v2, p2

    move v4, v3

    move v8, p5

    .line 186
    invoke-static/range {v0 .. v8}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 189
    const-class v1, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;

    monitor-enter v1

    .line 190
    :try_start_1
    sget-object v2, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    .line 191
    sput-object v7, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 193
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 193
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static createScaledBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Lcom/google/android/libraries/smartburst/media/BitmapHandle;IIZ)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 6

    .prologue
    .line 216
    invoke-interface {p2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createScaledBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    invoke-static {p0, p1, v0}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->decodeFile(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 6

    .prologue
    .line 78
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v1, "file:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    invoke-interface {p0, v0, v1}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->wrapBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 88
    :goto_1
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1489
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1490
    const-string v1, "file:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    :goto_2
    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1492
    const-string v1, "BitmapAllocators"

    const-string v5, "decodeFile called with existing bitmap, taking ownership"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p0, v0, v1}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->wrapBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 1498
    :goto_3
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1499
    invoke-static {v1, v0}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->checkBitmapAndHandle(Landroid/graphics/Bitmap;Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V

    .line 1500
    invoke-static {v0, v2, v3}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->checkBitmapWidthHeight(Lcom/google/android/libraries/smartburst/media/BitmapHandle;II)V

    .line 1501
    invoke-static {v0, v4}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->checkBitmapConfig(Lcom/google/android/libraries/smartburst/media/BitmapHandle;Landroid/graphics/Bitmap$Config;)V

    goto :goto_1

    .line 1490
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1495
    :cond_3
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v1

    .line 1496
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_3
.end method

.method public static decodeFile(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Rect;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 6

    .prologue
    .line 122
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 124
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {p0, v0, v3, v4, v2}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v3

    .line 127
    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 129
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 132
    invoke-static {v1, v3}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->checkBitmapAndHandle(Landroid/graphics/Bitmap;Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V

    .line 133
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->checkBitmapWidthHeight(Lcom/google/android/libraries/smartburst/media/BitmapHandle;II)V

    .line 134
    invoke-static {v3, v2}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->checkBitmapConfig(Lcom/google/android/libraries/smartburst/media/BitmapHandle;Landroid/graphics/Bitmap$Config;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-object v3

    .line 136
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not decoded bitmap region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
