.class public final Lcom/android/camera/util/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "CameraUtil"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/CameraUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 205
    cmpl-float v2, p0, v0

    if-lez v2, :cond_1

    move p0, v0

    .line 211
    :cond_0
    :goto_0
    return p0

    .line 208
    :cond_1
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    move p0, v1

    .line 209
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    .prologue
    .line 191
    if-le p0, p2, :cond_0

    .line 197
    :goto_0
    return p2

    .line 194
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 195
    goto :goto_0

    :cond_1
    move p2, p0

    .line 197
    goto :goto_0
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 109
    .line 1126
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v1

    .line 1127
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v1

    .line 1129
    if-gez p2, :cond_1

    move v1, v0

    .line 1132
    :goto_0
    const/16 v2, 0x80

    .line 1135
    if-ge v2, v1, :cond_2

    .line 112
    :cond_0
    :goto_1
    const/16 v2, 0x8

    if-gt v1, v2, :cond_3

    .line 114
    :goto_2
    if-ge v0, v1, :cond_4

    .line 115
    shl-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1129
    :cond_1
    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    goto :goto_0

    .line 1140
    :cond_2
    if-gez p2, :cond_0

    move v1, v0

    .line 1141
    goto :goto_1

    .line 118
    :cond_3
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    .line 121
    :cond_4
    return v0
.end method

.method public static getNumCpuCores()I
    .locals 3

    .prologue
    .line 542
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    new-instance v1, Lcom/android/camera/util/CameraUtil$1CpuFilter;

    invoke-direct {v1}, Lcom/android/camera/util/CameraUtil$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 546
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return v0

    .line 547
    :catch_0
    move-exception v0

    .line 549
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Ljava/lang/String;

    const-string v2, "Failed to count number of cores, defaulting to 1"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x7530

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    .line 1331
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    sget-object v0, Lcom/android/camera/util/CameraUtil;->TAG:Ljava/lang/String;

    const-string v1, "No suppoted frame rates returned!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 1363
    :goto_0
    return-object v0

    .line 1337
    :cond_0
    const v0, 0x61a80

    .line 1338
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1339
    aget v2, v0, v3

    .line 1340
    aget v0, v0, v9

    .line 1341
    if-lt v0, v5, :cond_5

    if-gt v2, v5, :cond_5

    if-ge v2, v1, :cond_5

    move v0, v2

    :goto_2
    move v1, v0

    .line 1346
    goto :goto_1

    .line 1350
    :cond_1
    const/4 v0, -0x1

    move v2, v3

    move v4, v3

    move v5, v0

    .line 1352
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1353
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1354
    aget v8, v0, v3

    .line 1355
    aget v0, v0, v9

    .line 1356
    if-ne v8, v1, :cond_2

    if-ge v4, v0, :cond_2

    move v4, v0

    move v5, v2

    .line 1352
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1362
    :cond_3
    if-ltz v5, :cond_4

    .line 1363
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1365
    :cond_4
    sget-object v0, Lcom/android/camera/util/CameraUtil;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t find an appropiate frame rate range!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 327
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 151
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v4, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    const/4 v2, -0x1

    const v3, 0xc800

    invoke-static {v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 158
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 161
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 162
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Ljava/lang/String;

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1253
    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1254
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1255
    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1256
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 262
    return-object v0
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 266
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static resizeToFill(IIIII)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 484
    rem-int/lit16 v0, p2, 0xb4

    if-eqz v0, :cond_2

    .line 491
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 492
    iput p3, v0, Landroid/graphics/Point;->x:I

    .line 493
    iput p4, v0, Landroid/graphics/Point;->y:I

    .line 497
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 498
    mul-int v1, p1, p4

    mul-int v2, p3, p0

    if-le v1, v2, :cond_0

    .line 499
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p0

    div-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 516
    :goto_1
    return-object v0

    .line 501
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 504
    :cond_1
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x65

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "zero width/height, falling back to bounds (w|h|bw|bh):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_0
.end method
