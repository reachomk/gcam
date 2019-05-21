.class public final Lcom/android/camera/exif/ExifTransformingStateMachine;
.super Lcom/android/camera/util/ProcessingOutputStream$StateMachine;
.source "ExifTransformingStateMachine.java"


# static fields
.field private static final EXIF_HEADER:[B

.field private static final ICC_PROFILE_HEADER:[B


# instance fields
.field private embedICCProfile:Z

.field private final mExifData:Lcom/android/camera/exif/ExifData;

.field private final mInterface:Lcom/android/camera/exif/ExifInterface;

.field private marker:S

.field private sectionLength:S

.field private sectionReadLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ExifTransFSM"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/exif/ExifTransformingStateMachine;->EXIF_HEADER:[B

    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/exif/ExifTransformingStateMachine;->ICC_PROFILE_HEADER:[B

    return-void

    .line 34
    nop

    :array_0
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 38
    nop

    :array_1
    .array-data 1
        0x49t
        0x43t
        0x43t
        0x5ft
        0x50t
        0x52t
        0x4ft
        0x46t
        0x49t
        0x4ct
        0x45t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/android/camera/exif/ExifInterface;Lcom/android/camera/exif/ExifData;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;-><init>(Ljava/io/OutputStream;I)V

    .line 56
    iput-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    .line 57
    iput-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    .line 58
    iput v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->embedICCProfile:Z

    .line 64
    iput-object p2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 65
    iput-object p3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    .line 66
    return-void
.end method

.method private final calculateAllOffset()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v2

    .line 459
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 460
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 462
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 463
    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 465
    iget-object v4, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_0

    .line 467
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 468
    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 469
    invoke-virtual {v3, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 470
    invoke-static {v4, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 474
    if-eqz v3, :cond_1

    .line 475
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 476
    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 480
    if-eqz v3, :cond_2

    .line 481
    invoke-virtual {v2, v0}, Lcom/android/camera/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 482
    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 486
    :cond_2
    iget-object v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 488
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 489
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    .line 499
    :goto_0
    return v1

    .line 490
    :cond_3
    iget-object v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 491
    iget-object v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v2

    .line 492
    new-array v2, v2, [J

    move v6, v1

    move v1, v0

    move v0, v6

    .line 493
    :goto_1
    iget-object v4, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 494
    int-to-long v4, v1

    aput-wide v4, v2, v0

    .line 495
    iget-object v4, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v4, v0}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    :cond_4
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method private static calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I
    .locals 8

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/camera/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int v1, p1, v0

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 338
    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 339
    invoke-virtual {v4}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 340
    invoke-virtual {v4, v0}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    .line 341
    invoke-virtual {v4}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return v0
.end method

.method private final createRequiredIfdAndTag()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x2f

    .line 349
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/android/camera/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 352
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 355
    if-nez v1, :cond_1

    .line 356
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 361
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v1

    .line 362
    if-nez v1, :cond_2

    .line 363
    new-instance v1, Lcom/android/camera/exif/IfdData;

    invoke-direct {v1, v4}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 364
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3, v1}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 369
    if-eqz v3, :cond_4

    .line 370
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 371
    if-nez v3, :cond_3

    .line 372
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 381
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 382
    if-nez v0, :cond_5

    .line 383
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, v5}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 394
    if-nez v0, :cond_7

    .line 395
    new-instance v0, Lcom/android/camera/exif/IfdData;

    invoke-direct {v0, v5}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 396
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 399
    :cond_7
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 400
    invoke-virtual {v1, v2}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 401
    if-nez v1, :cond_8

    .line 402
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 407
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 408
    invoke-virtual {v1, v2}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 409
    if-nez v1, :cond_9

    .line 410
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_9
    iget-object v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 416
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 419
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 420
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 454
    :cond_a
    :goto_0
    return-void

    .line 421
    :cond_b
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 422
    if-nez v0, :cond_c

    .line 423
    new-instance v0, Lcom/android/camera/exif/IfdData;

    invoke-direct {v0, v5}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 424
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 426
    :cond_c
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v1

    .line 427
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 428
    if-nez v3, :cond_d

    .line 429
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_d
    iget-object v4, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    .line 433
    if-nez v4, :cond_e

    .line 434
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_e
    new-array v5, v1, [J

    move v1, v2

    .line 438
    :goto_1
    iget-object v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 439
    iget-object v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2, v1}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    aput-wide v6, v5, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 441
    :cond_f
    invoke-virtual {v4, v5}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    .line 442
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 443
    invoke-virtual {v0, v4}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 445
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 446
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0

    .line 447
    :cond_10
    if-eqz v0, :cond_a

    .line 449
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 450
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 451
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 452
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0
.end method

.method private static ensureSectionLengthPositive(IS)V
    .locals 5

    .prologue
    .line 189
    if-gez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Negative section length: section length read was 0x%02X%02X"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    and-int/lit16 v4, p1, 0xff

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 191
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    return-void
.end method

.method private static isExifHeader([B)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 207
    array-length v1, p0

    if-ge v1, v4, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 210
    :goto_1
    if-ge v1, v4, :cond_2

    .line 211
    aget-byte v2, p0, v1

    sget-object v3, Lcom/android/camera/exif/ExifTransformingStateMachine;->EXIF_HEADER:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final writeExifData(Lcom/android/camera/exif/ExifData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 223
    .line 1271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifTag;

    .line 1273
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v4

    invoke-static {v4}, Lcom/android/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1274
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v4

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/exif/ExifData;->removeTag(SI)V

    .line 1275
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->createRequiredIfdAndTag()V

    .line 225
    invoke-direct {p0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->calculateAllOffset()I

    move-result v0

    .line 226
    add-int/lit8 v3, v0, 0x8

    const v4, 0xffff

    if-le v3, v4, :cond_2

    .line 227
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_2
    const/16 v3, -0x1f

    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 230
    sget-object v3, Lcom/android/camera/exif/ExifTransformingStateMachine;->EXIF_HEADER:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 231
    sget-object v0, Lcom/android/camera/exif/ExifTransformingStateMachine;->EXIF_HEADER:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->write([B)V

    .line 233
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_6

    .line 234
    const/16 v0, 0x4d4d

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 239
    :goto_1
    new-instance v0, Lcom/android/camera/exif/OrderedDataOutputStream;

    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 240
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 241
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 242
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 1292
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3, v2}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 1293
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 1294
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 1295
    if-eqz v3, :cond_3

    .line 1296
    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 1298
    :cond_3
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 1299
    if-eqz v3, :cond_4

    .line 1300
    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 1302
    :cond_4
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3, v6}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 1303
    if-eqz v3, :cond_5

    .line 1304
    iget-object v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3, v6}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 244
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeThumbnail(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    move-object v0, v1

    .line 245
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/exif/ExifTag;

    .line 246
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifData;->addTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_2

    .line 236
    :cond_6
    const/16 v0, 0x4949

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    goto :goto_1

    .line 248
    :cond_7
    return-void
.end method

.method private final writeICCProfile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Licc_profiles/SRGBBlackScaled;->getSizeInBytes()S

    move-result v0

    .line 256
    const/16 v1, -0x1e

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 257
    sget-object v1, Lcom/android/camera/exif/ExifTransformingStateMachine;->ICC_PROFILE_HEADER:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 258
    sget-object v0, Lcom/android/camera/exif/ExifTransformingStateMachine;->ICC_PROFILE_HEADER:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->write([B)V

    .line 261
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 263
    invoke-static {}, Licc_profiles/SRGBBlackScaled;->getSize()I

    move-result v1

    .line 264
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 265
    invoke-static {v0}, Licc_profiles/SRGBBlackScaled;->getShortAt(I)S

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method private static writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 310
    array-length v1, v3

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 311
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 312
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 313
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 314
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 318
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 319
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 311
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {v1, p1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 322
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v1

    rsub-int/lit8 v5, v1, 0x4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_0

    .line 323
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/exif/IfdData;->getOffsetToNextIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 328
    array-length v1, v3

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, v3, v0

    .line 329
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 330
    invoke-static {v2, p1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 328
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 333
    :cond_4
    return-void
.end method

.method private static writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 506
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getStringByte()[B

    move-result-object v1

    .line 507
    array-length v2, v1

    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 508
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 509
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 512
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 517
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getRational(I)Lcom/android/camera/util/Rational;

    move-result-object v2

    .line 2038
    invoke-virtual {v2}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 2039
    invoke-virtual {v2}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 529
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 530
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getBytes([B)V

    .line 531
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 534
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_0

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final writeThumbnail(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 289
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final step(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x28

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No such state: %d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifTransformingStateMachine;->tryReadBigEndShort(I)S

    move-result v3

    iput-short v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    .line 74
    iget-short v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    .line 1026
    and-int/lit16 v3, v3, -0x100

    const/16 v5, -0x100

    if-ne v3, v5, :cond_0

    move v3, v4

    .line 74
    :goto_0
    if-nez v3, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected section marker: %02X%02X"

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v5, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget-short v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 76
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v3, v2

    .line 1026
    goto :goto_0

    .line 81
    :cond_1
    iget-short v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    if-eq v3, v6, :cond_2

    iget-short v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    const/16 v5, -0x27

    if-ne v3, v5, :cond_4

    .line 82
    :cond_2
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 83
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeExifData(Lcom/android/camera/exif/ExifData;)V

    :cond_3
    move v0, v2

    .line 183
    :goto_1
    return v0

    .line 92
    :cond_4
    iget-short v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-static {v3}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 93
    iget-boolean v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->embedICCProfile:Z

    if-eqz v1, :cond_5

    .line 94
    invoke-direct {p0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeICCProfile()V

    .line 97
    :cond_5
    iget-short v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    goto :goto_1

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->mExifData:Lcom/android/camera/exif/ExifData;

    if-eqz v0, :cond_7

    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    const/16 v3, -0x1f

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 106
    goto :goto_1

    .line 111
    :cond_7
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    const/16 v1, -0x1e

    if-ne v0, v1, :cond_8

    .line 112
    iput-boolean v2, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->embedICCProfile:Z

    .line 117
    :cond_8
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 122
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/camera/exif/ExifTransformingStateMachine;->tryReadBigEndShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    .line 125
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 131
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    .line 132
    iget v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    iget-short v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->ensureSectionLengthPositive(IS)V

    .line 135
    iget v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->forwardBytes(I)Z

    move v0, v2

    .line 138
    goto :goto_1

    .line 142
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->tryReadBigEndShort(I)S

    move-result v1

    iput-short v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    .line 150
    iget-short v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    const v3, 0xffff

    and-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    .line 151
    iget v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    iget-short v3, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-static {v1, v3}, Lcom/android/camera/exif/ExifTransformingStateMachine;->ensureSectionLengthPositive(IS)V

    .line 153
    iget v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    const/4 v3, 0x5

    if-ge v1, v3, :cond_9

    .line 155
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 156
    iget-short v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 157
    iget v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->forwardBytes(I)Z

    move v0, v2

    .line 158
    goto :goto_1

    .line 163
    :cond_9
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->tryRead(II)[B

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    array-length v3, v0

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    .line 166
    invoke-static {v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->isExifHeader([B)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 168
    iget v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->skipBytes(I)Z

    :goto_2
    move v0, v2

    .line 178
    goto/16 :goto_1

    .line 171
    :cond_a
    iget-short v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->marker:S

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 172
    iget-short v1, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionLength:S

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTransformingStateMachine;->writeBigEndShort(S)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->write([B)V

    .line 174
    iget v0, p0, Lcom/android/camera/exif/ExifTransformingStateMachine;->sectionReadLength:I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->forwardBytes(I)Z

    goto :goto_2

    .line 182
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTransformingStateMachine;->forwardRemainder()V

    goto/16 :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
