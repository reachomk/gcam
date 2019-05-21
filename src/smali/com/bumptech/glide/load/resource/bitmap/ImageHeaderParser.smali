.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ByteBufferReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    .line 69
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 75
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 98
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 104
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ByteBufferReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    .line 105
    return-void
.end method

.method private static hasJpegExifPreamble([BI)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 223
    if-eqz p0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    .line 225
    :goto_0
    if-eqz v2, :cond_2

    move v0, v1

    .line 226
    :goto_1
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 227
    aget-byte v3, p0, v0

    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_1

    .line 233
    :goto_2
    return v1

    :cond_0
    move v2, v1

    .line 223
    goto :goto_0

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private final moveToExifSegmentAndGetLength()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v0, -0x1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt8()S

    move-result v1

    .line 245
    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    .line 246
    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    :goto_0
    return v0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt8()S

    move-result v2

    .line 254
    const/16 v1, 0xda

    if-eq v2, v1, :cond_1

    .line 256
    const/16 v1, 0xd9

    if-ne v2, v1, :cond_3

    .line 257
    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "ImageHeaderParser"

    const-string v2, "Found MARKER_EOI in exif segment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 266
    const/16 v3, 0xe1

    if-eq v2, v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->skip(J)J

    move-result-wide v4

    .line 268
    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 269
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    const-string v3, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x71

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unable to skip enough data, type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", wanted to skip: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but actually skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 278
    goto :goto_0
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 284
    const/4 v1, 0x6

    .line 286
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v0

    .line 288
    const/16 v2, 0x4d4d

    if-eq v0, v2, :cond_3

    .line 290
    const/16 v2, 0x4949

    if-ne v0, v2, :cond_2

    .line 291
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 299
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 301
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 302
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v2

    .line 305
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_c

    .line 2371
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v0, 0xc

    add-int/2addr v3, v4

    .line 307
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v4

    .line 310
    const/16 v5, 0x112

    if-ne v4, v5, :cond_1

    .line 314
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    .line 317
    if-lez v5, :cond_0

    const/16 v6, 0xc

    if-le v5, v6, :cond_4

    .line 318
    :cond_0
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x25

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Got invalid format code = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_2
    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown endianness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 324
    :cond_4
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v6

    .line 326
    if-gez v6, :cond_5

    .line 327
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    const-string v3, "ImageHeaderParser"

    const-string v4, "Negative tiff component count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 333
    :cond_5
    const-string v7, "ImageHeaderParser"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 334
    const-string v7, "ImageHeaderParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x5e

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Got tagIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tagType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " formatCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " componentCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_6
    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    .line 340
    const/4 v7, 0x4

    if-le v6, v7, :cond_7

    .line 341
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x47

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 347
    :cond_7
    add-int/lit8 v3, v3, 0x8

    .line 349
    if-ltz v3, :cond_8

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v5

    if-le v3, v5, :cond_9

    .line 350
    :cond_8
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    const-string v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x36

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Illegal tagValueOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " tagType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 356
    :cond_9
    if-ltz v6, :cond_a

    add-int v5, v3, v6

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v6

    if-le v5, v6, :cond_b

    .line 357
    :cond_a
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    const-string v3, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3b

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 364
    :cond_b
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v0

    .line 367
    :goto_3
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method public final getOrientation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xffd8

    const/4 v3, 0x3

    const/4 v1, -0x1

    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v2

    .line 1375
    and-int v0, v2, v4

    if-eq v0, v4, :cond_0

    const/16 v0, 0x4d4d

    if-eq v2, v0, :cond_0

    const/16 v0, 0x4949

    if-ne v2, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 177
    :goto_0
    if-nez v0, :cond_3

    .line 178
    const-string v0, "ImageHeaderParser"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Parser doesn\'t handle magic number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    :goto_1
    return v1

    .line 1375
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->moveToExifSegmentAndGetLength()I

    move-result v2

    .line 184
    if-ne v2, v1, :cond_4

    .line 185
    const-string v0, "ImageHeaderParser"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "ImageHeaderParser"

    const-string v2, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v3, [B

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2201
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v3, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->read([BI)I

    move-result v3

    .line 2202
    if-eq v3, v2, :cond_6

    .line 2203
    const-string v4, "ImageHeaderParser"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2204
    const-string v4, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x51

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unable to read exif segment data, length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actually read: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v3, [B

    invoke-virtual {v2, v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 2211
    :cond_6
    :try_start_1
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasJpegExifPreamble([BI)Z

    move-result v3

    .line 2212
    if-eqz v3, :cond_7

    .line 2213
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([BI)V

    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v1

    goto :goto_2

    .line 2215
    :cond_7
    const-string v2, "ImageHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2216
    const-string v2, "ImageHeaderParser"

    const-string v3, "Missing jpeg exif preamble"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 195
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v3, [B

    invoke-virtual {v2, v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    throw v1
.end method

.method public final getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x4

    const v4, 0xffff

    const/high16 v3, -0x10000

    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    .line 117
    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    .line 118
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 163
    :goto_0
    return-object v0

    .line 121
    :cond_0
    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    .line 123
    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    const-wide/16 v2, 0x15

    invoke-interface {v0, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->skip(J)J

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getByte()I

    move-result v0

    .line 129
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 133
    :cond_2
    shr-int/lit8 v1, v0, 0x8

    const v2, 0x474946

    if-ne v1, v2, :cond_3

    .line 134
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 139
    :cond_3
    const v1, 0x52494646

    if-eq v0, v1, :cond_4

    .line 140
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->skip(J)J

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    .line 145
    const v1, 0x57454250

    if-eq v0, v1, :cond_5

    .line 146
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    .line 149
    and-int/lit16 v1, v0, -0x100

    const v2, 0x56503800

    if-eq v1, v2, :cond_6

    .line 150
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 152
    :cond_6
    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x58

    if-ne v1, v2, :cond_8

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->skip(J)J

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto/16 :goto_0

    .line 157
    :cond_8
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a

    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->skip(J)J

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->reader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$Reader;->getByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto/16 :goto_0

    .line 163
    :cond_a
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto/16 :goto_0
.end method
