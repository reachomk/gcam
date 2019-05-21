.class public final Lcom/google/android/apps/refocus/image/RGBZ;
.super Ljava/lang/Object;
.source "RGBZ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/image/RGBZ$Data;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private depthTransform:Lcom/google/android/apps/refocus/image/DepthTransform;

.field private depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

.field private final exif:Lcom/android/camera/exif/ExifInterface;

.field private focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

.field private imageData:Lcom/google/android/apps/refocus/metadata/GImage;

.field private lazyInputStream:Ljava/io/InputStream;

.field private preview:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "RGBZ"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/image/RGBZ;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/image/DepthTransform;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/image/DepthTransform;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    .line 96
    iput-object p2, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthTransform:Lcom/google/android/apps/refocus/image/DepthTransform;

    .line 97
    if-nez p2, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    .line 98
    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 99
    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->lazyInputStream:Ljava/io/InputStream;

    .line 100
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 101
    return-void

    :cond_1
    move-object p1, v0

    .line 97
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 112
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 115
    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    .line 122
    iput-object v2, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthTransform:Lcom/google/android/apps/refocus/image/DepthTransform;

    .line 123
    iput-object v2, p0, Lcom/google/android/apps/refocus/image/RGBZ;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 126
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 127
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 135
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->lazyInputStream:Ljava/io/InputStream;

    .line 136
    return-void

    .line 131
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 132
    throw v0
.end method

.method private static applyExif(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 366
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    :try_start_0
    invoke-virtual {p1, p0, v1}, Lcom/android/camera/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 369
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    sget-object v1, Lcom/google/android/apps/refocus/image/RGBZ;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final finishParsingXMPMeta()V
    .locals 5

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->lazyInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->lazyInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->lazyInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->lazyInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    invoke-static {v1}, Lcom/google/android/apps/refocus/metadata/GImage;->fromXMPMeta(Lcom/adobe/xmp/XMPMeta;)Lcom/google/android/apps/refocus/metadata/GImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/metadata/GImage;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    .line 319
    :cond_2
    invoke-static {v1}, Lcom/google/android/apps/refocus/metadata/GDepth;->fromXMPMeta(Lcom/adobe/xmp/XMPMeta;)Lcom/google/android/apps/refocus/metadata/GDepth;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/metadata/GDepth;->getTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthTransform:Lcom/google/android/apps/refocus/image/DepthTransform;

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    iget-object v2, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/refocus/metadata/GDepth;->setAlphaChannel(Landroid/graphics/Bitmap;)V

    .line 326
    :cond_3
    invoke-static {v1}, Lcom/google/android/apps/refocus/metadata/GFocus;->fromXMPMeta(Lcom/adobe/xmp/XMPMeta;)Lcom/google/android/apps/refocus/metadata/GFocus;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/metadata/GFocus;->getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    sget-object v2, Lcom/google/android/apps/refocus/image/RGBZ;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to close stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isValid(Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;Z)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/google/android/apps/refocus/metadata/GDepth;->isPresent(Lcom/adobe/xmp/XMPMeta;)Z

    move-result v0

    return v0
.end method

.method public static resizeIfLarger(Lcom/google/android/apps/refocus/image/RGBZ;I)Lcom/google/android/apps/refocus/image/RGBZ;
    .locals 4

    .prologue
    .line 278
    .line 3189
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3196
    iget-object v1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 281
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 296
    :goto_0
    return-object p0

    .line 285
    :cond_0
    if-le v0, v1, :cond_1

    .line 286
    mul-int/2addr v1, p1

    div-int v0, v1, v0

    move v3, v0

    move v0, p1

    move p1, v3

    .line 293
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/image/BitmapNative;->resize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    .line 296
    new-instance v0, Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/image/DepthTransform;)V

    move-object p0, v0

    goto :goto_0

    .line 289
    :cond_1
    mul-int/2addr v0, p1

    div-int/2addr v0, v1

    goto :goto_1
.end method

