.class Lcom/android/camera/stats/CaptureDoneEventBuilder;
.super Ljava/lang/Object;
.source "CaptureDoneEventBuilder.java"


# static fields
.field private static final GCAM_PROCESSING_TIME_TIMEOUT_MILLIES:I = 0xea60

.field public static final MAX_FACES_TO_BE_CAPTURED:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

.field private final fileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "CptDoneEvntBldr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 47
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    .line 48
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CaptureDone;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    .line 49
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 50
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->mode:I

    .line 51
    iput-object p3, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->fileName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    invoke-static {}, Lcom/android/camera/stats/FilenameHasher;->getInstance()Lcom/android/camera/stats/FilenameHasher;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/camera/stats/FilenameHasher;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->fileNameHash:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-boolean p2, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->frontCamera:Z

    .line 54
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertFace(Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;Landroid/graphics/Rect;)Lcom/google/common/logging/nano/eventprotos$Face;
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$Face;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$Face;-><init>()V

    .line 370
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$Face;->x0:F

    .line 371
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$Face;->y0:F

    .line 372
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$Face;->x1:F

    .line 373
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$Face;->y1:F

    .line 374
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;->getScore()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$Face;->score:F

    .line 377
    if-eqz p2, :cond_0

    .line 378
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$Face;->maxX:F

    .line 379
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$Face;->maxY:F

    .line 382
    :cond_0
    return-object v1
.end method

.method private exifMessage(Lcom/android/camera/exif/ExifInterface;)Lcom/google/common/logging/nano/eventprotos$ExifMetaData;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 389
    new-instance v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;

    invoke-direct {v3}, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;-><init>()V

    .line 391
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    iput-object v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    .line 395
    :cond_0
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_1

    .line 397
    iput-object v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    .line 399
    :cond_1
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_2

    .line 401
    iput-object v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    .line 403
    :cond_2
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/util/Rational;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v6

    long-to-float v0, v6

    div-float v0, v4, v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureTime:F

    .line 407
    :cond_3
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->iso:I

    .line 411
    :cond_4
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/util/Rational;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_5

    .line 413
    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v6

    long-to-float v0, v6

    div-float v0, v4, v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->focalLength:F

    .line 415
    :cond_5
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/util/Rational;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_6

    .line 417
    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v6

    long-to-float v0, v6

    div-float v0, v4, v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->aperture:F

    .line 422
    :cond_6
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/util/Rational;

    move-result-object v0

    .line 423
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p1, v4}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/util/Rational;

    move-result-object v4

    .line 424
    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->hasLocation:Z

    .line 427
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_7

    .line 429
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->orientation:I

    .line 431
    :cond_7
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_8

    .line 433
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->height:I

    .line 435
    :cond_8
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_9

    .line 437
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->width:I

    .line 439
    :cond_9
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_c

    .line 441
    iput-boolean v1, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    .line 442
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValue:I

    .line 446
    :goto_1
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/util/Rational;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_a

    .line 449
    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v4

    long-to-float v1, v4

    mul-float/2addr v1, v8

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v4

    long-to-float v0, v4

    div-float v0, v1, v0

    iput v0, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureCompensation:F

    .line 451
    :cond_a
    return-object v3

    :cond_b
    move v0, v2

    .line 424
    goto :goto_0

    .line 444
    :cond_c
    iput-boolean v2, v3, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/google/common/logging/nano/eventprotos$CameraEvent;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    return-object v0
.end method

