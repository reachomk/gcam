.class public final Lcom/google/android/apps/refocus/processing/DepthmapTask;
.super Ljava/lang/Object;
.source "DepthmapTask.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTask;


# static fields
.field private static final JPEG_QUALITY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final author:Ljava/lang/String;

.field private final dataset:Lcom/google/android/apps/refocus/capture/Dataset;

.field private finishedCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final focalLength35mm:I

.field private final frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/refocus/capture/FrameSelection$SelectedFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final frontFacingCamera:Z

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final location:Landroid/location/Location;

.field private final maxNativeMemory:Lcom/android/camera/memory/MaxNativeMemory;

.field private final memoryManager:Lcom/android/camera/memory/MemoryManager;

.field private final orientation:I

.field private final reference:Lcom/google/android/apps/refocus/image/ColorImage;

.field private final session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private final startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "DepthmapTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->JPEG_QUALITY:I

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/android/camera/memory/MemoryManager;Lcom/google/android/apps/refocus/capture/Dataset;IIZLjava/lang/String;Landroid/location/Location;Lcom/android/camera/session/StackableSession;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->memoryManager:Lcom/android/camera/memory/MemoryManager;

    .line 96
    iput-object p2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    .line 97
    iput p3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    .line 98
    iput p4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->focalLength35mm:I

    .line 99
    iput-boolean p5, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frontFacingCamera:Z

    .line 100
    iput-object p6, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->author:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->location:Landroid/location/Location;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->startTimeMillis:J

    .line 103
    iput-object p8, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 104
    iput-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    .line 105
    iput-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 106
    iput-object p9, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->maxNativeMemory:Lcom/android/camera/memory/MaxNativeMemory;

    .line 107
    iput-object p10, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/memory/MemoryManager;Lcom/google/android/apps/refocus/capture/Dataset;Ljava/util/ArrayList;Lcom/google/android/apps/refocus/image/ColorImage;IIZLjava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/memory/MemoryManager;",
            "Lcom/google/android/apps/refocus/capture/Dataset;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/refocus/capture/FrameSelection$SelectedFrame;",
            ">;",
            "Lcom/google/android/apps/refocus/image/ColorImage;",
            "IIZ",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/memory/MaxNativeMemory;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->memoryManager:Lcom/android/camera/memory/MemoryManager;

    .line 133
    iput-object p2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    .line 134
    iput-object p3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    .line 135
    iput-object p4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 136
    iput p5, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    .line 137
    iput p6, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->focalLength35mm:I

    .line 138
    iput-boolean p7, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frontFacingCamera:Z

    .line 139
    iput-object p8, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->author:Ljava/lang/String;

    .line 140
    iput-object p9, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->location:Landroid/location/Location;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->startTimeMillis:J

    .line 1151
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Dataset;->getName()Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-wide v4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->startTimeMillis:J

    .line 1625
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->location:Landroid/location/Location;

    .line 144
    move-object/from16 v0, p10

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession$5166KOBMC4NMOOBECSNL6T3ID5N6EEQA9HGMSP3IDTKM8BRCDTHM2T39DTN2UJ3FCDGN8QBFDOTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 145
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->maxNativeMemory:Lcom/android/camera/memory/MaxNativeMemory;

    .line 146
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/refocus/processing/DepthmapTask;)Lcom/google/android/apps/refocus/image/ColorImage;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/refocus/processing/DepthmapTask;)Lcom/google/android/apps/refocus/capture/Dataset;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    return-object v0
.end method