.method public static rotate(Lcom/google/android/apps/refocus/image/RGBZ;I)Lcom/google/android/apps/refocus/image/RGBZ;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 262
    if-eqz p0, :cond_0

    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_2

    :cond_0
    move-object p0, v1

    .line 274
    :cond_1
    :goto_0
    return-object p0

    .line 266
    :cond_2
    if-eqz p1, :cond_1

    .line 270
    new-instance v2, Lcom/google/android/apps/refocus/image/RGBZ;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/image/DepthTransform;)V

    .line 2182
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    .line 272
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2215
    iput-object v0, v2, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v0

    .line 3068
    if-eqz v0, :cond_3

    rem-int/lit8 v3, p1, 0x5a

    if-eqz v3, :cond_5

    :cond_3
    move-object v0, v1

    .line 273
    :cond_4
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/apps/refocus/image/RGBZ;->setFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)V

    move-object p0, v2

    .line 274
    goto :goto_0

    .line 3072
    :cond_5
    if-eqz p1, :cond_4

    .line 3076
    new-instance v1, Lcom/google/android/apps/refocus/processing/FocusSettings;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/processing/FocusSettings;-><init>()V

    .line 3077
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    .line 3078
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    .line 3079
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    .line 3081
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_6

    .line 3082
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    sub-float v3, v4, v3

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 3083
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    .line 3085
    :cond_6
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_7

    .line 3086
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    sub-float v3, v4, v3

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 3087
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    sub-float v3, v4, v3

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    .line 3089
    :cond_7
    const/16 v3, 0x10e

    if-ne p1, v3, :cond_8

    .line 3090
    iget v3, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    iput v3, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 3091
    iget v0, v0, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    sub-float v0, v4, v0

    iput v0, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    :cond_8
    move-object v0, v1

    .line 3093
    goto :goto_1
.end method


# virtual methods
.method public final createRgbzFile(I)Lcom/google/android/apps/refocus/image/RGBZ$Data;
    .locals 6

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 233
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 1239
    if-eqz v1, :cond_0

    .line 1240
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1240
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 1333
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    invoke-static {v2, p1}, Lcom/google/android/apps/refocus/image/BitmapIO;->toInputStream(Landroid/graphics/Bitmap;I)Ljava/io/InputStream;

    move-result-object v2

    .line 1336
    invoke-static {v2, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->applyExif(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Ljava/io/InputStream;

    move-result-object v1

    .line 1338
    invoke-static {}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 1339
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->hasFocusSettings()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1340
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/refocus/metadata/GFocus;->fromFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)Lcom/google/android/apps/refocus/metadata/GFocus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/apps/refocus/metadata/GFocus;->toXMPMeta(Lcom/adobe/xmp/XMPMeta;)V

    .line 1343
    :cond_1
    invoke-static {}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v3

    .line 1344
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    if-nez v4, :cond_2

    .line 1345
    sget-object v4, Lcom/google/android/apps/refocus/image/RGBZ;->TAG:Ljava/lang/String;

    const-string v5, "Encoding image data"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/google/android/apps/refocus/metadata/GImage;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/apps/refocus/metadata/GImage;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    .line 1348
    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    if-eqz v4, :cond_3

    .line 1349
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->imageData:Lcom/google/android/apps/refocus/metadata/GImage;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/apps/refocus/metadata/GImage;->toXMPMeta(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)V

    .line 1352
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1353
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    if-nez v4, :cond_4

    .line 1354
    sget-object v4, Lcom/google/android/apps/refocus/image/RGBZ;->TAG:Ljava/lang/String;

    const-string v5, "Encoding depth data"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-static {p0}, Lcom/google/android/apps/refocus/metadata/GDepth;->fromRGBZ(Lcom/google/android/apps/refocus/image/RGBZ;)Lcom/google/android/apps/refocus/metadata/GDepth;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    .line 1357
    :cond_4
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    if-eqz v4, :cond_5

    .line 1358
    iget-object v4, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthmapData:Lcom/google/android/apps/refocus/metadata/GDepth;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/apps/refocus/metadata/GDepth;->toXMPMeta(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)V

    .line 1362
    :cond_5
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    .line 1246
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    new-instance v1, Lcom/google/android/apps/refocus/image/RGBZ$Data;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/refocus/image/RGBZ;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/refocus/image/RGBZ$Data;-><init>([BLcom/android/camera/exif/ExifInterface;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getDepth(II)F
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2}, Lcom/google/android/apps/refocus/image/BitmapNative;->getPixel(Landroid/graphics/Bitmap;II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/refocus/image/DepthTransform;->reconstruct(I)F

    move-result v0

    goto :goto_0
.end method

.method public final getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthTransform:Lcom/google/android/apps/refocus/image/DepthTransform;

    return-object v0
.end method

.method public final getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasDepthmap()Z
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->depthTransform:Lcom/google/android/apps/refocus/image/DepthTransform;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasFocusSettings()Z
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/RGBZ;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/refocus/image/RGBZ;->finishParsingXMPMeta()V

    .line 223
    iput-object p1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 224
    return-void
.end method

.method public final setPreview(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/apps/refocus/image/RGBZ;->preview:Landroid/graphics/Bitmap;

    .line 216
    return-void
.end method
