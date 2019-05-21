.class public Lcom/google/android/apps/refocus/image/ColorImageIO;
.super Ljava/lang/Object;
.source "ColorImageIO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "ColorImageIO"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/image/ColorImageIO;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "refocus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convert(Lcom/google/android/apps/refocus/image/ColorImage;Lcom/google/android/apps/refocus/image/ColorImage;)Z
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/apps/refocus/image/ColorImage;
    .locals 5

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 79
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 81
    new-instance v0, Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/apps/refocus/image/ColorImage;-><init>(III[B)V

    goto :goto_0
.end method

.method public static saveToFile(Lcom/google/android/apps/refocus/image/ColorImage;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v2, 0x11

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getBuffer()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveToFile([BLjava/lang/String;)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getFormat()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 47
    new-instance v0, Landroid/graphics/YuvImage;

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getBuffer()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 53
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getHeight()I

    move-result v7

    invoke-direct {v1, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 55
    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lcom/google/android/apps/refocus/image/ColorImageIO;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 59
    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/google/android/apps/refocus/image/ColorImageIO;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getFormat()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot save ColorImage with format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 65
    goto :goto_0
.end method

.method public static toBitmap(Lcom/google/android/apps/refocus/image/ColorImage;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getBuffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/image/ColorImage;->getBuffer()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/apps/refocus/image/ColorImageIO;->toBitmapInternal(Lcom/google/android/apps/refocus/image/ColorImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static native toBitmapInternal(Lcom/google/android/apps/refocus/image/ColorImage;)Landroid/graphics/Bitmap;
.end method