.method private final computeRGBZ(Landroid/content/Context;Lcom/google/android/apps/refocus/processing/ProgressCallback;Z)Lcom/google/android/apps/refocus/image/RGBZ;
    .locals 12

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    const/4 v0, 0x0

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 4444
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4445
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v0

    .line 344
    :goto_1
    if-gtz v7, :cond_4

    .line 345
    new-instance v0, Lcom/google/android/apps/refocus/image/RGBZ;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->getReferenceBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->rotate(Lcom/google/android/apps/refocus/image/RGBZ;I)Lcom/google/android/apps/refocus/image/RGBZ;

    move-result-object v0

    goto :goto_0

    .line 4448
    :cond_2
    const/4 v0, 0x0

    .line 4449
    :goto_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/refocus/capture/Dataset;->getFramePath(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v7, v0

    .line 4452
    goto :goto_1

    .line 348
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->getReferenceBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->getFrame(I)Lcom/google/android/apps/refocus/image/ColorImage;

    move-result-object v8

    .line 350
    if-nez v2, :cond_5

    .line 351
    const/4 v0, 0x0

    goto :goto_0

    .line 4580
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    if-ne v0, v1, :cond_7

    move-object v6, v2

    .line 355
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 356
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_6

    .line 357
    sget-object v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    const-string v1, "Reference / frame aspect ratio mismatch"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    .line 359
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Reference size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Frame size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_6
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/refocus/processing/ProgressCallback;->setRange(FF)V

    .line 364
    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v0

    .line 365
    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v1

    .line 5412
    if-eqz p3, :cond_9

    .line 5413
    const/16 v2, 0x500

    .line 371
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 369
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 376
    iget v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->focalLength35mm:I

    const/4 v4, 0x1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/refocus/processing/ProcessingNative;->Init(IIIIZLcom/google/android/apps/refocus/processing/ProgressCallback;)V

    .line 377
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/google/android/apps/refocus/processing/ProcessingNative;->AddFrame(Lcom/google/android/apps/refocus/image/ColorImage;F)V

    .line 378
    const/4 v0, 0x1

    :goto_5
    if-ge v0, v7, :cond_a

    .line 379
    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->getFrame(I)Lcom/google/android/apps/refocus/image/ColorImage;

    move-result-object v1

    int-to-float v2, v0

    int-to-float v3, v7

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/refocus/processing/ProcessingNative;->AddFrame(Lcom/google/android/apps/refocus/image/ColorImage;F)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4584
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 4585
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 4586
    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    if-le v1, v3, :cond_8

    .line 4587
    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v3

    div-int/2addr v1, v3

    .line 4593
    :goto_6
    rem-int/lit8 v3, v1, 0x8

    sub-int/2addr v1, v3

    .line 4594
    rem-int/lit8 v3, v0, 0x8

    sub-int/2addr v0, v3

    .line 4596
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 4597
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 4598
    sget-object v5, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    .line 4601
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 4603
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x45

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Cropping image "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " x "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " -> "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " x "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4598
    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4608
    invoke-static {v2, v3, v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4609
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v0

    .line 4610
    goto/16 :goto_3

    .line 4589
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-virtual {v8}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v3

    div-int/2addr v0, v3

    goto :goto_6

    .line 5414
    :cond_9
    const/16 v2, 0x280

    goto/16 :goto_4

    .line 382
    :cond_a
    const/4 v0, 0x0

    .line 384
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v6, v1}, Lcom/google/android/apps/refocus/processing/ProcessingNative;->ComputeRGBZ(Landroid/graphics/Bitmap;Z)Lcom/google/android/apps/refocus/image/RGBZ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 389
    :goto_7
    if-nez v0, :cond_b

    .line 390
    new-instance v0, Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-direct {v0, v6}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/graphics/Bitmap;)V

    .line 395
    :cond_b
    iget v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->rotate(Lcom/google/android/apps/refocus/image/RGBZ;I)Lcom/google/android/apps/refocus/image/RGBZ;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const v2, 0x7f0a0239

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/session/StackableSession;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 5558
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5562
    new-instance v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    invoke-direct {v2, v0}, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;-><init>(Lcom/google/android/apps/refocus/image/RGBZ;)V

    .line 5563
    new-instance v3, Lcom/google/android/apps/refocus/processing/FaceDetector;

    invoke-direct {v3, p1, v1}, Lcom/google/android/apps/refocus/processing/FaceDetector;-><init>(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 5564
    iget-object v1, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-static {v3, v1}, Lcom/google/android/apps/refocus/processing/FocusSettings;->createDefault(Lcom/google/android/apps/refocus/processing/FaceDetector;Lcom/google/android/apps/refocus/image/RGBZ;)Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v1

    .line 5565
    iget v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iput v3, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->focalDepth:F

    .line 5566
    iget v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iput v3, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->depthOfField:F

    .line 5567
    iget v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    iget-object v4, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 5568
    invoke-virtual {v4}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v4

    iget-object v5, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v5}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->blurInfinity:F

    .line 5570
    new-instance v3, Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;

    invoke-direct {v3}, Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;-><init>()V

    .line 5571
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;->startProgress:F

    .line 5572
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;->endProgress:F

    .line 5573
    new-instance v4, Lcom/google/android/apps/refocus/processing/TiledRenderer;

    new-instance v5, Lcom/google/android/apps/refocus/processing/Renderer;

    sget v6, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    invoke-direct {v5, p1, v6}, Lcom/google/android/apps/refocus/processing/Renderer;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v3, v5}, Lcom/google/android/apps/refocus/processing/TiledRenderer;-><init>(Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;Lcom/google/android/apps/refocus/processing/Renderer;)V

    .line 5575
    invoke-virtual {v4, v2, p2}, Lcom/google/android/apps/refocus/processing/TiledRenderer;->render(Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;Lcom/google/android/apps/refocus/processing/ProgressCallback;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/refocus/image/RGBZ;->setPreview(Landroid/graphics/Bitmap;)V

    .line 5576
    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->setFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)V

    goto/16 :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 387
    sget-object v2, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    const-string v3, "ComputeDepthmap segment faulted"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private final getFrame(I)Lcom/google/android/apps/refocus/image/ColorImage;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/capture/FrameSelection$SelectedFrame;

    iget-object v0, v0, Lcom/google/android/apps/refocus/capture/FrameSelection$SelectedFrame;->image:Lcom/google/android/apps/refocus/image/ColorImage;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-object v0

    .line 465
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/refocus/capture/Dataset;->getFramePath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/refocus/image/ColorImageIO;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/apps/refocus/image/ColorImage;

    move-result-object v0

    goto :goto_0
