.class final Lcom/android/camera/burst/xmp/XmpEmbedder;
.super Ljava/lang/Object;
.source "XmpEmbedder.java"


# static fields
.field private static final GIF_XMP_HEADER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/burst/xmp/XmpEmbedder;->GIF_XMP_HEADER:[B

    return-void

    :array_0
    .array-data 1
        0x21t
        -0x1t
        0xbt
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method private static getGifMagicTrailer()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    const/16 v0, 0x102

    new-array v2, v0, [B

    .line 118
    const/4 v0, 0x1

    aput-byte v0, v2, v1

    move v0, v1

    .line 119
    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    .line 122
    add-int/lit8 v3, v0, 0x1

    rsub-int v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/16 v0, 0x101

    aput-byte v1, v2, v0

    .line 126
    return-object v2
.end method

.method public static streamGifWithMetadataInserted([BLjava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 85
    :try_start_0
    invoke-static {p2, v0}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    :try_start_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, p0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    sget-object v1, Lcom/android/camera/burst/xmp/XmpEmbedder;->GIF_XMP_HEADER:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 95
    invoke-static {}, Lcom/android/camera/burst/xmp/XmpEmbedder;->getGifMagicTrailer()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 96
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public static streamJpegWithMetadataInserted(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    .line 65
    return-void
.end method

.method public static streamJpegWithMetadataInserted([BLjava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1064
    invoke-static {v0, p1, p2}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    .line 50
    return-void
.end method
