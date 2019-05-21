.class final Lcom/android/camera/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final ifdDatas:[Lcom/android/camera/exif/IfdData;

.field private stripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private thumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "ExifData"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/exif/IfdData;

    iput-object v0, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/android/camera/exif/ExifData;->byteOrder:Ljava/nio/ByteOrder;

    .line 33
    return-void
.end method


# virtual methods
.method protected final addIfdData(Lcom/android/camera/exif/IfdData;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 120
    return-void
.end method

.method protected final addTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v1

    .line 1161
    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/android/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    aget-object v0, v0, v1

    .line 2128
    if-nez v0, :cond_0

    .line 2129
    new-instance v0, Lcom/android/camera/exif/IfdData;

    invoke-direct {v0, v1}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 2130
    iget-object v2, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    aput-object v0, v2, v1

    .line 1163
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 321
    :cond_0
    :goto_0
    return v3

    .line 297
    :cond_1
    if-eqz p1, :cond_0

    .line 300
    instance-of v0, p1, Lcom/android/camera/exif/ExifData;

    if-eqz v0, :cond_0

    .line 301
    check-cast p1, Lcom/android/camera/exif/ExifData;

    .line 302
    iget-object v0, p1, Lcom/android/camera/exif/ExifData;->byteOrder:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/android/camera/exif/ExifData;->byteOrder:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/camera/exif/ExifData;->thumbnail:[B

    iget-object v1, p0, Lcom/android/camera/exif/ExifData;->thumbnail:[B

    .line 304
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 308
    iget-object v0, p1, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 312
    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 313
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v1

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v2

    .line 315
    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v3, v4

    .line 319
    goto :goto_0
.end method

.method protected final getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v4, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 237
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 239
    if-eqz v6, :cond_0

    .line 240
    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 241
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 246
    :cond_1
    return-object v3
.end method

.method protected final getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected final getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->thumbnail:[B

    return-object v0
.end method

.method protected final getIfdData(I)Lcom/android/camera/exif/IfdData;
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Lcom/android/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    aget-object v0, v0, p1

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getStrip(I)[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected final getStripCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected final getTag(SI)Lcom/android/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    aget-object v0, v0, p2

    .line 141
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method protected final hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->thumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final removeTag(SI)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->ifdDatas:[Lcom/android/camera/exif/IfdData;

    aget-object v0, v0, p2

    .line 186
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    goto :goto_0
.end method

.method protected final setCompressedThumbnail([B)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/exif/ExifData;->thumbnail:[B

    .line 50
    return-void
.end method

.method protected final setStripBytes(I[B)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifData;->stripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