.end method

.method private final getReferenceBitmap(ZZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x800

    .line 483
    .line 484
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-static {v2}, Lcom/google/android/apps/refocus/image/ColorImageIO;->toBitmap(Lcom/google/android/apps/refocus/image/ColorImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 489
    :goto_0
    if-nez v2, :cond_1

    .line 490
    sget-object v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    const-string v2, "No valid reference Bitmap found"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 521
    :goto_1
    return-object v0

    .line 486
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/capture/Dataset;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 487
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/capture/Dataset;->getPhotoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 495
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 6427
    if-eqz p2, :cond_3

    .line 6428
    if-eqz p1, :cond_2

    const/16 v0, 0x1000

    .line 497
    :cond_2
    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v4, v0, :cond_5

    .line 498
    rem-int/lit8 v0, v1, 0x8

    if-nez v0, :cond_4

    rem-int/lit8 v0, v3, 0x8

    if-nez v0, :cond_4

    move-object v0, v2

    .line 499
    goto :goto_1

    .line 6430
    :cond_3
    if-nez p1, :cond_2

    const/16 v0, 0x400

    goto :goto_2

    .line 501
    :cond_4
    rem-int/lit8 v0, v1, 0x8

    .line 502
    rem-int/lit8 v4, v3, 0x8

    .line 503
    sub-int/2addr v1, v0

    .line 504
    sub-int/2addr v3, v4

    .line 505
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v0, v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 510
    :cond_5
    if-le v1, v3, :cond_6

    .line 511
    mul-int/2addr v3, v0

    div-int v1, v3, v1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 517
    :goto_3
    rem-int/lit8 v3, v1, 0x8

    sub-int/2addr v1, v3

    .line 518
    rem-int/lit8 v3, v0, 0x8

    sub-int/2addr v0, v3

    .line 519
    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 514
    :cond_6
    mul-int/2addr v1, v0

    div-int/2addr v1, v3

    goto :goto_3

    :cond_7
    move-object v2, v1

    goto :goto_0
.end method

.method private final isValid()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Dataset;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final saveAndFinish(Lcom/google/android/apps/refocus/image/RGBZ;)V
    .locals 10

    .prologue
    .line 307
    sget v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->JPEG_QUALITY:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/refocus/image/RGBZ;->createRgbzFile(I)Lcom/google/android/apps/refocus/image/RGBZ$Data;

    move-result-object v6

    .line 308
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v1

    iget-object v2, v6, Lcom/google/android/apps/refocus/image/RGBZ$Data;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3525
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    if-eqz v3, :cond_3

    .line 3526
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/image/ColorImage;->getFormat()I

    move-result v3

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    .line 3528
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/image/ColorImage;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3279
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifInterface;->removeCompressedThumbnail()V

    .line 3282
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->location:Landroid/location/Location;

    if-eqz v3, :cond_1

    .line 3283
    new-instance v3, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v3, v2}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    iget-object v4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->location:Landroid/location/Location;

    invoke-virtual {v3, v4}, Lcom/android/camera/util/ExifUtil;->addLocationToExif(Landroid/location/Location;)V

    .line 3287
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->author:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 3288
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    iget-object v4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->author:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3291
    :cond_2
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3292
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3295
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3296
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3299
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    iget v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->focalLength35mm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3302
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->TOP_LEFT:Lcom/android/camera/exif/ExifOrientation;

    .line 3303
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifOrientation;->getTagExifValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 3302
    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->startTimeMillis:J

    sub-long v8, v0, v2

    .line 314
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v5

    .line 315
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    .line 4151
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/capture/Dataset;->getName()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/apps/refocus/image/RGBZ$Data;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-boolean v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frontFacingCamera:Z

    const v4, 0x3a83126f    # 0.001f

    long-to-float v7, v8

    mul-float/2addr v4, v7

    .line 316
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->refocusCaptureDoneEvent(Ljava/lang/String;Lcom/android/camera/exif/ExifInterface;ZFZ)V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iget-object v1, v6, Lcom/google/android/apps/refocus/image/RGBZ$Data;->fileData:[B

    .line 325
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/google/android/apps/refocus/image/RGBZ$Data;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 324
    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveAndFinish(Lcom/android/camera/session/SessionBase;[BIIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 326
    return-void

    .line 3530
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    const-string v4, "Could not read exif tags from reference image"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3536
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v4}, Lcom/google/android/apps/refocus/capture/Dataset;->getPhotoPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3538
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/capture/Dataset;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3540
    :catch_1
    move-exception v3

    sget-object v3, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    const-string v4, "Could not read exif tags from reference image"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final getSession()Lcom/android/camera/session/SessionBase;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method public final process(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->memoryManager:Lcom/android/camera/memory/MemoryManager;

    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 2254
    new-instance v2, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;

    invoke-direct {v2, v0}, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;-><init>(Lcom/android/camera/session/StackableSession;)V

    .line 2550
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->maxNativeMemory:Lcom/android/camera/memory/MaxNativeMemory;

    invoke-virtual {v0}, Lcom/android/camera/memory/MaxNativeMemory;->getMaxAllowedNativeMemoryBytes()J

    move-result-wide v4

    const-wide/32 v6, 0xaf00000

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 2255
    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->computeRGBZ(Landroid/content/Context;Lcom/google/android/apps/refocus/processing/ProgressCallback;Z)Lcom/google/android/apps/refocus/image/RGBZ;

    move-result-object v0

    .line 2257
    if-nez v0, :cond_1

    .line 3267
    sget-object v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    const-string v2, "Processing was successful: false"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const v2, 0x7f0a023a

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/camera/session/StackableSession;->finishWithFailure(Lcom/android/camera/ui/UiString;Z)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {v0, p0}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 158
    return-void

    :cond_0
    move v0, v1

    .line 2550
    goto :goto_0

    .line 2260
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->saveAndFinish(Lcom/google/android/apps/refocus/image/RGBZ;)V

    goto :goto_1
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public final save()Lcom/google/android/apps/refocus/processing/DepthmapTask;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 166
    const-string v1, "DepthmapEx"

    invoke-static {v1, v0}, Lcom/google/android/apps/camera/async/Futures2;->newFixedThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 168
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/google/android/apps/refocus/processing/DepthmapTask$1;

    invoke-direct {v0, p0, v4}, Lcom/google/android/apps/refocus/processing/DepthmapTask$1;-><init>(Lcom/google/android/apps/refocus/processing/DepthmapTask;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    move v1, v2

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/capture/FrameSelection$SelectedFrame;

    iget-object v0, v0, Lcom/google/android/apps/refocus/capture/FrameSelection$SelectedFrame;->image:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 183
    iget-object v5, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    invoke-virtual {v5, v1}, Lcom/google/android/apps/refocus/capture/Dataset;->getFramePath(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    new-instance v6, Lcom/google/android/apps/refocus/processing/DepthmapTask$2;

    invoke-direct {v6, v4, v0, v5}, Lcom/google/android/apps/refocus/processing/DepthmapTask$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/apps/refocus/image/ColorImage;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 195
    const-wide/16 v0, 0x14

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v0, v1, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    const/4 v0, 0x0

    .line 205
    :goto_2
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 205
    :cond_2
    new-instance v0, Lcom/google/android/apps/refocus/processing/DepthmapTask;

    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->memoryManager:Lcom/android/camera/memory/MemoryManager;

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->dataset:Lcom/google/android/apps/refocus/capture/Dataset;

    iget v3, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    iget v4, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->focalLength35mm:I

    iget-boolean v5, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->frontFacingCamera:Z

    iget-object v6, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->author:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->location:Landroid/location/Location;

    iget-object v8, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iget-object v9, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->maxNativeMemory:Lcom/android/camera/memory/MaxNativeMemory;

    iget-object v10, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/refocus/processing/DepthmapTask;-><init>(Lcom/android/camera/memory/MemoryManager;Lcom/google/android/apps/refocus/capture/Dataset;IIZLjava/lang/String;Landroid/location/Location;Lcom/android/camera/session/StackableSession;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    goto :goto_2
.end method

.method public final savePhotoWithoutDepth()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v0, Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-direct {p0, v1, v1}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->getReferenceBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->rotate(Lcom/google/android/apps/refocus/image/RGBZ;I)Lcom/google/android/apps/refocus/image/RGBZ;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->saveAndFinish(Lcom/google/android/apps/refocus/image/RGBZ;)V

    goto :goto_0
.end method

.method public final setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 621
    return-void
.end method

.method public final startSession$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-direct {p0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/refocus/processing/DepthmapTask;->getReferenceBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->orientation:I

    invoke-static {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    if-nez v1, :cond_2

    .line 241
    sget-object v1, Lcom/google/android/apps/refocus/processing/DepthmapTask;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->reference:Lcom/google/android/apps/refocus/image/ColorImage;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No valid preview found, disk task = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/DepthmapTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    sget v3, Lcom/google/android/apps/refocus/processing/DepthmapTask;->JPEG_QUALITY:I

    .line 246
    invoke-static {v1, v3}, Lcom/google/android/apps/refocus/image/BitmapIO;->toByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    const v3, 0x7f0a0239

    new-array v0, v0, [Ljava/lang/Object;

    .line 247
    invoke-static {v3, v0}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v0

    sget-object v3, Lcom/android/camera/session/CaptureSession$SessionType;->LENS_BLUR:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 245
    invoke-interface {v2, v1, v0, v3}, Lcom/android/camera/session/StackableSession;->startSession([BLcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V

    goto :goto_0
.end method

.method public final suspend()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method