.method public setAuthorStats(Lcom/android/camera/stats/AuthorStatsHelper;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->fileName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/camera/stats/AuthorStatsHelper;->updateAuthorshipStats(Ljava/lang/String;)Lcom/android/camera/stats/AuthorStats;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$AuthorStats;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$AuthorStats;-><init>()V

    .line 286
    iget v2, v0, Lcom/android/camera/stats/AuthorStats;->searchDays:F

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchDays:F

    .line 287
    iget v2, v0, Lcom/android/camera/stats/AuthorStats;->searchItems:I

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchItems:I

    .line 288
    iget v2, v0, Lcom/android/camera/stats/AuthorStats;->googleCameraItems:I

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->googleCameraItems:I

    .line 289
    iget v0, v0, Lcom/android/camera/stats/AuthorStats;->totalItems:F

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->totalItems:F

    .line 290
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->authorStats:Lcom/google/common/logging/nano/eventprotos$AuthorStats;

    .line 292
    :cond_0
    return-object p0
.end method

.method public setCaptureFailure(I)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->captureFailure:I

    .line 344
    return-object p0
.end method

.method public setDirtyLensProbability(Ljava/lang/Float;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "dirtyLensProbability is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-object p0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    new-instance v1, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->adviceMeta:Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;

    .line 180
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->adviceMeta:Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->dirtyLensProbability:F

    goto :goto_0
.end method

.method public setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "exif data is null; not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-object p0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    invoke-direct {p0, p1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->exifMessage(Lcom/android/camera/exif/ExifInterface;)Lcom/google/common/logging/nano/eventprotos$ExifMetaData;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->exif:Lcom/google/common/logging/nano/eventprotos$ExifMetaData;

    goto :goto_0
.end method

.method public setFaces(Ljava/util/List;Landroid/graphics/Rect;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/android/camera/stats/CaptureDoneEventBuilder;"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "camera2Faces is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-object p0

    .line 69
    :cond_0
    const/4 v0, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 70
    new-array v3, v2, [Lcom/google/common/logging/nano/eventprotos$Face;

    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->convertFace(Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;Landroid/graphics/Rect;)Lcom/google/common/logging/nano/eventprotos$Face;

    move-result-object v0

    aput-object v0, v3, v1

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object v3, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    goto :goto_0
.end method

.method public setFlashSetting(I)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->flashSetting:I

    .line 213
    return-object p0
.end method

.method public setFlashSetting(Ljava/lang/String;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 190
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "flashSetting is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-object p0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->flashSetting:I

    .line 195
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->flashSetting:I

    goto :goto_0

    .line 197
    :cond_2
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->flashSetting:I

    goto :goto_0

    .line 199
    :cond_3
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->flashSetting:I

    goto :goto_0
.end method

.method public setGcamMeta(Lcom/google/common/logging/nano/eventprotos$GcamStats;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "gcamMeta is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-object p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->gcamMeta:Lcom/google/common/logging/nano/eventprotos$GcamStats;

    goto :goto_0
.end method

.method public setGridLinesOn(Z)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-boolean p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->gridLines:Z

    .line 222
    return-object p0
.end method

.method public setLensBlurMetaData(Lcom/google/common/logging/nano/eventprotos$LensBlurMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "lensBlurMetaData is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object p0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->lensBlurMeta:Lcom/google/common/logging/nano/eventprotos$LensBlurMetaData;

    goto :goto_0
.end method

.method public setLuckyShotMeta(Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "luckyShotMeta is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-object p0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->luckyShotMeta:Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;

    goto :goto_0
.end method

.method public setMeteringData(Lcom/google/common/logging/nano/eventprotos$MeteringData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->meteringData:Lcom/google/common/logging/nano/eventprotos$MeteringData;

    .line 338
    return-object p0
.end method

.method public setPanoramaMetaData(Lcom/google/common/logging/nano/eventprotos$PanoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "panoMeta is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-object p0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->panoMeta:Lcom/google/common/logging/nano/eventprotos$PanoMetaData;

    goto :goto_0
.end method

.method public setPhotoMeta(Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "photoMeta is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-object p0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->photoMeta:Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

    goto :goto_0
.end method

.method public setProcessingTime(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->processingTime:F

    .line 241
    return-object p0
.end method

.method public declared-synchronized setProcessingTimeFromGcamCaptureTimes(Ljava/util/LinkedList;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;",
            ">;)",
            "Lcom/android/camera/stats/CaptureDoneEventBuilder;"
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iget v0, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->mode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 301
    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 303
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;

    .line 304
    iget-wide v4, v0, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;->captureTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 305
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Flushing old Gcam capture time"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v1, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iget-wide v4, v0, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;->captureTime:J

    sub-long/2addr v2, v4

    .line 308
    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToSecondsFloat(J)F

    move-result v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->processingTime:F

    .line 309
    iget-object v1, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v1, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iget v0, v0, Lcom/android/camera/stats/GcamUsageStatistics$CaptureTimeInfo;->shotsInFlight:I

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->photosInFlight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :cond_2
    monitor-exit p0

    return-object p0
.end method

.method public setSmartBurstCreationMeta(Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->smartburstCreationMeta:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    .line 278
    return-object p0
.end method

.method public setSmartBurstMeta(Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "smartBurstMeta is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-object p0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->smartBurstMeta:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    goto :goto_0
.end method

.method public setTimerSeconds(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->timerSeconds:F

    .line 232
    return-object p0
.end method

.method public setTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "touch is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-object p0

    .line 326
    :cond_0
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;-><init>()V

    .line 327
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getX()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    .line 328
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getY()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    .line 329
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getMaxX()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    .line 330
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getMaxY()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    .line 331
    iget-object v1, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v1, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    goto :goto_0
.end method

.method public setVideoMeta(Lcom/google/common/logging/nano/eventprotos$VideoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 2

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    sget-object v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->TAG:Ljava/lang/String;

    const-string v1, "videoMeta is null, not adding to stats"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-object p0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->videoMeta:Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

    goto :goto_0
.end method

.method public setVolumeButtonShutter(Z)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput-boolean p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->volumeButtonShutter:Z

    .line 167
    return-object p0
.end method

.method public setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/stats/CaptureDoneEventBuilder;->event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureDone;->zoomValue:F

    .line 100
    return-object p0
.end method
