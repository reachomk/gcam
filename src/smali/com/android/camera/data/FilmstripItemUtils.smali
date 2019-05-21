.class public final Lcom/android/camera/data/FilmstripItemUtils;
.super Ljava/lang/Object;
.source "FilmstripItemUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "LocalDataUtil"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static decodeBitmapDimension(Ljava/io/InputStream;)Landroid/graphics/Point;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    .line 49
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v1, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Ljava/lang/String;

    const-string v2, "Bitmap dimension decoding failed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isMimeTypeImage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    if-eqz p0, :cond_0

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadImageThumbnailFromStream(Ljava/io/InputStream;IIIIII)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 83
    const v0, 0x8000

    new-array v2, v0, [B

    .line 85
    rem-int/lit16 v0, p5, 0xb4

    if-eqz v0, :cond_8

    .line 95
    :goto_0
    const/4 v0, 0x1

    move v1, p2

    .line 96
    :goto_1
    if-gt p1, p4, :cond_0

    if-gt v1, p3, :cond_0

    const/16 v3, 0xd33

    if-gt p1, v3, :cond_0

    const/16 v3, 0xd33

    if-gt v1, v3, :cond_0

    mul-int v3, p1, v1

    const v4, 0x186a00

    if-le v3, v4, :cond_1

    .line 101
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 102
    div-int v1, p2, v0

    .line 103
    div-int p1, p2, v0

    goto :goto_1

    .line 112
    :cond_1
    const/16 v3, 0xd33

    if-gt p4, v3, :cond_2

    const/16 v3, 0xd33

    if-le p3, v3, :cond_3

    :cond_2
    mul-int/2addr v1, p1

    const v3, 0x61a80

    if-ge v1, v3, :cond_3

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 115
    shr-int/lit8 v0, v0, 0x2

    .line 118
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 120
    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    if-nez v0, :cond_5

    .line 124
    const/4 v0, 0x0

    .line 147
    :cond_4
    :goto_2
    return-object v0

    .line 130
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0xd33

    if-gt v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0xd33

    if-le v1, v2, :cond_7

    .line 131
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0xd33

    div-int/2addr v2, v1

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xd33

    div-int v1, v3, v1

    const/4 v3, 0x0

    .line 133
    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    :cond_7
    if-eqz p5, :cond_4

    if-eqz v0, :cond_4

    .line 142
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    int-to-float v1, p5

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 144
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_8
    move v7, p2

    move p2, p1

    move p1, v7

    goto/16 :goto_0
.end method

.method public static loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 160
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2

    .line 163
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_0
    if-nez v0, :cond_0

    .line 166
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 171
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 172
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :goto_2
    sget-object v3, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Ljava/lang/String;

    const-string v4, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 168
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
