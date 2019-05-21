.class final Lcom/android/camera/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mInterface:Lcom/android/camera/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "ExifReader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/exif/ExifReader;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 19
    return-void
.end method


# virtual methods
.method protected final read(Ljava/io/InputStream;)Lcom/android/camera/exif/ExifData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/exif/ExifReader;->mInterface:Lcom/android/camera/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/android/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifParser;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 33
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->next()I

    move-result v0

    .line 34
    :goto_0
    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 35
    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_1
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->next()I

    move-result v0

    goto :goto_0

    .line 37
    :pswitch_0
    new-instance v0, Lcom/android/camera/exif/IfdData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    goto :goto_1

    .line 40
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->hasValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifParser;->registerForTagValue(Lcom/android/camera/exif/ExifTag;)V

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_1

    .line 48
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 50
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifParser;->readFullTagValue(Lcom/android/camera/exif/ExifTag;)V

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_1

    .line 55
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    .line 56
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 57
    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 59
    :cond_2
    sget-object v0, Lcom/android/camera/exif/ExifReader;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read the compressed thumbnail"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    .line 64
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 65
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifParser;->getStripIndex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 67
    :cond_3
    sget-object v0, Lcom/android/camera/exif/ExifReader;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read the strip bytes"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    return-object v2

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
